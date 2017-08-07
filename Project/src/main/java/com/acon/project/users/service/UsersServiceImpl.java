package com.acon.project.users.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.acon.project.users.dao.UsersDao;
import com.acon.project.users.dto.UsersDto;

@Service
public class UsersServiceImpl implements UsersService{

	@Autowired
	private UsersDao usersDao;

	@Override
	public ModelAndView signup(UsersDto dto, HttpServletRequest request) {
		usersDao.insert(dto);
		ModelAndView mView = new ModelAndView();
		mView.addObject("msg",dto.getId()+"가입을 축하합니다");
		mView.addObject("url",request.getContextPath());
		return mView;
	}

	@Override
	public boolean canUseId(String id) {
		boolean canUse = usersDao.canUseId(id);
		return canUse;
	}

	@Override
	public ModelAndView signin(UsersDto dto, HttpServletRequest request) {
		boolean isValid = usersDao.isValid(dto);
		ModelAndView mView = new ModelAndView();
		
		String url = request.getParameter("url");
		
		if(isValid){
			request.getSession().setAttribute("id",dto.getId());
			mView.addObject("msg",dto.getId()+"로그인 성공");
			mView.addObject("url",url);
		}else{
			mView.addObject("msg","아이디 혹은 비밀번호를 확인하세요");
			String location = request.getContextPath()+
					"/users/signin_form.do?url="+url;
				    mView.addObject("url",location);
		}
		return mView;
	}

	@Override
	public void update(UsersDto dto) {
		usersDao.update(dto);
		
	}

	@Override
	public ModelAndView delete(HttpSession session) {
		String id = (String)session.getAttribute("id");
		usersDao.delete(id);
		session.invalidate();
		ModelAndView mView = new ModelAndView();

		return mView;
	}

	@Override
	public ModelAndView detail(String id) {
		ModelAndView mView = new ModelAndView();
		if(id!=null){
			UsersDto dto = usersDao.getData(id);
		}
		return null;
	}

}
