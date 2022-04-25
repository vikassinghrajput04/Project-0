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
<title>Login</title>
<style type="text/css">
body {
	background-image: url("/Project-0/resources/image/IMG/611115.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: center;
}
#btn{
    width: 150px;
    height: 50px;
    margin: 0 auto;
    vertical-align: middle;
}
</style>
</head>
<body>
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
								<c:if test="${not empty error }">
									<div class='container-fluid' style="height: 60px;">
										<div class="alert alert-danger" role="alert"
											style="width: 90%; margin-left: 0%; font-size: 150%">
											<Strong>${error} </Strong>
										</div>
									</div>
								</c:if>
								<c:if test="${not empty success }">
									<div class='container-fluid' style="height: 60px;">
										<div class="alert alert-success" role="alert"
											style="width: 90%; margin-left: 0%; font-size: 140%;">
											<Strong>${success} </Strong>
										</div>
									</div>
								</c:if>
							</div>
							 <br>
							<legend align="center">
								<font size="5"><b><s:message
											code="label.login.account"></s:message></b></font>
							</legend>
							<br>
							<div class="col-xs-12 col-sm-12 col-md-10 col-lg-12">

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

							<s:message code="label.password" var="password"></s:message>
							<div class="form-group" align="left">
								<label for="password"><s:message code="label.password" /></label><font
									color="red"> *</font>
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-lock"></i></span>
									<sf:password path="password" placeholder="${password}"
										class="form-control" />

								</div>
								<font color="red"><sf:errors path="password"
										cssClass="error" /></font>
							</div>

							<div class="form-group text-center">
								<button type="submit" class="btn btn-success" name="operation"
									value="SignIn"  id="btn">
									<s:message code="login.lebel.signIn"></s:message>
								</button>

								<button class="btn btn-warning"  id="btn">
									<a href="<c:url value="/Login"></c:url>" style="color: white;">
										<s:message code="button.reset"></s:message>
									</a><br>
								</button>
								
								<br><br>
								<div class="form-group" align="center">
									<a href="<c:url value="/ForgetPassword"></c:url>"> <b><font
											size="3"><u><s:message
														code="login.lebel.forgetMyPassword"></s:message></u></font></b></a>
								</div>

							</div>
						</div>
					</div>
				</div>

			</div>
			<style>
.c1 {
	border-width: 5px;
	border-style: ridge;
	border-radius: 25px;
}

.btn {
	padding: 20px;
}

.card {
	background-color: #ECEFF1;
}

body {
	background-image: url
		"/ORSProject0/resources/image/200612-dsg-workshop.jpg")
}
</style>
	</sf:form>

</body>
</html>


