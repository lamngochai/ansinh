package com.stechviet.ansinh.core.repository.sql;

import static java.lang.String.format;

import java.sql.DatabaseMetaData;
import java.sql.SQLException;

import org.springframework.data.domain.Pageable;

import com.stechviet.ansinh.core.repository.TableDescription;

public class MysqlGenerator extends AbstractSqlGenerator {

	public static final String PRODUCT_NAME = "MySQL";
	
	public static String LIMIT_OFFSET_WRAPPER = "%s LIMIT %d OFFSET %d";
	
	@Override
	public boolean isCompatible(DatabaseMetaData metadata) throws SQLException {
		return PRODUCT_NAME.equalsIgnoreCase(metadata.getDatabaseProductName());
	}
	
	@Override
	public String selectAll(TableDescription table, Pageable page) {
		String statement = selectAll(table, page.getSort());
		return format("%s %s", statement, limit(page));
	}
	
	@Override
	public String selectAll(StringBuilder statement, Pageable page) {
		return format(LIMIT_OFFSET_WRAPPER, selectAll(statement, page.getSort()), page.getPageSize(), page.getOffset());
	}
	
	@Override
	public String selectAll(StringBuilder statement, TableDescription table, Pageable page) {
		return null;
	}
	
	private String limit(Pageable page) {
		return format(" LIMIT %d OFFSET %d ", page.getPageSize(), page.getOffset());
	}

}
