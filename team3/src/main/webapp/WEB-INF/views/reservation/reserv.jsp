<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>예약/접수</title>
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<!-- Custom fonts for this template-->
<!-- <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" -->
<!-- 	type="text/css"> -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
<link rel="stylesheet" href="https://kit.fontawesome.com/a31e2023c3.css"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/a31e2023c3.js"
	crossorigin="anonymous"></script>
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">
<link href="css/reservation/reserv.css" rel="stylesheet">
<!-- bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>


<body id="page-top">
	<!-- Page Wrapper -->
	<div id="wrapper">
		<%@ include file="../bar/sideBar.jsp"%>
		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<div id="content">
				<%@ include file="../bar/topBar.jsp"%>
				<!-- Begin Page Content -->
				<div class="container-fluid">
					<!-- Page Heading -->
					<!-- 				<h1 class="h3 mb-4 text-gray-800">예약/접수</h1> -->

					<!-- 메뉴1 -->
					<ul class="nav" id="menu1">
						<li class="nav-item"><a class="nav-link" aria-current="page"
							href="#" style="color:gray;">예약/접수</a></li>
						<li class="nav-item"><a class="nav-link" href="#" style="color:gray;">캘린더</a></li>
						<li class="nav-item1"><a class="nav-link" href="#"></a></li>
						<li class="nav-item">
							<button type="button" class="btn btn-success">신규등록</button>
						</li>
					</ul>
					<!-- 메뉴2 -->
					<ul class="nav" id="menu2" >
						<li class="nav-item"><a class="nav-link" aria-current="page" href="#"><span style="color: gray;">예약</span> <span><b>3&nbsp;&nbsp;</b></span></a></li>
						<li class="nav-item"><a class="nav-link" href="#"><span style="color: gray;">접수대기</span> <span><b>19&nbsp;&nbsp;</b></span></a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#"><span style="color: gray;">진료중</span> <span><b>5&nbsp;&nbsp;</b></span></a>
						</li>
					</ul>


					<!-- 검색창 / 예약창 / 접수창 -->
					<div class="container-2 ">
						<!-- 검색 -->
						<div class="card border-primary mb-3 left mr-2" style="max-width: 23rem;">
							<div class="card-header">고객조회</div>
							<div class="card-body text-primary">
							<!-- 검색기능 -->
							<nav class="navbar navbar-light bg-light">
							  <form class="form-inline">
							    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
							    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
							  </form>
							</nav>
							</div>
						</div>
						<!-- 예약 -->
						<div class="card border-secondary mb-3 left mr-2" style="width:auto;">
							<!--메뉴1 -->
							<div class="card-header">예약</div>
							<!-- 겉 4방 마진  -->
<!-- 							<div class="card-body"> -->
							<div style="margin:15px; margin-top:0;">
								<table class="table table-borderless"
									style="color: gray; background-color: white;">
									<tr>
										<th class="t-right" style="border-bottom: 1px solid gray;"
											style="width: auto;">예약: 2명</th>
									</tr>


<%-- 									<c:forEach items="${clientview }" var="l"> --%>
									<tr class="left" style="border-bottom: 1px solid gray;">
										<td style="font-size: 14px;"><span><a href="#"
												style="text-decoration: none;"><b
													style="font-size: 25px; color: black">까미</b></a>&nbsp;&nbsp;&nbsp;윤지혜
												수정</span> <br> <span>2019.06.03 | 4살 | 여</span><br> <span>결석,
												설사</span>
										<td style="padding-left: 50px; text-align: right;"><span>오전
												11:30</span><br>
										<br> <span>
												<button type="button">예약취소</button>
												<button type="button">접수</button>
										</span></td>
										</td>
									</tr>



<%-- 								</c:forEach> --%>
								</table>


							</div>
<!-- 							</div> -->
						</div>
						<!-- 접수 -->
						<div class="card border-secondary mb-3 left" style="max-width: 23rem;">
							<div class="card-header">접수</div>
							<div class="card-body text-secondary">
								<h5 class="card-title">Secondary card title</h5>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
						</div>
						</div>
					</div>
					
					
					<!-- /.container-fluid -->

				</div>
				<!-- End of Main Content -->


				<!-- End of Footer -->

			</div>
			<!-- End of Content Wrapper -->
		</div>
	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>


	<%@ include file="../bar/footer.jsp"%>
	<%@ include file="../bar/logoutModal.jsp"%>

	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>

	<!-- bootstrap -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
