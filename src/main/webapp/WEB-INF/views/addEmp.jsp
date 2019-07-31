<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	//设置开句对路径
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 引入Bootstrap js和css -->
<link rel="stylesheet"
	href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.css">
</head>
<body>
	<form action="${APP_PATH }/addEmp" method="post" style="width: 600px;margin: auto; margin-top: 130px;">
		<div class="form-group">
			<label for="empName">姓名</label> 
			<input id="empName" type="text" class="form-control" name="empName" placeholder="Name">
		</div>
		<div class="form-group">
			<label for="email">邮箱</label> 
			<input type="email" class="form-control" id="email" name="email" placeholder="Email">
		</div>
		<div class="form-group">
			<label for="gender">性别</label> 
			<input type="text" class="form-control" id="gender" name="gender" placeholder="Gender">
		</div>
		
		<div class="form-group">
			<label for="department">部门</label> 
			<select class="form-control" name="dId" id="department">
				<c:forEach items="${depts }" var="dept">
					<option value="${dept.deptId }">${dept.deptName }</option>
				</c:forEach>
			</select>
		</div>
		<button type="submit" class="btn btn-default">Submit</button>
	</form>
</body>
</html>
<script type="text/javascript"
	src="${APP_PATH }/static/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
<script type="text/javascript"
	src="${APP_PATH }/static/js/jquery-1.12.4.min.js"></script>