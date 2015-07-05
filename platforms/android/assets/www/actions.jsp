<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>
<%@ page import="com.test.*" %>

<%

	String action=request.getParameter("action");
	
	if(action.equals("VALIDATE_ANSWER")){
		String qid=request.getParameter("qid");
		String opt = request.getParameter("option");
		QuizSession qs = (QuizSession)session.getAttribute("QuizSession");		
		out.println(qs.validateAnswer(opt,qid));
	}
	if(action.equals("STATS")){
		
		QuizSession qs = (QuizSession)session.getAttribute("QuizSession");		
		out.println(qs.getQuizStat());
	}
%>