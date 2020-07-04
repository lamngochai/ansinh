<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Material tab card start -->
<div class="card">
	<div class="card-header">
		<h5>QUẢN LÝ CHIẾN DỊCH</h5>
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
					<th>Mã chiến dịch</th>
					<th>Tỉnh thành</th>
					<th>Loại hồ sơ</th>
					<th>Ngày bắt đầu</th>
					<th>Thành phần</th>
					<th>Trạng thái</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>1</th>
					<td>0001</td>
					<td>Nam Định</td>
					<td>Liệt sĩ</td>
					<td>22/08/2020</td>
					<td class="text-center"><a href="#deleteEmployeeModal"
						data-toggle="modal"> <i class="fas fa-user" title="Chưa được công khai"
							data-toggle="modal" data-target="#frmCreate"
							data-backdrop="static" data-keyboard="false"></i>
					</a></td>
					<td class="text-center"><a href="#deleteEmployeeModal"
						data-toggle="modal"> <i class="fas fa-check-square not-approve" title="Chưa được công khai"
							data-toggle="modal" data-target="#frmUpdate"
							data-backdrop="static" data-keyboard="false"></i>
					</a></td>
				</tr>
			</tbody>
		</table>
		<div class="pagination-container">
			<div class="pagination">
				<a href="#">&laquo;</a> <a href="#">1</a> <a class="active" href="#">2</a>
				<a href="#">3</a> <a href="#">4</a> <a href="#">5</a> <a href="#">6</a>
				<a href="#">&raquo;</a>
			</div>
		</div>
		<!-- Modal Create-->
		<div class="modal fade" id="frmCreate" role="dialog">
			<div class="modal-dialog modal-xl modal-dialog-centered upload_weigth">
				<!-- Modal content-->
				<div class="modal-content">
					<jsp:include page="digitization_campaign_member.jsp"></jsp:include>
				</div>
			</div>
		</div>
		<div class="modal fade" id="frmUpdate" role="dialog">
			<div class="modal-dialog modal-xl modal-dialog-centered upload_weigth">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="card right">
	<div class="card-header">
		<h5 class="card-title" id="lblFunctionTitle">CẬP NHẬT TRẠNG THÁI CHIẾN DỊCH</h5>
	</div>
	<div class="card-body-from card-form">
		<div class="card-block">
			<form class="form">
				<div class="form-body">
					<div class="form-group row">
						<label class="col-sm-3 col-form-label">Mã chiến dịch</label>
						<div class="col-sm-4">
							<input type="text" class="form-control">
						</div>
						<div class="col-sm-5">
							<select id="lstEmplProvinceCont" name="lstEmplProvinceCont"
												class="form-control" onchange="changeProvince()">
												<option value="0">-- Chọn trạng thái --</option>
												<option value="0">Hoàn thành</option>
												<option value="0">Chưa hoàn thành</option>
											</select>
						</div>
					</div>
					<div class="float-right" style="top: 20px;">
						<button type="button" data-dismiss="modal" class="btn btn-warning btn-sm">Đóng</button>
						<button type="button" class="btn btn-success btn-sm">Cập nhật</button>
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