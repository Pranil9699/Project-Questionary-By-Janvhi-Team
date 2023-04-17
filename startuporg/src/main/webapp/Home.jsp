<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Question Category Master</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="logo_header.css">
</head>
<body class="bg-light">
	<div class="container">

		<div class="card mt-5 p-4 mb-5">
			
			<%@ include file="logo_header.jsp" %>
			
			<div class="row justify-content-center">
				<div class="col-md-8 col-lg-12 p-3">
					<h3 class="text-center">Question Category</h3>
					<div class="d-flex justify-content-center  container mt-5">
						<a href="first.jsp" class="btn btn-primary">Create New</a> <a
							href="view.jsp" class="btn  btn-secondary">&nbsp;View&nbsp;</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
