<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page For Startup Question Audit</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="logo_header.css">
</head>
<script type="text/javascript">
	var element = document.getElementById('#id');
</script>
<body class="bg-light">

	<c:if test="${ not empty msg}">
		<script>
			alert("<c:out value="${msg}" />")
		</script>
	</c:if>
	<div class="container">
		<div class="card mt-5 p-4 mb-5">
			<%@ include file="logo_header.jsp"%>
			<h4 class="text-center">Question Category</h4>
			<form action="searchquestion" method="post">
				<div class="form-group">
					<label for="processarea">Select Process Area</label> <select
						class="form-control" name="processarea" id="processarea" required>
						<option value="">Select a Process Area</option>
						<option value="Idea_Management">Idea Management</option>
						<option value="Knowledge_Management">Knowledge Management</option>
						<option value="Research_Management">Research Management</option>
						<option value="Entrepreneur_Management">Entrepreneur
							Management</option>
						<option value="Contract_Management">Contract Management</option>
						<option value="Delivery_Management">Delivery Management</option>
						<option value="Support_Management">Support Management</option>
						<option value="Social_Responsibility_Management">Social
							Responsibility Management</option>
						<option value="Scope_Management">Scope Management</option>
						<option value="Finance_Management">Finance Management</option>
						<option value="Project_Management">Project Management</option>
						<option value="Integration_Management">Integration
							Management</option>
						<option value="Operations_Management">Operations
							Management</option>
						<option value="HR_Management">HR Management</option>
						<option value="Security_Management">Security Management</option>
						<option value="Process_Management">Process Management</option>
						<option value="Innovation_Management">Innovation
							Management</option>
						<option value="Compliance_Management">Compliance
							Management</option>
						<option value="Technology_Transfer_Management_Perspective">Technology
							Transfer Management Perspective</option>
						<option value="Risk_Management">Risk Management</option>
						<option value="Governance_Management">Governance
							Management</option>
						<option value="Capacity_Management">Capacity Management</option>
						<option value="Infrastructure_Management">Infrastructure
							Management</option>
						<option value="Mergers_and_Acquisition_Management">Mergers
							and Acquisition Management</option>
						<option value="Performance_Management">Performance
							Management</option>
						<option value="Partnership_Management">Partnership
							Management</option>
						<option value="IPO_Management">IPO Management</option>
					</select>
				</div>
				<div class="form-group">
					<label for="inputfield">Question Category</label> <input
						type="text" class="form-control" name="questioncategory"
						id="inputfield" required>
				</div>
				<div class="container text-center mt-4 mb-5">
					<a href="Home.jsp" class="btn btn-secondary">&nbsp;&nbsp;Back&nbsp;&nbsp;</a>
					<input type="submit" class="btn btn-primary" value="Search">
				</div>
			</form>
			<table
				class="table table-responsive border border-color-red bg-light mt-3">
				<thead>
					<tr>
						<th scope="col">Sr. No.</th>
						<th scope="col">Question</th>
						<th scope="col">Max</th>
						<th scope="col">Weight</th>
						<th scope="col">Actual Score</th>
						<th scope="col">Remark</th>

						<th scope="col">Download</th>

					</tr>
				</thead>
				<tbody>
					<c:forEach items="${startupAuditsview }" var="startupAudit">
						<form action="updateauditrow" method="post"
							enctype="multipart/form-data">
							<tr>
								<td><input type="text" name="srno"
									value="${startupAudit.audit_srno }" class="form-control"
									readonly></td>
								<td><textarea name="question" class="form-control" readonly>${startupAudit.question }</textarea></td>
								<td><input type="text" name="maxscore"
									value="${startupAudit.maxscore }" class="form-control" readonly></td>
								<td><input type="text" name="weight"
									value="${startupAudit.weight }" class="form-control" readonly></td>
								<td><input type="text" name="actualscore"
									value="${startupAudit.actualscore }" class="form-control"
									readonly></td>
								<td><textarea name="remark" class="form-control" readonly>${startupAudit.remark }</textarea></td>

								<td><c:if test="${ not empty startupAudit.evidenceupload }">
										<a
											href="<%=request.getContextPath()%>/${startupAudit.audit_srno }/${startupAudit.evidenceupload }"
											class="btn btn-outline-warning mt-3" download>Download</a>
									</c:if></td>

							</tr>
						</form>
					</c:forEach>

				</tbody>
			</table>
		</div>
	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>

</body>
</html>
