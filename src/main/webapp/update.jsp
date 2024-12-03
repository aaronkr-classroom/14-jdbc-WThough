<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="connect.jsp" %>
	<%
	request.setCharacterEncoding("utf-8");
	
	// http://;ocalhost:8080/?id=1234
	String id = null;
	String pw = null;
	String name = null;
	
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	
	try {
		String sql = "SELECT id, passwd, name FROM Member WHERE id=?";
		pstmt = conn.prepareStatment(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuert();
		
		if (rs.next()) {
			String pw = rs.getString("passwd");
			String 
		}
	} catch (SQLException e) {
		out.println("Member 테이블에서 id 찾울 수 없었습니다.");
		out.println("SQLXexcepion: " + e,getMessage());
	} finally%>

	<form method="POST" action="iinsert_process.jsp">
			<p>아이디: <input type="text" name="id" /></p>
			<p>비밀번호: <input type="password" name="passwd" /></p>
			<p>이름: <input type="text" name="name" /></p>
			<p><input type="submit" value="전송" /></p>

</body>
</html>