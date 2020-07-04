<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Material tab card start -->
<div class="card">
	<div class="card-header">
		<h5>HỒ SƠ CẦN HIỆU CHỈNH</h5>
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
					<th>Người tải lên</th>
					<th>Ngày tải lên</th>
					<th>Đường dẫn offline</th>
					<th>Đường dẫn online</th>
					<th>Trạng thái</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>1</th>
					<td>001</td>
					<td>Nguyễn Văn A</td>
					<td>22/08/1923</td>
					<td>Nam</td>
					<td>Gia An - Gia Viễn - Ninh Bình</td>
					<td class="text-center"><a class="delete"
						data-toggle="modal"> <i class="fa fa-edit" title="Hiệu chỉnh"
							data-toggle="modal" data-target="#frmData"
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
		<div class="modal fade" id="frmData" role="dialog">
			<div class="modal-dialog min-width-form modal-xl modal-dialog-centered">
				<!-- Modal content-->
				<div class="modal-content">
					<jsp:include page="martyr_data_form.jsp"></jsp:include>
				</div>
			</div>
		</div>

	</div>
</div>