<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>

<%@ page isELIgnored="false"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Forget Password</title>
<style>
#btn {
	width: 150px;
	height: 50px;
	margin: 0 auto;
	vertical-align: middle;
}
</style>
</head>
<body class="img-responsive"
	background="/Project-0/resources/image/IMG/611115.jpg"
	style="background-repeat: no-repeat; background-size: 100% 100%;">

	<br>

	<sf:form method="post" commandName="form">
		<div class="container-fluid">
			<div class="row" style="height: 1000px;">
				<div class="col-xs-12 col-md-6 col-sm-12 col-lg-4 col-md-offset-4">
					<div class="panel panel-primary"
						style="margin-top: 10px; background-color: #DCDCDC;">
						<div class="panel-heading" style="background-color: darksalmon"
							align="center">

							<center>
								<button type="button" class="btn btn-primary btn-lg" id="btn">
									<a href="<c:url value="/Login"></c:url>" style="color: white;"><s:message
											code="label.loginkaro"></s:message></a>
								</button>
								<button type="button" class="btn btn-primary btn-lg" id="btn">
									<a href="<c:url value="/UserRegistration"></c:url>"
										style="color: white; text-align: center;"><s:message
											code="label.signupkaro"></s:message></a>
								</button>
							</center>

						</div>

						<div class="panel-body">

							<div align="center">
								<c:if test="${not empty success }">
									<div class="alert alert-success" role="alert"
										style="width: 35%; margin-left: 0%; font-size: 136%; margin-bottom: 5px;">
										<b><b class="success">${success}</b></b>
									</div>
								</c:if>
								<c:if test="${not empty error }">
									<div class="alert alert-danger" role="alert"
										style="width: 35%; margin-left: 0%; font-size: 140%; margin-bottom: 5px;">
										<b><b class="error">${error}</b></b>
									</div>
								</c:if>

								<c:if test="${!empty message}">
									<div class="alert alert-danger" role="alert"
										style="width: 35%; margin-left: 0%; font-size: 150%;">
										<b class="error"><s:message code="frontcontroller.message"></s:message>
										</b>
									</div>
								</c:if>

							</div>

							<br>

							<legend align="center">
								<font size="5"><b><s:message
											code="label.forgetYourPassword" /></b></font>
							</legend>
							<div class="col-xs-12 col-sm-12 col-md-10 col-lg-12">
								<div class="form-group">
									<h4 align="center">
										<i><s:message code="label.message" /></i>
									</h4>
								</div>

								<div class="form-group" align="left">
									<s:message code="login.placholder.email" var="email"></s:message>
									<label for="username-email"><s:message
											code="label.loginId" /></label><font color="red"> *</font>
									<div class="input-group">
										<span class="input-group-addon"><i
											class="glyphicon glyphicon-user"></i></span>

										<sf:input path="login" class="form-control" name="login"
											placeholder="${email}" />
									</div>
									<font color="red"><sf:errors path="login"
											cssClass="error" /></font>
								</div>

								<div class="form-group text-center">

									<button type="submit" class="btn btn-success" name="operation"
										value="SignIn">
										<s:message code="button.go"></s:message>
									</button>

									<button type="submit" class="btn btn-warning" name="operation"
										value="Reset">
										<s:message code="button.reset"></s:message>
									</button>

								</div>
							</div>
						</div>
					</div>

				</div>
	</sf:form>

</body>
</html>

