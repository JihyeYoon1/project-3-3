<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Sidebar -->
<ul
	class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
	id="accordionSidebar">

	<!-- Sidebar - Brand -->
	<a
		class="sidebar-brand d-flex align-items-center justify-content-center"
		href="index.html">
		<div class="sidebar-brand-icon rotate-n-15">
			<i class="fas fa-solid fa-paw"></i>
		</div>
		<div class="sidebar-brand-text mx-3">
			중앙 동물병원 <sup><i class="fas fa-solid fa-comment-medical"></i></sup>
		</div>
	</a>

	<!-- Divider -->
	<hr class="sidebar-divider my-0">

	<li class="nav-item active"><a class="nav-link" href="/index">
			<i class="fa-solid fa-house-chimney"></i> <span>INDEX</span>
	</a></li>
	<!-- Divider -->
	<hr class="sidebar-divider">

	<!-- Heading -->
	<div class="sidebar-heading">Main Menu</div>

	<!-- Nav Item - Dashboard -->
	<li class="nav-item active"><a class="nav-link" href="index.html">
			<i class="fas fa-solid fa-receipt"></i> <span>예약/접수</span>
	</a></li>
	<li class="nav-item active"><a class="nav-link" href="index.html">
			<i class="fas fa-sharp fa-solid fa-comments-dollar"></i> <span>수납</span>
	</a></li>
	<li class="nav-item active"><a class="nav-link" href="index.html">
			<i class="fas fa-solid fa-stethoscope"></i> <span>진료</span>
	</a></li>
	
	<!-- Nav Item - Pages Collapse Menu -->
	<li class="nav-item active"><a class="nav-link collapsed" href="#"
		data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true"
		aria-controls="collapseTwo"><i class="fas fa-regular fa-users"></i> <span>회원관리</span>
	</a>
		<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
			data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<a class="collapse-item" href="buttons.html">회원 정보</a>
				<a class="collapse-item" href="buttons.html">이전 진료 내역</a>
			</div>
		</div></li>
	
	
	
	<li class="nav-item active"><a class="nav-link" href="index.html">
			<i class="fas fa-solid fa-comment-sms"></i> <span>SMS 발송</span>
	</a></li>
	<li class="nav-item active"><a class="nav-link" href="index.html">
			<i class="fas fa-regular fa-clipboard"></i> <span>공지사항</span>
	</a></li>


	<!-- Divider -->
	<hr class="sidebar-divider">

	<!-- Heading -->
	<div class="sidebar-heading">ADMIN</div>

	<!-- Nav Item - Pages Collapse Menu -->
	<li class="nav-item"><a class="nav-link collapsed" href="#"
		data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true"
		aria-controls="collapseTwo"> <i
			class="fas fa-sharp fa-solid fa-toolbox"></i> <span>관리자</span>
	</a>
		<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
			data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<h6 class="collapse-header">관리</h6>
				<a class="collapse-item" href="buttons.html">데이터 관리</a> <a
					class="collapse-item" href="cards.html">매출 관리</a> <a
					class="collapse-item" href="cards.html">재고 관리</a>
			</div>
		</div></li>




	<!-- Divider -->
	<hr class="sidebar-divider d-none d-md-block">

	<!-- Sidebar Toggler (Sidebar) -->
	<div class="text-center d-none d-md-inline">
		<button class="rounded-circle border-0" id="sidebarToggle"></button>
	</div>



</ul>
<!-- End of Sidebar -->