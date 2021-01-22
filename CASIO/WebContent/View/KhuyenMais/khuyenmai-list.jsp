<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
		<h1>Khuyến mãi</h1>
		<h2>
			<a href="KhuyenMaiServlet?action=new">Thêm khuyến mãi</a> &nbsp;&nbsp;&nbsp; 
			<a href="KhuyenMaiServlet?action=list">Quản lý khuyến mãi</a>
		</h2>
	</div>
	<div align="center">
		<table border="1" cellpadding="5">
			<caption>
				<h2>Danh sách khuyến mãi</h2>
			</caption>
			<tr>
				<th>Ngày bắt đầu</th>
				<th>Ngày kết thúc</th>
				<th></th>
			</tr>
			<c:forEach var="khuyenmai" items="${listOfKhuyenMai}">
				<tr>
					<td><c:out value="${khuyenmai.thoiGianBd}" /></td>
					<td><c:out value="${khuyenmai.thoiGianKt}" /></td>
					<td>
					<a href="KhuyenMaiServlet?action=edit&maKm=<c:out value='${khuyenmai.maKm}' />">Chỉnh sửa</a>&nbsp;&nbsp;&nbsp;
					<a href="KhuyenMaiServlet?action=delete&maKm=<c:out value='${khuyenmai.maKm}' />">Xóa</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>