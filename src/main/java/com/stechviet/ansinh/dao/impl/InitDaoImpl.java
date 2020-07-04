package com.stechviet.ansinh.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.stechviet.ansinh.model.AddressInfo;
import com.stechviet.ansinh.model.DepartmentAgentInfo;
import com.stechviet.ansinh.model.DepartmentInfo;
import com.stechviet.ansinh.model.PositionAgentInfo;
import com.stechviet.ansinh.model.PositionInfo;

@Service
@Transactional
public class InitDaoImpl{
	private final Logger log = LoggerFactory.getLogger(InitDaoImpl.class);
	
	public List<AddressInfo> getAllProvince(DataSource dataSource) {
		List<AddressInfo> addressList = new ArrayList<AddressInfo>();;
		Connection conn = null;
		Statement  st = null;
		ResultSet rs = null;
		String strQuery = "Select id, name from province order by name";        
        	try {
            	conn = dataSource.getConnection();
    			st=conn.createStatement();
    			rs = st.executeQuery(strQuery);
    			while(rs.next()) {
    				int id = rs.getInt("id");
    				String name = rs.getString("name");
    				AddressInfo province = new AddressInfo(id, name);      
    				addressList.add(province);
    			}
    			
    		} catch (SQLException e1) {
    			// TODO Auto-generated catch block
    			e1.printStackTrace();
    		}
        	if(rs != null || st != null || conn != null) {
				try {
					rs.close();
					st.close();
			        conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					log.error("SQLException close for get list Province : " +e);
				}
			} 
		return addressList;
	}
	public List<DepartmentInfo> getDepartmentOther(DataSource dataSource) {
		List<DepartmentInfo> departmentList = new ArrayList<DepartmentInfo>();
		Connection conn = null;
		Statement  st = null;
		ResultSet rs = null;
		String strQuery = "select department_id , department_name from department where department_for != 0 order by department_id asc";        
        	try {
            	conn = dataSource.getConnection();
    			st=conn.createStatement();
    			rs = st.executeQuery(strQuery);
    			while(rs.next()) {
    				int id = rs.getInt("department_id");
    				String name = rs.getString("department_name");
    				DepartmentInfo department = new DepartmentInfo(id, name);      
    				departmentList.add(department);
    			}
    			
    		} catch (SQLException e1) {
    			// TODO Auto-generated catch block
    			e1.printStackTrace();
    		}
        	if(rs != null || st != null || conn != null) {
				try {
					rs.close();
					st.close();
			        conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					log.error("SQLException close for get list Province : " +e);
				}
			} 
		return departmentList;
	}
	public List<DepartmentAgentInfo> getDepartmentAgent(DataSource dataSource) {
		List<DepartmentAgentInfo> departmentAgentList = new ArrayList<DepartmentAgentInfo>();
		Connection conn = null;
		Statement  st = null;
		ResultSet rs = null;
		String strQuery = "select department_id , department_name from department where department_for = 0 order by department_id asc";        
        	try {
            	conn = dataSource.getConnection();
    			st=conn.createStatement();
    			rs = st.executeQuery(strQuery);
    			while(rs.next()) {
    				int id = rs.getInt("department_id");
    				String name = rs.getString("department_name");
    				DepartmentAgentInfo department = new DepartmentAgentInfo(id, name);      
    				departmentAgentList.add(department);
    			}
    			
    		} catch (SQLException e1) {
    			// TODO Auto-generated catch block
    			e1.printStackTrace();
    		}
        	if(rs != null || st != null || conn != null) {
				try {
					rs.close();
					st.close();
			        conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					log.error("SQLException close for get list Province : " +e);
				}
			} 
		return departmentAgentList;
	}
	public List<PositionInfo> getPositiontOther(DataSource dataSource) {
		List<PositionInfo> positionList = new ArrayList<PositionInfo>();
		Connection conn = null;
		Statement  st = null;
		ResultSet rs = null;
		String strQuery = "select position_id , position_name from position where position_for != 0 order by position_id asc";        
        	try {
            	conn = dataSource.getConnection();
    			st=conn.createStatement();
    			rs = st.executeQuery(strQuery);
    			while(rs.next()) {
    				int id = rs.getInt("position_id");
    				String name = rs.getString("position_name");
    				PositionInfo position = new PositionInfo(id, name);      
    				positionList.add(position);
    			}
    			
    		} catch (SQLException e1) {
    			// TODO Auto-generated catch block
    			e1.printStackTrace();
    		}
        	if(rs != null || st != null || conn != null) {
				try {
					rs.close();
					st.close();
			        conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					log.error("SQLException close for get list Province : " +e);
				}
			} 
		return positionList;
	}
	public List<PositionAgentInfo> getPositiontAgent(DataSource dataSource) {
		List<PositionAgentInfo> positionAgentList = new ArrayList<PositionAgentInfo>();
		Connection conn = null;
		Statement  st = null;
		ResultSet rs = null;
		String strQuery = "select position_id , position_name from position where position_for = 0 order by position_id asc";        
        	try {
            	conn = dataSource.getConnection();
    			st=conn.createStatement();
    			rs = st.executeQuery(strQuery);
    			while(rs.next()) {
    				int id = rs.getInt("position_id");
    				String name = rs.getString("position_name");
    				PositionAgentInfo position = new PositionAgentInfo(id, name);      
    				positionAgentList.add(position);
    			}
    			
    		} catch (SQLException e1) {
    			// TODO Auto-generated catch block
    			e1.printStackTrace();
    		}
        	if(rs != null || st != null || conn != null) {
				try {
					rs.close();
					st.close();
			        conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					log.error("SQLException close for get list Province : " +e);
				}
			} 
		return positionAgentList;
	}
}
