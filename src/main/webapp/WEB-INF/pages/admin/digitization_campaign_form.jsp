<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="card right">
	<div class="card-header">
		<h5 class="card-title" id="lblFunctionTitle">TẠO CHIẾN DỊCH</h5>
	</div>
	<div class="card-body-from card-form">
		<div class="card-block">
			<form class="form">
				<div class="form-body">
				<div class="form-group row">
						<label class="col-sm-4 col-form-label">Loại chiến dịch</label>
						<div class="col-sm-8">
							<select id="lstEmplProvinceCont" name="lstEmplProvinceCont"
												class="form-control" onchange="changeProvince()">
												<option value="0">-- Loại chiến dịch --</option>
												<c:forEach items="${listProvince}" var="province">
													<option value="${province.provinceId}"
														<c:if test="${province.provinceId eq selectedCatId}">selected="selected"</c:if>>${province.province}
													</option>
												</c:forEach>
											</select>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">Đơn vị triển khai</label>
						<div class="col-sm-8">
							<select id="lstEmplProvinceCont" name="lstEmplProvinceCont"
												class="form-control" onchange="changeProvince()">
												<option value="0">-- Đơn vị --</option>
												<c:forEach items="${listProvince}" var="province">
													<option value="${province.provinceId}"
														<c:if test="${province.provinceId eq selectedCatId}">selected="selected"</c:if>>${province.province}
													</option>
												</c:forEach>
											</select>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">Ngày bắt đầu</label>
						<div class="col-sm-8">
							<input type="date" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">Thêm nhân viên</label>
						<div class="col-sm-4">
							<select id="lstEmplProvinceCont" name="lstEmplProvinceCont"
												class="form-control" onchange="changeProvince()">
												<option value="0">-- Chọn loại nhân viên --</option>
												<c:forEach items="${listProvince}" var="province">
													<option value="${province.provinceId}"
														<c:if test="${province.provinceId eq selectedCatId}">selected="selected"</c:if>>${province.province}
													</option>
												</c:forEach>
											</select>
						</div>
						<div class="col-sm-4">
							<select id="lstEmplProvinceCont" name="lstEmplProvinceCont"
												class="form-control" onchange="changeProvince()">
												<option value="0">-- Chọn nhân viên --</option>
												<c:forEach items="${listProvince}" var="province">
													<option value="${province.provinceId}"
														<c:if test="${province.provinceId eq selectedCatId}">selected="selected"</c:if>>${province.province}
													</option>
												</c:forEach>
											</select>
						</div>
					</div>
					<div class="float-right" style="top: 20px;">
						<button type="button" data-dismiss="modal" class="btn btn-warning btn-sm">Đóng</button>
						<button type="button" class="btn btn-success btn-sm">Thêm nhân viên</button>
						<button type="button" class="btn btn-success btn-sm">Tạo chiến dịch</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>