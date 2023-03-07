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

					<%@ include file="../reservation/reserv_bar.jsp"%>


					<!-- 검색창 / 예약창 / 접수창 -->
					<div class="container-2 ">
						<!-- 검색 -->
						<div class="card border-secondary mb-3 left mr-2"
							style="max-width: 22rem;">
							<!--메뉴1 -->
							<div class="card-header">고객조회</div>
							<div
								style="margin-top: 0; margin-left: 13px; margin-right: 13px; margin-bottom: 20px;">
								  <div style="height:520px; overflow-y:auto"> 
								<!-- 검색기능 -->
								<nav class="navbar navbar-light bg-light">
									<form class="form-inline">
										<input class="form-control mr-sm-2" style="width: 230px;"
											type="search" placeholder="이름 혹은 전화번호" aria-label="검색">
										<button class="btn btn-outline-success my-2 my-sm-0"
											type="submit">검색</button>
									</form>
								</nav>
								  </div>
							</div>
						</div>
						<!-- 예약 -->
						<div class="card border-secondary mb-3 left mr-2"
							style="max-width: 22rem;">
							<!--메뉴1 -->
							<div class="card-header">예약</div>
							<div
								style="margin-top: 0; margin-left: 13px; margin-right: 13px; margin-bottom: 20px;">
								  <div style="height:520px; overflow-y:auto"> 
								<table class="table table-borderless" style="color: gray; background-color: white;">
								  <tr>
								    <th class="t-right" style="border-bottom: 1px solid gray; width: auto;">예약: 2명</th>
								  </tr>
								
								    <c:forEach items="${boardlist}" var="l">
								      <tr class="left" style="border-bottom: 1px solid gray; padding-bottom: 5px;">
								        <td style="font-size: 14px; width: 180px;">
								          <div style="inline-block">
								            <a href="#" style="text-decoration: none;"><b style="font-size: 25px; color: black">${l.pet_name}</b></a>&nbsp;&nbsp;&nbsp;윤지혜 수정
								          </div>
								          <br>
								          <span>2019.06.03 | 4살 | 여</span>
								          <br>
								          <span>결석, 설사</span>
								        </td>
								        <td style="text-align: right;">
								          <span>오전 11:30</span>
								          <br>
								          <br>
								          <span>
								            <button type="button">예약취소</button>
								            <button type="button">접수</button>
								          </span>
								        </td>
								      </tr>
								    </c:forEach>
								</table>
								  </div>
							</div>
						</div>
						<!-- 접수 -->
						<div class="card border-secondary mb-3 left mr-2"
							style="max-width: 22rem;">
							<!--메뉴1 -->
							<div class="card-header">접수</div>
							<div
								style="margin-top: 0; margin-left: 13px; margin-right: 13px; margin-bottom: 20px;">
								  <div style="height:520px; overflow-y:auto"> 
								<table class="table table-borderless" style="color: gray; background-color: white;">
								  <tr>
								    <th class="t-right" style="border-bottom: 1px solid gray; width: auto;">대기중: 9명</th>
								  </tr>
								
								    <c:forEach items="${boardlist}" var="l">
								      <tr class="left" style="border-bottom: 1px solid gray; padding-bottom: 5px;">
								        <td style="font-size: 14px; width: 180px;">
								          <div style="inline-block">
								            <a href="#" style="text-decoration: none;"><b style="font-size: 25px; color: black">${l.pet_name}</b></a>&nbsp;&nbsp;&nbsp;윤지혜 수정
								          </div>
								          <br>
								          <span>2019.06.03 | 4살 | 여</span>
								          <br>
								          <span>결석, 설사</span>
								        </td>
								        <td style="text-align: right;">
								          <span>오전 11:30</span>
								          <br>
								          <br>
								          <span>
								            <button type="button">예약취소</button>
								            <button type="button">접수</button>
								          </span>
								        </td>
								      </tr>
								    </c:forEach>
								</table>
								  </div>
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
