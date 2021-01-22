<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<sql:setDataSource var="snapshot"
		driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
		url="jdbc:sqlserver://DESKTOP-3VBDDB3//SQLEXPRESS;integratedSecurity=True;databaseName=CASIO"
		user="localhost" password="root" />

	<sql:query dataSource="${snapshot}" var="listkm">
            SELECT * from KhuyenMai;
         </sql:query>

	<sql:query dataSource="${snapshot}" var="listsp">
            SELECT * from SanPham;
         </sql:query>
	<div>
		<h1>Chi tiết khuyến mãi</h1>
		<h2>
			<a href="CTKMServlet?action=new">Thêm chi tiết khuyến mai</a>
			&nbsp;&nbsp;&nbsp; <a href="CTKMServlet?action=list">Danh sách
				chi tiết khuyến mãi</a>
		</h2>
	</div>
	<div align="center">
		<table border="1" cellpadding="5">
			<caption>
				<h2>Danh sách chi tiết khuyến mãi</h2>
			</caption>
			<tr>
				<th>Mã khuyến mãi</th>
				<th>Mã sản phẩm</th>
				<th>Phần trăm khuyến mãi</th>
			</tr>
			<c:forEach var="ctkm" items="${listOfctkm}">
				<tr>
					<td><c:out value="${ctkm.maKm}" /></td>
					<td><c:out value="${ctkm.maSp}" /></td>
					<td><c:out value="${ctkm.phanTram}" /></td>
					<td><a
						href="CTKMServlet?action=edit&id=<c:out value='${ctkm.id}' />">Chỉnh
							sửa</a>&nbsp;&nbsp;&nbsp; <a
						href="CTKMServlet?action=delete&id=<c:out value='${ctkm.id}' />">Xóa</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>