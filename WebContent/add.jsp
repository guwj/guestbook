<%@page import="com.bit2016.guestbook.dao.GuestbookDao"%>
<%@page import="com.bit2016.guestbook.vo.GuestbookVo"%>
<%
	request.setCharacterEncoding( "UTF-8" );

	String name = request.getParameter( "name" );
	String password = request.getParameter( "pass" );
	String content = request.getParameter( "content" );
	
	GuestbookVo vo = new GuestbookVo();
	vo.setName(name);
	vo.setContent(content);
	vo.setPassword(password);
	
	GuestbookDao dao = new GuestbookDao();
	dao.insert(vo);
	
	response.sendRedirect( "/guestbook" );
%>