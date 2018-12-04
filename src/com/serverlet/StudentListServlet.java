package com.serverlet;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class StudentListServlet extends HttpServlet {

	@Override
	public void init() throws ServletException {
		System.out.println("init");
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("config init");

		System.out.println("???servlet name " + config.getServletName());
		
		// ???conifg??????????????? ??????????servlet?????????????????????????
		Enumeration<String> params = config.getInitParameterNames();
		while(params.hasMoreElements()) {
			System.out.println("param " + params.nextElement());
		}
		System.out.println(" param init value  " +config.getInitParameter("lunch"));
		
		// ?????????
		Enumeration<String> ctxParams = config.getServletContext().getInitParameterNames();
		while(ctxParams.hasMoreElements()) {
			System.out.println("ctxParams " + ctxParams.nextElement());
		}
		// ????????? ??ò????
		System.out.println("ctxParam init value " + config.getServletContext().getInitParameter("encoding"));
		
		
		super.init(config);
	}

	// service
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doGet Method");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doPost Method");
	}

	@Override
	public void destroy() {
		System.out.println("destroy");
		super.destroy();
	}

}
