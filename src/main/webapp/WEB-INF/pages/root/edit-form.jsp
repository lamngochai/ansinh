<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="card right">
	<div class="card-header">
		<h5 class="card-title" id="lblFunctionTitle">DUYỆT HỒ SƠ</h5>
	</div>
	<div class="card-body-from card-form">
		<div class="card-block">
			<form class="form">
				<div class="form-body">
					<div class="row">
						<div class="col-md-6">
							<ul class="nav nav-tabs md-tabs" role="tablist">
								<li class="nav-item"><a class="nav-link active"
									data-toggle="tab" href="#liet_si" role="tab">Liệt sĩ</a>
									<div class="slide"></div></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#ho_so" role="tab">Hồ sơ</a>
									<div class="slide"></div></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#hoat_dong" role="tab">Hoạt động</a>
									<div class="slide"></div></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#hy_sinh" role="tab">Hy sinh</a>
									<div class="slide"></div></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#than_nhan" role="tab">Thân nhân</a>
									<div class="slide"></div></li>
							</ul>
							<!-- Tab panes -->
							<div class="tab-content card-block">
								<div class="tab-pane active" id="liet_si" role="tabpanel">
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Họ và Tên</label>
										<div class="col-sm-10">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Bí danh</label>
										<div class="col-sm-4">
											<input type="text" class="form-control">
										</div>
										<label class="col-sm-2 col-form-label">Dân tộc</label>
										<div class="col-sm-4">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Ngày sinh</label>
										<div class="col-sm-4">
											<input type="date" class="form-control">
										</div>
										<label class="col-sm-2 col-form-label">Giới tính</label>
										<div class="col-sm-4">
											<select id="lstEmplSex" name="lstEmplSex"
												class="form-control">
												<option value="0">-- Chọn Giới tính --</option>
												<option value="1">Nam</option>
												<option value="2">Nữ</option>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Nguyên quán</label>
										<div class="col-sm-4">
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
										<div class="col-sm-3">
											<select id="lstEmplDistrictCont" name="lstEmplDistrictCont"
												class="form-control" onchange="changeDistrict()">
												<option value="0">-- Chọn Quận/Huyện --</option>
											</select>
										</div>
										<div class="col-sm-3">
											<select id="lstEmplWardCont" name="lstEmplWardCont"
												class="form-control ">
												<option value="0">-- Chọn Xã/Phường --</option>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label"></label>
										<div class="col-sm-10">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Trú quán</label>
										<div class="col-sm-4">
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
										<div class="col-sm-3">
											<select id="lstEmplDistrictCont" name="lstEmplDistrictCont"
												class="form-control" onchange="changeDistrict()">
												<option value="0">-- Chọn Quận/Huyện --</option>
											</select>
										</div>
										<div class="col-sm-3">
											<select id="lstEmplWardCont" name="lstEmplWardCont"
												class="form-control ">
												<option value="0">-- Chọn Xã/Phường --</option>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label"></label>
										<div class="col-sm-10">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Số CCCD</label>
										<div class="col-sm-10">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Ngày cấp</label>
										<div class="col-sm-4">
											<input type="date" class="form-control">
										</div>
										<label class="col-sm-2 col-form-label">Nơi cấp</label>
										<div class="col-sm-4">
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
								</div>
								<div class="tab-pane" id="ho_so" role="tabpanel">
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Ngày nhập</label>
										<div class="col-sm-10">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Số hồ sơ</label>
										<div class="col-sm-10">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Nơi quản lý</label>
										<div class="col-sm-4">
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
										<div class="col-sm-3">
											<select id="lstEmplDistrictCont" name="lstEmplDistrictCont"
												class="form-control" onchange="changeDistrict()">
												<option value="0">-- Chọn Quận/Huyện --</option>
											</select>
										</div>
										<div class="col-sm-3">
											<select id="lstEmplWardCont" name="lstEmplWardCont"
												class="form-control ">
												<option value="0">-- Chọn Xã/Phường --</option>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Số hồ sơ bộ
											quản lý</label>
										<div class="col-sm-10">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Nguồn gốc</label>
										<div class="col-sm-10">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Năm chuyển đến</label>
										<div class="col-sm-10">
											<input type="date" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Người chuyển</label>
										<div class="col-sm-10">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Ghi chú</label>
										<div class="col-sm-10">
											<input type="text" class="form-control">
										</div>
									</div>
								</div>
								<div class="tab-pane" id="hoat_dong" role="tabpanel">
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Cấp bậc</label>
										<div class="col-sm-4">
											<select id="lstEmplSex" name="lstEmplSex"
												class="form-control">
												<option value="0">-- Chọn cấp bậc --</option>

											</select>
										</div>
										<label class="col-sm-2 col-form-label">Chức vụ</label>
										<div class="col-sm-4">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Đơn vị</label>
										<div class="col-sm-4">
											<input type="text" class="form-control">
										</div>
										<label class="col-sm-2 col-form-label">Ngày nhập ngũ</label>
										<div class="col-sm-4">
											<input type="date" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Ngày hy sinh</label>
										<div class="col-sm-4">
											<input type="date" class="form-control">
										</div>
										<label class="col-sm-2 col-form-label">Bằng TQGC</label>
										<div class="col-sm-4">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Quyết định</label>
										<div class="col-sm-4">
											<input type="text" class="form-control">
										</div>
										<label class="col-sm-2 col-form-label">Ngày cấp QĐ</label>
										<div class="col-sm-4">
											<input type="date" class="form-control">
										</div>
									</div>
								</div>
								<div class="tab-pane" id="hy_sinh" role="tabpanel">
									<div class="form-group row">
										<label class="col-sm-4 col-form-label">Nơi hy sinh</label>
										<div class="col-sm-8">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 col-form-label">Trường hợp</label>
										<div class="col-sm-8">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 col-form-label">Đối tượng</label>
										<div class="col-sm-8">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 col-form-label">Thời kỳ</label>
										<div class="col-sm-8">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 col-form-label">Thông tin mộ</label>
										<div class="col-sm-8">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 col-form-label">An táng</label>
										<div class="col-sm-8">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 col-form-label">Giấy báo tử</label>
										<div class="col-sm-8">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 col-form-label">Nơi cấp</label>
										<div class="col-sm-8">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 col-form-label">Ngày cấp</label>
										<div class="col-sm-8">
											<input type="date" class="form-control">
										</div>
									</div>
								</div>
								<div class="tab-pane" id="than_nhan" role="tabpanel">
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Họ tên</label>
										<div class="col-sm-10">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Quân hệ</label>
										<div class="col-sm-4">
											<input type="text" class="form-control">
										</div>
										<label class="col-sm-2 col-form-label">Năm sinh</label>
										<div class="col-sm-4">
											<input type="date" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Chỗ ở hiện tại</label>
										<div class="col-sm-4">
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
										<div class="col-sm-3">
											<select id="lstEmplDistrictCont" name="lstEmplDistrictCont"
												class="form-control" onchange="changeDistrict()">
												<option value="0">-- Chọn Quận/Huyện --</option>
											</select>
										</div>
										<div class="col-sm-3">
											<select id="lstEmplWardCont" name="lstEmplWardCont"
												class="form-control ">
												<option value="0">-- Chọn Xã/Phường --</option>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label"></label>
										<div class="col-sm-10">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Số trợ cấp</label>
										<div class="col-sm-4">
											<input type="text" class="form-control">
										</div>
										<label class="col-sm-2 col-form-label">Ngày cấp</label>
										<div class="col-sm-4">
											<input type="date" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Cơ quan</label>
										<div class="col-sm-10">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Tình trạng</label>
										<div class="col-sm-4">
											<input type="text" class="form-control">
										</div>
										<label class="col-sm-2 col-form-label">Số chứng tử</label>
										<div class="col-sm-4">
											<input type="date" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Cơ quan cấp
											chứng tử</label>
										<div class="col-sm-10">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Người mai táng</label>
										<div class="col-sm-4">
											<input type="text" class="form-control">
										</div>
										<label class="col-sm-2 col-form-label">Quan hệ</label>
										<div class="col-sm-4">
											<input type="date" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Chỗ ở hiện tại</label>
										<div class="col-sm-4">
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
										<div class="col-sm-3">
											<select id="lstEmplDistrictCont" name="lstEmplDistrictCont"
												class="form-control" onchange="changeDistrict()">
												<option value="0">-- Chọn Quận/Huyện --</option>
											</select>
										</div>
										<div class="col-sm-3">
											<select id="lstEmplWardCont" name="lstEmplWardCont"
												class="form-control ">
												<option value="0">-- Chọn Xã/Phường --</option>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label"></label>
										<div class="col-sm-10">
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Số tiền MTP</label>
										<div class="col-sm-10">
											<input type="text" class="form-control">
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<iframe
								src="${pageContext.request.contextPath}/uploads/my-file.pdf"
								width="100%" height="100%"></iframe>

						</div>
					</div>
					<div class="float-right" style="padding-top: 20px;">
						<button type="button" data-dismiss="modal" class="btn btn-primary btn-sm">Đóng</button>
						<button type="button" class="btn btn-primary btn-sm">Duyệt Hồ Sơ</button>
						<button type="button" class="btn btn-primary btn-sm">Trả Hồ Sơ</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>