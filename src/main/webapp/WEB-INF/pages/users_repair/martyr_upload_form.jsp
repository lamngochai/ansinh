<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="card right">
	<div class="card-header">
		<h5 class="card-title" id="lblFunctionTitle">UPLOAD HỒ SƠ</h5>
	</div>
	<div class="card-body-from card-form">
		<div class="card-block">
			<form class="form">
				<div class="form-body">
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">Chọn file upload</label>
						<div class="col-sm-10">
							<input type="file" class="form-control">
						</div>
					</div>
					<div class="float-right" style="top: 20px;">
						<button type="button" data-dismiss="modal"
							class="btn btn-warning btn-sm">Đóng</button>
						<button type="button" class="btn btn-success btn-sm">Upload</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>