package com.acon.project.users.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.acon.project.users.dto.UsersDto;

public interface UsersService {
	public ModelAndView signup(UsersDto dto, HttpServletRequest request);
	public boolean canUseId(String id);
	public ModelAndView signin(UsersDto dto, HttpServletRequest request);
	public void update(UsersDto dto);
	public ModelAndView delete(HttpSession session);
	public ModelAndView detail(String id);
}
