<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="card right">
	<div class="card-header">
		<h5 class="card-title" id="lblFunctionTitle">QUẢN LÝ NHÂN VIÊN SỐ HÓA</h5>
	</div>
	<div class="card-body-from card-form">
		<div class="card-block">
			<form class="form">
				<div class="form-body">
				<table id="table-common">
			<thead>
				<tr>
					<th>Stt</th>
					<th>Tên nhân viên</th>
					<th>Loại nhân viên</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>1</th>
					<td>Nguyễn Bá Linh</td>
					<td>Nhân viên số hóa</td>
				</tr>
				<tr>
					<th>1</th>
					<td>Đỗ thị thu Hiền</td>
					<td>Nhân viên nhập liệu</td>
				</tr>
			</tbody>
		</table>
					<div class="form-group row" style="margin-top: 20px;">
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
					<div class="float-right" style="margin-top: 20px;">
						<button type="button" data-dismiss="modal" class="btn btn-warning btn-sm">Đóng</button>
						<button type="button" class="btn btn-success btn-sm">Thêm nhân viên</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>