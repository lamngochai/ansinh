<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page session="true"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title>Stech | Tạo tài khoản</title>
<!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 10]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<meta name="keywords"
	content="bootstrap, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
<meta name="author" content="Codedthemes" />
<jsp:include page="/WEB-INF/pages/css.jsp"></jsp:include>

</head>

<body>
	<!-- Pre-loader start -->
	<div class="theme-loader">
		<div class="loader-track">
			<div class="preloader-wrapper">
				<div class="spinner-layer spinner-blue">
					<div class="circle-clipper left">
						<div class="circle"></div>
					</div>
					<div class="gap-patch">
						<div class="circle"></div>
					</div>
					<div class="circle-clipper right">
						<div class="circle"></div>
					</div>
				</div>
				<div class="spinner-layer spinner-red">
					<div class="circle-clipper left">
						<div class="circle"></div>
					</div>
					<div class="gap-patch">
						<div class="circle"></div>
					</div>
					<div class="circle-clipper right">
						<div class="circle"></div>
					</div>
				</div>

				<div class="spinner-layer spinner-yellow">
					<div class="circle-clipper left">
						<div class="circle"></div>
					</div>
					<div class="gap-patch">
						<div class="circle"></div>
					</div>
					<div class="circle-clipper right">
						<div class="circle"></div>
					</div>
				</div>

				<div class="spinner-layer spinner-green">
					<div class="circle-clipper left">
						<div class="circle"></div>
					</div>
					<div class="gap-patch">
						<div class="circle"></div>
					</div>
					<div class="circle-clipper right">
						<div class="circle"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Pre-loader end -->
	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">
			<jsp:include page="header.jsp"></jsp:include>
			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">
					<jsp:include page="slidebar_admin.jsp"></jsp:include>
					<div class="pcoded-content">
						<!-- Page-header start -->
						<div class="page-header">
							<div class="page-block">
								<div class="row align-items-center">
									<div class="col-md-3">
										<div class="page-header-title">
											<h5 class="m-b-10">Quản lý tài khoản</h5>
											<ul class="breadcrumb">
												<li class="breadcrumb-item"><a
													href="${pageContext.request.contextPath}/admin_index">
														<i class="fa fa-home"></i>
												</a></li>
												<li class="breadcrumb-item"><a
													href="${pageContext.request.contextPath}/admin_create_user">Tạo tài khoản</a>
											</ul>
										</div>
									</div>
									<div class="col-md-9">
										<div class="float-right">
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Page-header end -->
						<div class="pcoded-inner-content">
							<!-- Main-body start -->
							<div class="main-body">
								<div class="page-wrapper">
									<!-- Page-body start -->
									<div class="page-body"></div>
									<div class="card right">
										<div class="card-header">
											<h5 class="card-title" id="lblFunctionTitle">TẠO TÀI
												KHOẢN NHÂN VIÊN</h5>
										</div>
										<div class="card-body-from card-form">
											<div class="card-block">
												<form class="form">
													<div class="form-body">
														<div class="form-group row">
															<label class="col-sm-2 col-form-label">Họ và Tên</label>
															<div class="col-sm-4">
																<input type="text" class="form-control form-txt-info">
															</div>
															<label class="col-sm-2 col-form-label">Năm Sinh</label>
															<div class="col-sm-4">
																<input type="text" class="form-control form-txt-info">
															</div>
														</div>
														<div class="form-group row">
															<label class="col-sm-2 col-form-label">Giới tính</label>
															<div class="col-sm-4">
																<input type="text" class="form-control form-txt-info">
															</div>
															<label class="col-sm-2 col-form-label">Dân tộc</label>
															<div class="col-sm-4">
																<input type="text" class="form-control form-txt-info">
															</div>
														</div>
														<div class="form-group row">
															<label class="col-sm-2 col-form-label">Nơi ở</label>
															<div class="col-sm-4">
																<input type="text" class="form-control form-txt-info">
															</div>
															<div class="col-sm-3">
																<input type="text" class="form-control form-txt-info">
															</div>
															<div class="col-sm-3">
																<input type="text" class="form-control form-txt-info">
															</div>
														</div>
														<div class="form-group row">
															<label class="col-sm-2 col-form-label"></label> <label
																class="col-sm-10 col-form-label"> <input
																type="text" class="form-control form-txt-info">
															</label>
														</div>
														<div class="form-group row">
															<label class="col-sm-2 col-form-label">Nguyên Quán</label>
															<div class="col-sm-4">
																<input type="text" class="form-control form-txt-info">
															</div>
															<div class="col-sm-3">
																<input type="text" class="form-control form-txt-info">
															</div>
															<div class="col-sm-3">
																<input type="text" class="form-control form-txt-info">
															</div>
														</div>
														<div class="form-group row">
															<label class="col-sm-2 col-form-label"></label>
															<div class="col-sm-10">
																<input type="text" class="form-control form-txt-info">
															</div>
														</div>
														<div class="form-group row">
															<label class="col-sm-2 col-form-label">Số CCCD</label>
															<div class="col-sm-10">
																<input type="text" class="form-control form-txt-info">
															</div>
														</div>
														<div class="form-group row">
															<label class="col-sm-2 col-form-label">Ngày cấp</label>
															<div class="col-sm-4">
																<input type="text" class="form-control form-txt-info">
															</div>
															<label class="col-sm-2 col-form-label">Nơi cấp</label>
															<div class="col-sm-4">
																<input type="text" class="form-control form-txt-info">
															</div>
														</div>
														<div class="form-group row">
															<label class="col-sm-2 col-form-label">Phòng Ban</label>
															<div class="col-sm-4">
																<input type="text" class="form-control form-txt-info">
															</div>
															<label class="col-sm-2 col-form-label">Chức Vụ</label>
															<div class="col-sm-4">
																<input type="text" class="form-control form-txt-info">
															</div>
														</div>
														<div class="form-group row">
															<label class="col-sm-2 col-form-label">Tài khoản</label>
															<div class="col-sm-4">
																<input type="text" class="form-control form-txt-info">
															</div>
															<label class="col-sm-2 col-form-label">Mật khẩu</label>
															<div class="col-sm-4">
																<input type="text" class="form-control form-txt-info">
															</div>
														</div>
														<div class="float-right" style="top: 20px;">
															<button type="button" class="btn btn-success btn-sm">Thêm
																nhân viên</button>
														</div>
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>



						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/pages/javascripts.jsp"></jsp:include>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/Themes/js/admin.process.js "></script>
</body>
</html>