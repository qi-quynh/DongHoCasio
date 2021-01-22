<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1>Khách hàng</h1>
		<h2>
			<a href="UsersServlet?action=new">Thêm khách hàng</a>
			&nbsp;&nbsp;&nbsp; <a href="UsersServlet?action=list">Danh sách
				khách hàng</a>
		</h2>
	</div>
	<div align="center">
		<c:if test="${user != null}">
			<form action="UsersServlet?action=update" method="post">
		</c:if>
		<c:if test="${user ==null}">
			<form action="UsersServlet?action=insert" method="post">
		</c:if>
		<table border="1" cellpadding="5">
			<caption>
				<h2>
					<c:if test="${user != null}">Chỉnh sửa khách hàng</c:if>
					<c:if test="${user == null}">Thêm khách hàng</c:if>
				</h2>
			</caption>
			<c:if test="${user != null}">
				<input type="hidden" name="userId"
					value="<c:out value='${user.userId}' />" />
			</c:if>
			<tr>
				<th>Tên đăng nhập:</th>
				<td><input type="text" name="userName" size="45"
					value="<c:out value='${user.userName}' />" /></td>
			</tr>
			<tr>
				<th>Mật khẩu:</th>
				<td><input type="password" name="password" size="45"
					value="<c:out value='${user.password}' />" /></td>
			</tr>
			<tr>
				<th>Email:</th>
				<td><input type="email" name="email" size="45"
					value="<c:out value='${user.email}' />" /></td>
			</tr>
			<tr>
				<th>Số điện thoại:</th>
				<td><input type="text" name="sdt" size="45" maxlength="10"
					value="<c:out value='${user.sdt}' />" /></td>
			</tr>
			<tr>
				<th>Địa chỉ:</th>
				<td><input type="text" name="address" size="45"
					value="<c:out value='${user.address}' />" /></td>
			</tr>
			<tr>

			</tr>
			<tr>
				<th>Allowed:</th>
				<td><input type="number" name="allowed" size="45"
					value="<c:out value='${user.allowed}' />" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="Lưu" /></td>
			</tr>
		</table>
		</form>
	</div>
</body>
</html>