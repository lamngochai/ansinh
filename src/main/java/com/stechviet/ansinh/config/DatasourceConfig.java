/*
package com.stechviet.ansinh.config;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.PropertySources;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.stechviet.ansinh.dao.impl.InitDaoImpl;
import com.stechviet.ansinh.model.AddressInfo;
import com.stechviet.ansinh.model.DepartmentAgentInfo;
import com.stechviet.ansinh.model.DepartmentInfo;
import com.stechviet.ansinh.model.PositionAgentInfo;
import com.stechviet.ansinh.model.PositionInfo;
import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

@Configuration

@ComponentScan("com.stechviet.ansinh.*")

@EnableTransactionManagement

// Load to Environment.

@PropertySources({ @PropertySource("classpath:/hikari.properties") })
public class DatasourceConfig {
	static final Logger log = Logger.getLogger(DatasourceConfig.class);
	public static List<AddressInfo> provinceList = new ArrayList<AddressInfo>();
	public static List<DepartmentInfo> departmentListOther = new ArrayList<DepartmentInfo>();
	public static List<DepartmentAgentInfo> departmentListAgent = new ArrayList<DepartmentAgentInfo>();
	public static List<PositionInfo> positionListOther = new ArrayList<PositionInfo>();
	public static List<PositionAgentInfo> positionListAgent = new ArrayList<PositionAgentInfo>();

	@Autowired
	private Environment env;
	private static DataSource dataSource;

	@Bean(name = "dataSource")
	public DataSource getDataSource() {
		if (dataSource == null) {
			HikariConfig config = new HikariConfig();
			config.setDriverClassName(env.getProperty("database.database-driver"));
			config.setJdbcUrl(env.getProperty("database.url"));
			config.setUsername(env.getProperty("database.username"));
			config.setPassword(env.getProperty("database.password"));

			config.setMaximumPoolSize(10);
			config.setAutoCommit(true);
			config.addDataSourceProperty("cachePrepStmts", "true");
			config.addDataSourceProperty("prepStmtCacheSize", "250");
			config.addDataSourceProperty("prepStmtCacheSqlLimit", "2048");
			config.addDataSourceProperty("useServerPrepStmts ", "true");
			config.addDataSourceProperty("useLocalSessionState ", "true");
			config.addDataSourceProperty("rewriteBatchedStatements ", "true");
			config.addDataSourceProperty("cacheResultSetMetadata ", "true");
			config.addDataSourceProperty("cacheServerConfiguration ", "true");
			config.addDataSourceProperty("elideSetAutoCommits ", "true");
			config.addDataSourceProperty("maintainTimeStats ", "false");
			log.info("Connect to DB Driver:" + env.getProperty("database.database-driver"));
			log.info("Connect to DB url:" + env.getProperty("database.url"));
			log.info("Connect to DB username:" + env.getProperty("database.username"));
			log.info("Connect to DB password:" + env.getProperty("database.password"));
			dataSource = new HikariDataSource(config);

		}
		return dataSource;
	}

	@Bean(name = "transactionManager")
	public DataSourceTransactionManager getTransactionManager() {
		DataSourceTransactionManager txManager = new DataSourceTransactionManager();

		DataSource dataSource = this.getDataSource();
		txManager.setDataSource(dataSource);

		return txManager;
	}

	@Bean(name = "initProvince")
	public List<AddressInfo> getProvince() {
		provinceList = InitDaoImpl.getAllProvince(dataSource);
		return provinceList;
	}

	@Bean(name = "initDepartmentOther")
	public List<DepartmentInfo> getDepartmentOther() {
		departmentListOther = InitDaoImpl.getDepartmentOther(dataSource);
		return departmentListOther;
	}

	@Bean(name = "initDepartmentAgent")
	public List<DepartmentAgentInfo> getDepartmentForAgent() {
		departmentListAgent = InitDaoImpl.getDepartmentAgent(dataSource);
		return departmentListAgent;
	}

	@Bean(name = "initPositionOther")
	public List<PositionInfo> getPositionOther() {
		positionListOther = InitDaoImpl.getPositiontOther(dataSource);
		return positionListOther;
	}

	@Bean(name = "initPositionAgent")
	public List<PositionAgentInfo> getPositionForAgent() {
		positionListAgent = InitDaoImpl.getPositiontAgent(dataSource);
		return positionListAgent;
	}

}
*/