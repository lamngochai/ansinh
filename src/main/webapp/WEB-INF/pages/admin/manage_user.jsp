<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page session="true"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title>Stech | Người có công</title>
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
											<h5 class="m-b-10">Thống kê</h5>
											<ul class="breadcrumb">
												<li class="breadcrumb-item"><a
													href="${pageContext.request.contextPath}/admin_index">
														<i class="fa fa-home"></i>
												</a></li>
												<li class="breadcrumb-item"><a
													href="${pageContext.request.contextPath}/admin_mamage_user">Quản lý tài khoản</a>
											</ul>
										</div>
									</div>
									<div class="col-md-9">
										<div class="float-right">
											<button type="button" onclick="window.location.href='${pageContext.request.contextPath}/admin_create_user'" class="btn btn-primary btn-sm">Tạo tài khoản</button>
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
									<div class="page-body">

										<div class="card">
											<div class="card-header">
												<h5>QUẢN LÝ TÀI KHOẢN</h5>
												<!-- Dùng nếu cần -->
												<div class="card-header-right">
													<ul class="list-unstyled card-option">
														<li><i class="fa fa fa-expand open-card-option"></i></li>
														<li><i class="fa fa-window-maximize full-card"></i></li>
														<li><i class="fa fa-minus minimize-card"></i></li>
														<li><i class="fa fa-refresh reload-card"></i></li>
														<li><i class="fa fa-trash close-card"></i></li>
													</ul>
												</div>
											</div>
											<div class="card-block">
												<table id="table-common">
													<thead>
														<tr>
															<th>Stt</th>
															<th>Mã Nhân Viên</th>
															<th>Họ và Tên</th>
															<th>Ngày sinh</th>
															<th>Quê quán</th>
															<th>Số điện thoại</th>
															<th>Email</th>
															<th>Phòng ban</th>
															<th>Thao tác</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<th>1</th>
															<td>0001</td>
															<td>Nguyễn Bá Linh</td>
															<td>07/10/1988</td>
															<td>Điền Xá - Nam Trực - Nam Định</td>
															<td>0964572558</td>
															<td>khoinguyen.ptit@gmail.com</td>
															<td>Số hóa</td>
															<td class="text-center"><a
																href="#deleteEmployeeModal" data-toggle="modal"> <i
																	class="fas fa-check-square not-approve"
																	title="Chưa được công khai" data-toggle="modal"
																	data-target="#frmUpdate" data-backdrop="static"
																	data-keyboard="false"></i>
															</a>
															<a
																href="#deleteEmployeeModal" data-toggle="modal"> <i
																	class="fas fa-user" title="Chưa được công khai"
																	data-toggle="modal" data-target="#frmCreate"
																	data-backdrop="static" data-keyboard="false"></i>
															</a></td>
														</tr>
													</tbody>
												</table>
												<div class="pagination-container">
													<div class="pagination">
														<a href="#">&laquo;</a> <a href="#">1</a> <a
															class="active" href="#">2</a> <a href="#">3</a> <a
															href="#">4</a> <a href="#">5</a> <a href="#">6</a> <a
															href="#">&raquo;</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- Page-body end -->
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