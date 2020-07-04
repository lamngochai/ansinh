package com.stechviet.ansinh.core.repository;

import java.io.Serializable;
import java.util.List;

import org.springframework.data.domain.Persistable;
import org.springframework.data.domain.Sort;
import org.springframework.data.repository.NoRepositoryBean;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 * @author LNH
 *
 */
@NoRepositoryBean
public interface JdbcRepository<T extends Persistable<ID>, ID extends Serializable> extends PagingAndSortingRepository<T, ID> {
	
	@Override
	List<T> findAll();
	
	@Override
	List<T> findAll(Sort sort);
	
	List<T> findAll(Iterable<ID> ids);
	
	<S extends T> List<S> save(Iterable<S> entities);
	
}
