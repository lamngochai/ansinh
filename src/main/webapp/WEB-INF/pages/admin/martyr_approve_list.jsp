<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Material tab card start -->
<div class="card">
	<div class="card-header">
		<h5>HỒ SƠ CHƯA DUYỆT</h5>
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
					<th>Số hồ sơ</th>
					<th>Họ và tên</th>
					<th>Ngày sinh</th>
					<th>Giới tính</th>
					<th>Địa chỉ</th>
					<th>Nguyên quán</th>
					<th>Trạng thái</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>1</th>
					<td>0001</td>
					<td>Nguyễn Văn A</td>
					<td>22/09/1956</td>
					<td>Nam</td>
					<td>Xóm Hạ - Nam Tân - Nam Trực - Nam Định</td>
					<td>Xóm Hạ - Nam Tân - Nam Trực - Nam Định</td>
					<td class="text-center"><a href="#deleteEmployeeModal"
						data-toggle="modal"> <i class="fa fa-edit approve" title="Duyệt hồ sơ"
							data-toggle="modal" data-target="#frmCreate"
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
			<div class="modal-dialog min-width-form modal-xl modal-dialog-centered">
				<!-- Modal content-->
				<div class="modal-content">
					<jsp:include page="edit-form.jsp"></jsp:include>
				</div>
			</div>
		</div>

	</div>
</div>