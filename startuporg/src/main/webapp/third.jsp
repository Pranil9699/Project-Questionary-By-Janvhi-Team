<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="logo_header.css">
</head>

<body class="">
	<c:if test="${ not empty msg}">
		<script>
			alert("<c:out value="${msg}" />")
		</script>
	</c:if>
	<div class="container mt-3">

		<div class="card-body border border-black">
<%@ include file="logo_header.jsp" %>

			<div class="card-body p-2">
				<header class="header text-center display-6">Startup-Audit</header>
				<form action="updateaudit" method="post">
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="auditDate" class="form-label">Audit Date</label>
							<c:if test="${not empty auditdate }">
								<input type="text" class="form-control" id="auditDate"
									placeholder="Audit Date" value="<c:out value="${auditdate}"/>"
									readonly>
							</c:if>
							<c:if test="${empty auditdate }">
								<input type="date" class="form-control" id="auditDate"
									placeholder="Audit Date" value="" name="auditdate">
							</c:if>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="auditorTeam" class="form-label">Auditor Team</label>
							<c:if test="${not empty Auditor_Team }">
								<input type="text" class="form-control" id="auditorTeam"
									placeholder="Auditor Team"
									value="<c:out value="${Auditor_Team}"/>" readonly>
							</c:if>

							<c:if test="${empty Auditor_Team }">
								<input type="text" class="form-control" name="Auditor_Team"
									id="auditorTeam" placeholder="Auditor Team" value="">
							</c:if>
						</div>
						<div class="col-md-6 mb-3">
							<label for="auditee" class="form-label">Auditee</label>
							<c:if test="${not empty Auditee }">
								<input type="text" class="form-control" id="auditee"
									placeholder="Auditee" value="<c:out value="${ Auditee}" />"
									readonly>
							</c:if>
							<c:if test="${ empty Auditee }">
								<input type="text" class="form-control" id="auditee"
									name="Auditee" placeholder="Auditee" value="">
							</c:if>
						</div>
					</div>

					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="processArea" class="col-form-label">Process
								Area</label>
							<c:if test="${not empty processarea }">

								<input type="text" class="form-control form-control-green"
									id="processArea" placeholder="Process Area"
									value="<c:out value="${ processarea}" />" readonly>
							</c:if>
							<c:if test="${ empty processarea }">
								<input type="text" class="form-control form-control-green"
									name="processarea" id="processArea" placeholder="Process Area"
									value="">
							</c:if>
						</div>
						<div class="col-md-6 mb-3">
							<label for="questionCategory" class="col-form-label">Question
								Category</label>
							<c:if test="${not empty questioncategory }">
								<input type="text" class="form-control form-control-blue"
									id="questionCategory" placeholder="Question Category"
									value="<c:out value="${ questioncategory}"/>" readonly>
							</c:if>
							<c:if test="${ empty questioncategory }">
								<input type="text" class="form-control form-control-blue"
									id="questionCategory" placeholder="Question Category"
									name="questioncategory">
							</c:if>
						</div>

					</div>
					<div class="text-center mt-2 mb-2">
						<input type="submit" value="Save" class="btn btn-outline-success">
						<a href="Home.jsp" class="btn btn-outline-warning">Goto Home</a>
					</div>
				</form>

				<table class="table table-responsive border border-color-red">
					<thead>
						<tr>
							<th scope="col">Sr. No.</th>
							<th scope="col">Question</th>
							<th scope="col">Max</th>
							<th scope="col">Weight</th>
							<th scope="col">Actual Score</th>
							<th scope="col">Remark</th>
							<th scope="col">Evidence Upload</th>
							<th scope="col">Download</th>
							<th scope="col"></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${startupAudits }" var="startupAudit">
							<form action="updateauditrow" method="post"
								enctype="multipart/form-data">
								<tr>
									<td><input type="text" name="srno"
										value="${startupAudit.audit_srno }" class="form-control"
										readonly></td>
									<td><textarea  name="question"
										 class="form-control"
										readonly>${startupAudit.question }</textarea></td>
									<td><input type="text" name="maxscore"
										value="${startupAudit.maxscore }" class="form-control"
										readonly></td>
									<td><input type="text" name="weight"
										value="${startupAudit.weight }" class="form-control" readonly></td>
									<td><input type="text" name="actualscore"
										value="${startupAudit.actualscore }" class="form-control"></td>
									<td><textarea  name="remark"
										class="form-control">${startupAudit.remark }</textarea></td>
									<td><input type="file" name="eupload" class="form-control mt-3">
									</td>
									<td><c:if
											test="${ not empty startupAudit.evidenceupload }">
											<a href="<%=request.getContextPath()%>/${startupAudit.audit_srno }/${startupAudit.evidenceupload }"
												class="btn btn-outline-warning mt-3" download>Download</a>
										</c:if></td>
									<td><button type="submit" class="btn btn-primary mt-3" >Save</button></td>
								</tr>
							</form>
						</c:forEach>
						<!-- Add more rows using JavaScript to dynamically generate the table -->
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>

</html>