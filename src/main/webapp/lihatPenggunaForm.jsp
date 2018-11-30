
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<script>
	$(function() {
		var check = $('#lihat').val();
		if (check > 0) {

			$('#modal-lihatPenggunaForm').modal('show');
		}
	});
</script>
<div class="modal fade" id="modal-lihatPenggunaForm">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">Kemaskini Pengguna</h4>
			</div>
			<form:form method="POST" modelAttribute="lihatPenggunaForm"
				action="${contextPath}/daftarPengguna" class="form-horizontal">
				<div class="modal-body">

					<spring:bind path="id">
						<form:input type="hidden" class="form-control" path="id"
							id="lihat"></form:input>
					</spring:bind>
					<div class="box-body">
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">Nombor
								Staf</label>

							<div class="col-sm-4">
								<spring:bind path="staffNo">
									<form:input type="text" class="form-control" path="staffNo"
										placeholder="Staf No"></form:input>
								</spring:bind>
							</div>
							<label for="inputEmail3" class="col-sm-2 control-label">Nama
								Pengguna</label>

							<div class="col-sm-4">
								<spring:bind path="username">
									<form:input type="text" class="form-control" path="username"
										placeholder="Nama Pengguna"></form:input>
								</spring:bind>
							</div>

						</div>


						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">Nama</label>

							<div class="col-sm-4">
								<spring:bind path="namaStaff">
									<form:input type="text" class="form-control" path="namaStaff"
										placeholder="Nama Staf"></form:input>
								</spring:bind>
							</div>
							<label for="inputEmail3" class="col-sm-2 control-label">Nama
								Pengurus</label>

							<div class="col-sm-4">
								<spring:bind path="namaPengurus">
									<form:input type="text" class="form-control"
										path="namaPengurus" placeholder="Nama Pengurus"></form:input>
								</spring:bind>
							</div>
						</div>

						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">No.
								KP</label>

							<div class="col-sm-4">
								<spring:bind path="noKP">
									<form:input type="text" class="form-control" path="noKP"
										placeholder="Nombor Kad Pengenalan"></form:input>
								</spring:bind>
							</div>
							<label class="col-sm-2 control-label">Passport</label>

							<div class="col-sm-4">
								<spring:bind path="passport">
									<form:input type="text" class="form-control" path="passport"
										placeholder="No Passport"></form:input>
								</spring:bind>
							</div>

						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">Emel</label>

							<div class="col-sm-4">
								<spring:bind path="email">
									<form:input type="text" class="form-control" path="email"
										placeholder="email(exp:xxx@yahoo.com)"></form:input>
								</spring:bind>
							</div>
							<label class="col-sm-2 control-label">No. Telefon Bimbit</label>

							<div class="col-sm-4">
								<spring:bind path="noTelefon">
									<form:input type="text" class="form-control" path="noTelefon"
										placeholder="No telefon Bimbit"></form:input>
								</spring:bind>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Jawatan</label>

							<div class="col-sm-4">
								<form:select path="Jawatan" class="form-control">
									<option></option>
									<option>Pegawai</option>
									<option>Ketua Pegawai</option>
									<option>Pentadbir</option>
									<option>Pengarah</option>
								</form:select>
							</div>
							<label class="col-sm-2 control-label">Status</label>

							<div class="col-sm-4">
								<form:select path="status" class="form-control">
									<option></option>
									<option>Aktif</option>
									<option>Tidak Aktif</option>
								</form:select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Cawangan</label>

							<div class="col-sm-4">
								<spring:bind path="cawangan">
									<form:input type="text" class="form-control" path="cawangan"
										placeholder="Cawangan"></form:input>
								</spring:bind>
							</div>

							<label class="col-sm-2 control-label">Unit / Bahagian</label>

							<div class="col-sm-4">
								<spring:bind path="unit">
									<form:input type="text" class="form-control" path="unit"
										placeholder="Unit"></form:input>
								</spring:bind>
							</div>
						</div>
					</div>
				</div>
		</div>

		<!-- /.box-body -->
		</form:form>

		<!-- /.box-footer -->
	</div>
</div>
<!-- /.modal-content -->
</div>
<!-- /.modal-dialog -->
</div>