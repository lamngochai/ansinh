package com.stechviet.ansinh.core.repository;

import java.io.Serializable;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Persistable;
import org.springframework.jdbc.core.RowMapper;

import com.stechviet.ansinh.core.repository.sql.SqlGenerator;


/**
 * @author LNH
 *
 */
public abstract class AbstractMysqlRepository<T extends Persistable<ID>,ID extends Serializable> extends AbstractJdbcRepository<T,ID> {

	public static final Logger LOG = LoggerFactory.getLogger(AbstractMysqlRepository.class);
	
	public AbstractMysqlRepository(RowMapper<T> rowMapper, RowUnmapper<T> rowUnmapper, SqlGenerator sqlGenerator,
			TableDescription table) {
		super(rowMapper, rowUnmapper, sqlGenerator, table);
	}

	public AbstractMysqlRepository(RowMapper<T> rowMapper, RowUnmapper<T> rowUnmapper, String tableName,
			String idColumn) {
		super(rowMapper, rowUnmapper, tableName, idColumn);
	}

	public AbstractMysqlRepository(RowMapper<T> rowMapper, RowUnmapper<T> rowUnmapper, String tableName) {
		super(rowMapper, rowUnmapper, tableName);
	}

	public AbstractMysqlRepository(RowMapper<T> rowMapper, RowUnmapper<T> rowUnmapper, TableDescription table) {
		super(rowMapper, rowUnmapper, table);
	}

	public AbstractMysqlRepository(RowMapper<T> rowMapper, String tableName, String idColumn) {
		super(rowMapper, tableName, idColumn);
	}

	public AbstractMysqlRepository(RowMapper<T> rowMapper, String tableName) {
		super(rowMapper, tableName);
	}

	public AbstractMysqlRepository(RowMapper<T> rowMapper, TableDescription table) {
		super(rowMapper, table);
	}

	@Override
	protected void initialDataSource(DataSource dataSource) {
		super.initialDataSource(dataSource);
	}
	
}
