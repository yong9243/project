package com.acon.project.users.dao;

import com.acon.project.users.dto.UsersDto;

public interface UsersDao {
	public void insert(UsersDto dto);
	public void update(UsersDto dto);
	public void delete(String id);
	public boolean canUseId(String id);
	public boolean isValid(UsersDto dto);
	public UsersDto getData(String id);
	
	
}
