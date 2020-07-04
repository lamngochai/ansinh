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
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.stechviet.ansinh.dao.AddressDao;
import com.stechviet.ansinh.model.AddressInfo;

@Service
@Transactional
public class AddressDaoImpl implements AddressDao{
	private final Logger log = LoggerFactory.getLogger(AddressDaoImpl.class);
	@Autowired
	private  DataSource dataSource;
    
	@Override
    public List<AddressInfo> getAllProvince() {
		List<AddressInfo> addressList = new ArrayList<AddressInfo>();;
		Connection conn = null;
		Statement  st = null;
		ResultSet rs = null;
		String strQuery = "Select id, name "
                + " from province order by id asc";        
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
	
	@Override
    public List<AddressInfo> getAllDistrict(int provinceId) {
		List<AddressInfo> addressList = new ArrayList<AddressInfo>();;
		Connection conn = null;
		Statement  st = null;
		ResultSet rs = null;
		String strQuery = "Select id , name from district where province_id = '"+provinceId+"' order by id asc";
        	try {
            	conn = dataSource.getConnection();
    			st=conn.createStatement();
    			rs = st.executeQuery(strQuery);
    			while(rs.next()) {
    				int id = rs.getInt("id");
    				String name = rs.getString("name");
    				AddressInfo district = new AddressInfo(provinceId,id, name);      
    				addressList.add(district);
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
	@Override
    public List<AddressInfo> getAllWard(int provinceId , int districtId) {
		List<AddressInfo> addressList = new ArrayList<AddressInfo>();;
		Connection conn = null;
		Statement  st = null;
		ResultSet rs = null;
		String strQuery = "select id, name from ward where district_id = '"+districtId+"' order by id asc";        
        	try {
            	conn = dataSource.getConnection();
    			st=conn.createStatement();
    			rs = st.executeQuery(strQuery);
    			while(rs.next()) {
    				int id = rs.getInt("id");
    				String name = rs.getString("name");
    				AddressInfo ward = new AddressInfo(provinceId,districtId,id, name);      
    				addressList.add(ward);
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
	
	@Override
    public int createAddress(int provinceId , int districtId , int wardId ,String street , int addressType){
		int addressId = 0;
		Statement st = null;
		ResultSet rs = null;
		Connection conn = null;
        try {
        	conn = dataSource.getConnection();
			st=conn.createStatement();
       	 	String strQuery = "select address_id from address where province_id='"+provinceId+"' and district_id='"+districtId+"' "
       	 			+ "and ward_id='"+wardId+"' and street='"+street+"' and address_type='"+addressType+"'";
       	 	System.out.println(strQuery);
			
	        String strInser = "INSERT INTO address (province_id,district_id,ward_id,street,"
	        		+ "address_type,status,created_date,updated_date) VALUES ('"+provinceId+"','"+districtId+"','"+wardId+"','"+street+"','"+addressType+"','1',sysdate(),sysdate());";
	        System.out.println(strInser);
	        int i = st.executeUpdate(strInser);
	        if(i > 0) {
	        	rs = st.executeQuery(strQuery);
				rs.next();
		        addressId = rs.getInt(1);
	        }
	        
	        
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        if(rs != null || st != null || conn != null) {
			try {
				rs.close();
				st.close();
		        conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				log.error("SQLException close for getPositionName : " +e);
			}
		} 
		return addressId;
	}
}
