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
					<th>Ngày hiệu chỉnh</th>
					<th>Đường dẫn offline</th>
					<th>Đường dẫn online</th>
					<th>Tỉnh thành</th>
					<th>Trạng thái</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>1</th>
					<td>001</td>
					<td>Nguyễn Bá Linh</td>
					<td>22/08/2020</td>
					<td>Chưa hiệu chỉnh</td>
					<td>/opt/apps/upload/abc.pdf</td>
					<td>http://localhost:8080/AnSinh/upload/abc.pdf</td>
					<td>Nam định</td>
					<td class="text-center"><a
						data-toggle="modal"> <i class="fas fa-check-circle not-approve" title="Chưa được hiệu chỉnh"
							data-toggle="modal" data-target="#frmData"
							data-backdrop="static" data-keyboard="false"></i>
					</a></td>
				</tr>
				<tr>
					<th>1</th>
					<td>002</td>
					<td>Nguyễn Bá Linh</td>
					<td>22/08/2020</td>
					<td>22/08/2020</td>
					<td>/opt/apps/upload/abe.pdf</td>
					<td>http://localhost:8080/AnSinh/upload/abe.pdf</td>
					<td>Nam định</td>
					<td class="text-center"><a
						data-toggle="modal"> <i class="fas fa-check-circle approve" title="Đã được hiệu chỉnh"
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
					<jsp:include page="rude_data_form.jsp"></jsp:include>
				</div>
			</div>
		</div>

	</div>
</div>