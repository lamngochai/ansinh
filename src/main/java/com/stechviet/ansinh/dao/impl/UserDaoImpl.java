package com.stechviet.ansinh.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.stechviet.ansinh.core.repository.NamedQueryJdbcOperations;
import com.stechviet.ansinh.dao.UserDao;
import com.stechviet.ansinh.model.UserInfo;

@Service
@Transactional
public class UserDaoImpl implements UserDao {
	private final Logger log = LoggerFactory.getLogger(UserDaoImpl.class);
	@Autowired
	private DataSource dataSource;
	@Autowired
	private NamedQueryJdbcOperations queryNamedJdbc;
	@Autowired
    private JdbcTemplate jdbcTemplate;

	@Override
	public UserInfo findUserInfo(String username) {
		try {
			MapSqlParameterSource params = new MapSqlParameterSource("USERNAME", username);
			return queryNamedJdbc.namedQueryForObject("GET.DETAIL.BY.USERNAME", params, UserInfo.class);
		} catch (EmptyResultDataAccessException ex) {
			return null;
		}
	}

	// namedQuery
	@Override
	public List<String> getUserRoles(UserInfo userInfo) {
		try {
			MapSqlParameterSource parameters = new MapSqlParameterSource();
			parameters.addValue("USER_ID", userInfo.getUserId());
			return queryNamedJdbc.namedQuery("FIND.PERMISSION.BY.USERNAME", parameters, new RowMapper<String>() {
				public String mapRow(ResultSet rs, int rowNum) 
                        throws SQLException {
					return rs.getString(1);
			}});
		} catch (Exception ex) {
			return null;
		}

	}

	@Override
	public UserInfo createUserInfo(String emplUser, String emplPass) {
		UserInfo userInfo = new UserInfo();
		int profileId = 0;
		String strQuery1 = "select Max(profile_id) from users";

		String strQuery2 = "select user_id, profile_id from users where username ='" + emplUser + "'and pass = '"
				+ emplPass + "'";
		Statement st = null;
		ResultSet rs = null;
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			st = conn.createStatement();
			rs = st.executeQuery(strQuery1);
			rs.next();
			profileId = 20 + 1;
			String strInser = "insert into users (username , pass , profile_id , created_date , updated_date)"
					+ " values ('" + emplUser + "','" + emplPass + "','" + profileId + "',sysdate(),sysdate())";
			System.out.println(strInser);
			int i = st.executeUpdate(strInser);
			if (i > 0) {
				rs = st.executeQuery(strQuery2);
				while (rs.next()) {
					userInfo.setUserId(rs.getInt("user_id"));
					userInfo.setProfileId(rs.getInt("profile_id"));
				}
			} else {
				userInfo = null;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (rs != null || st != null || conn != null) {
			try {
				rs.close();
				st.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				log.error("" + e);
			}
		}
		return userInfo;
	}

	@Override
	public int setPermission(int userId, int emplDepartment) {
		int i = 0;
		int roleTypeId = 0;
		String strQuery = "select role_type_id from roles_type where role_type_name like '%rude%'";
		Statement st = null;
		ResultSet rs = null;
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			st = conn.createStatement();
			rs = st.executeQuery(strQuery);
			rs.next();
			roleTypeId = rs.getInt(1);
			String strInser = "insert into user_roles (user_id , role_type_id) value ('" + userId + "' ,'" + roleTypeId
					+ "' );";
			i = st.executeUpdate(strInser);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (st != null || conn != null) {
			try {
				st.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				log.error("" + e);
			}
		}

		return i;
	}

	@Override
	public int createProfileUser(int profileId, String name, String birth, int sex, String nation, int liveId,
			String email, String phone, int bornId, String citizenId, String citizenDate, String provinceCitizenID,
			int departmentId, int positionId, int agentId) {
		int i = 0;
		Date dt = new Date();
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd");
		birth = sdf.format(dt);
		citizenDate = sdf.format(dt);
		String strInser = "insert into profile (" + "profileId," + "Name," + "Birth," + "Sex," + "Nation," + "LiveId,"
				+ "Phone," + "Email," + "BornId," + "CitizenId," + "CitizenDate," + "ProvinceCitizen," + "DepartmentId,"
				+ "PositionID," + "AgentId," + "created_date," + "updated_date)" + "value (" + "'" + profileId + "',"
				+ "'" + name + "'," + "'" + birth + "'," + "'" + sex + "'," + "'" + nation + "'," + "'" + liveId + "',"
				+ "'" + phone + "'," + "'" + email + "'," + "'" + bornId + "'," + "'" + citizenId + "'," + "'"
				+ citizenDate + "'," + "'" + provinceCitizenID + "'," + "'" + departmentId + "'," + "'" + positionId
				+ "'," + "'" + agentId + "'," + "sysdate()," + "sysdate()" + ");";

		Statement st = null;
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			st = conn.createStatement();
			i = st.executeUpdate(strInser);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (st != null || conn != null) {
			try {
				st.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				log.error("" + e);
			}
		}

		return i;
	}
}
