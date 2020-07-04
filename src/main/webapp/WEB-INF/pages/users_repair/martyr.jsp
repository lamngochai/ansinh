<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page session="true"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title>Người có công</title>
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
					<jsp:include page="slidebar_user_repair.jsp"></jsp:include>
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
													href="${pageContext.request.contextPath}/admin-nguoicocong">Người
														có công</a>
												<li class="breadcrumb-item"><a
													href="${pageContext.request.contextPath}/admin-lietsi">Liệt
														sĩ</a></li>
											</ul>
										</div>
									</div>
									<div class="col-md-9">
										<div class="float-right">
											<button type="button" onclick="showMartyrList()" class="btn btn-primary btn-sm">Danh Sách Liệt
												sĩ</button>
											<button type="button" onclick="showMartyrData()" class="btn btn-primary btn-sm">Hiệu
												Chỉnh Hồ Sơ</button>
											<button type="button" onclick="showMartyrEdit()" class="btn btn-primary btn-sm">Sửa Hồ Sơ</button>
											<button type="button" data-toggle="modal" data-target="#frmUpload"
							data-backdrop="static" data-keyboard="false" class="btn btn-primary btn-sm">Upload</button>
							<button type="button" onclick="downTemplateFile()" class="btn btn-primary btn-sm">Tải file mẫu</button>
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
										<div class="row">
											<div class="col-sm-12" id="include"></div>
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
	</div>
	<!-- Modal Create-->
		<div class="modal fade" id="frmUpload" role="dialog">
			<div class="modal-dialog modal-xl modal-dialog-centered">
				<!-- Modal content-->
				<div class="modal-content">
					<jsp:include page="martyr_upload_form.jsp"></jsp:include>
				</div>
			</div>
		</div>
	<jsp:include page="/WEB-INF/pages/javascripts.jsp"></jsp:include>
	<script type="text/javascript" src="${pageContext.request.contextPath}/Themes/js/user.repair.process.js "></script>
</body>
</html>