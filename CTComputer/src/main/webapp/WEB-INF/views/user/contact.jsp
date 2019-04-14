<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="${pageContext.servletContext.contextPath }/" />
<meta charset="utf-8">
<title>CT Computer Shop - Website Bán Hàng Online</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="mainBody">
		<div class="container">
			<div class="row">
				<jsp:include page="menu.jsp"></jsp:include>
				<!--  -->
				<div class="span9" id="mainCol">
					<ul class="breadcrumb">
						<li><a href="user/home">Trang Chủ</a> <span class="divider">/</span></li>
						<li class="active">Liên Hệ</li>
					</ul>
					<h3>Liên Hệ Với Chúng Tôi</h3>
					<hr class="soft">
				</div>
				<div class="row">
					<div class="span4">
						<h4>Địa Chỉ Liên Hệ</h4>
						<p>
							Nguyễn Kiệm<br> Gò Vấp, HCM <br> <br>Email: trungchi@gmail.com<br>
							﻿Phone: 123456789<br> Facebook: <a
								href="http://facebook.com/HieuDTPH04388">http://facebook.com</a><br>
							Website: http://trungchi.com.vn<br>
							
							
						</p>
					</div>

					<div class="span4">
						<h4>Thời Gian Mở Cửa</h4>
						<h5>Thứ 2 -> Thứ 6:</h5>
						<span> 08:30 AM - 09:00 PM </span> <br>
						<h5>Thứ 7:</h5>
						<span> 09:00 AM - 07:00 PM </span><br>
						<h5>Chủ Nhật:</h5>
						<span>12:30 PM - 06:00 PM</span> <br>
					</div>
					<br>
					<hr class="soft">
					<div class="span9" id="mainCol">
						<h3>Vị Trí Địa Lý</h3>
						<hr class="soft">
						<iframe src="https://www.google.com/maps/d/embed?mid=1O9oVPw5RwaicvmE0qIKWmwXLnnM" width="100%" height="480"></iframe>
                   <small><a href="https://www.google.com/maps/d/embed?mid=z1j46M5Vtics.kKEfvly1qvlw" style="color:#666;text-align:left;font-size:12px">Xem trên Google Map</a></small>


					</div>
				</div>

				<!--  -->
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>



</html>