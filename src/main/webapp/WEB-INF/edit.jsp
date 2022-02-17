<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css" />
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>
	<form:form action="/expenses/${expense.id}" method="POST"
		modelAttribute="expense">
		<input type="hidden" name="_method" value="put">
		<div class="mb-3">
			<form:label path="name" for="formInput" class="form-label">Expense Name:</form:label>
			<form:input type="text" class="form-control" id="formInput"
				path="name" />
			<form:errors path="name" class="text-danger" />
		</div>
		<div class="mb-3">
			<form:label path="vendor" for="formInput" class="form-label">Vendor:
                    </form:label>
			<form:input type="text" class="form-control" id="formInput"
				path="vendor" placeholder="" />
			<form:errors path="vendor" class="text-danger" />
		</div>
		<div class="mb-3">
			<form:label path="amount" for="formInput" class="form-label">Amount:
                    </form:label>
			<form:input type="amount" class="form-control" id="formInput"
				path="amount" placeholder="" />
			<form:errors path="amount" class="text-danger" />
		</div>
		<div class="mb-3">
			<form:label path="description" for="formControlTextarea"
				class="form-label">
                      Description:</form:label>
			<form:textarea path="description" class="form-control"
				id="formControlTextarea" rows="3" />
			<form:errors path="description" class="text-danger" />
		</div>
		<div class="d-flex justify-content-end">
			<input type="submit" value="Submit" class="btn submit-btn">
		</div>
	</form:form>
</body>
</html>