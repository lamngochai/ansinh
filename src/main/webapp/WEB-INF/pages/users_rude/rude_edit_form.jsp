<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="card min-height-rude right">
	<div class="card-header">
		<h5 class="card-title" id="lblFunctionTitle">SỬA HỒ SƠ</h5>
	</div>
	<div class="card-body-from card-form">
		<div class="card-block">
			<form class="form">
				<div class="form-body">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
										<label class="col-sm-4 col-form-label">Người tải lên</label>
										<div class="col-sm-8">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 col-form-label">Ngày tải lên</label>
										<div class="col-sm-8">
											<input type="date" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 col-form-label">Đường dẫn online</label>
										<div class="col-sm-8">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 col-form-label">Đường dẫn offline</label>
										<div class="col-sm-8">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 col-form-label">Tỉnh thành</label>
										<div class="col-sm-8">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 col-form-label">Người hiệu chỉnh</label>
										<div class="col-sm-8">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 col-form-label">Ngày hiệu chỉnh</label>
										<div class="col-sm-8">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 col-form-label">Lý do trả hồ sơ</label>
										<div class="col-sm-8">
											<input type="text" class="form-control">
										</div>
									</div>
									
						</div>
						<div class="col-md-6 min-height-rude">
							<iframe
								src="${pageContext.request.contextPath}/uploads/my-file.pdf"
								width="100%" height="100%"></iframe>

						</div>
					</div>
					<div class="float-right" style="top: 20px;">
						<button type="button" data-dismiss="modal" class="btn btn-primary btn-sm">Đóng</button>
						<button type="button" class="btn btn-primary btn-sm">Upload File mới</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>