<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<script src="assets/js/jquery-3.1.1.min.js"></script>

<header class="topbar">
	<nav class="navbar top-navbar navbar-toggleable-sm navbar-light">
		<!-- Logo -->
		<div class="navbar-header">
			<a class="navbar-brand" href="http://facebook.com"
				target="blank"> <!-- Logo icon --> <b> <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->

					<!-- Light Logo icon --> <img src="lite/images/logo-light-icon.png"
					alt="homepage" class="light-logo">
			</b> <!--End Logo icon --> <!-- Logo text --> <span
				style="display: none;"> <!-- Light Logo text --> <img  width="150px" height="50px"
					src="themes/images/weblogo.png" class="light-logo"
					alt="homepage"></span>
			</a>
		</div>

		<!-- End Logo -->

		<div class="navbar-collapse">
			<ul class="navbar-nav mr-auto mt-md-0">
				<!-- Search -->
				<!-- da ngon ngu -->

				<li class="nav-item dropdown"><a href="?lang=en" data-lang="en"
					class="nav-link dropdown-toggle text-muted waves-effect waves-dark"
					href="" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"><img src="lite/images/users/US.png"
						alt="user" class="profile-pic m-r-10">EN</a></li>
				<li class="nav-item dropdown"><a href="?lang=vi" data-lang="vi"
					class="nav-link dropdown-toggle text-muted waves-effect waves-dark"
					href="" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"><img src="lite/images/users/VN.png"
						alt="user" class="profile-pic m-r-10">VN</a></li>
			</ul>

			<!-- User profile and search -->
			<ul class="navbar-nav my-lg-0">
				<!-- Profile -->
				<!-- Info -->
				<c:if test="${sessionScope.employee.nameEmployee == null}">
					<li class="nav-item dropdown"><a href="employee"
						class="nav-link dropdown-toggle text-muted waves-effect waves-dark"><s:message
								code="employee.header.login" /> </a></li>
				</c:if>

				<c:if test="${sessionScope.employee.nameEmployee != null}">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle text-muted waves-effect waves-dark"
						href="" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"><s:message code="employee.header.hello" />
					</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle text-muted waves-effect waves-dark"
						href="" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"><img
							src="images/employees/${sessionScope.employee.photo}" alt="user"
							width="80px" class="profile-pic m-r-10">${sessionScope.employee.nameEmployee}</a></li>

				</c:if>

			</ul>
		</div>
	</nav>
</header>
<script>
	$(function() {
		$("a[data-lang]").click(function() {
			var lang = $(this).attr("data-lang");
			$.get("employee/home?lang=" + lang, function() {
				location.reload();
			});
			return false;
		});
	});

	
</script>