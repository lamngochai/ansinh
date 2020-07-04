package com.stechviet.ansinh.core.repository;

import java.util.Map;

public abstract class RowUnmapper<T> {
	public abstract Map<String, Object> mapColumns(T param);
}
