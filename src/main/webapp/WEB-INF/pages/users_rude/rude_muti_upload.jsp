<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="card right">
	<div class="card-header">
		<h5 class="card-title" id="lblFunctionTitle">UPLOAD NHIỀU DỮ LIỆU</h5>
	</div>
	<div class="card-body-from card-form">
		<div class="card-block">
			<form class="form" method="POST" enctype="multipart/form-data" id="fileUploadForm">
				<div class="form-body">
				<div class="form-group row">
				<div class="col-sm-12">
										<select id="lstEmplProvinceCont" name="lstEmplProvinceCont"
												class="form-control" onchange="changeProvince()">
												<option value="0">-- Chọn Tỉnh/Thành Phố --</option>
												<c:forEach items="${listProvince}" var="province">
													<option value="${province.provinceId}"
														<c:if test="${province.provinceId eq selectedCatId}">selected="selected"</c:if>>${province.province}
													</option>
												</c:forEach>
											</select>
											</div>
									</div>
						<div class="form-group row">
										<div class="col-sm-12">
											<input type="file" name="files"class="form-control"/>
										</div>
									</div>
									<div class="form-group row">
										<div class="col-sm-12">
											<input type="file" name="files"class="form-control"/>
										</div>
									</div>
									<div class="form-group row">
										<div class="col-sm-12">
											<input type="file" name="files"class="form-control"/>
										</div>
									</div>
									<div class="form-group row">
										<div class="col-sm-12">
											<input type="file" name="files"class="form-control"/>
										</div>
									</div>
									<div class="form-group row">
										<div class="col-sm-12">
											<input type="file" name="files"class="form-control"/>
										</div>
									</div>
					<div class="float-right" style="top: 20px;">
						<button type="button" data-dismiss="modal" class="btn btn-primary btn-sm">Đóng</button>
						<button type="button" class="btn btn-primary btn-sm" onclick="ajaxSubmitForm()">Upload</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>