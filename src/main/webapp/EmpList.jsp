<%@ page import="com.hybrid.domain.Emp"%>
<%@ page import="java.util.List"%>
<%@ page import="com.hybrid.mapper.EmpMapper"%>
<%@ page import="com.hybrid.fx.MainApplication"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emplist.jsp</title>
</head>
<body>
	<%
		EmpMapper mapper = MainApplication.ctx.getBean(EmpMapper.class);
		List<Emp> emps = mapper.readAll();
		for (Emp emp : emps) {
			System.out.println(emp.getEmpno() + " " + emp.getEname() + " " + emp.getJob() + " " + emp.getMgr() + " " +
		emp.getHiredate() + " " + emp.getSal() + " " + emp.getComm() + " " + emp.getDeptno());
			out.println(emp.getEmpno() + " " + emp.getEname() + " " + emp.getJob() + " " + emp.getMgr() + " " +
		emp.getHiredate() + " " + emp.getSal() + " " + emp.getComm() + " " + emp.getDeptno() + "<br>");
		}
	%>
</body>
</html>