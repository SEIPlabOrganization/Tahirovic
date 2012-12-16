<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create final report</title>
</head>
<body>
<h1>Create Final Report</h1>

<table border="0" align="center">
		<form action="CreateFinalReportSerlet" method="POST">
			<tr><td align="right">Project progress:</td><td><input type="text" size="67" name="projectprocess"></td></tr>
			<tr><td align="right">Project disadvantges:</td><td><input type="text" size="67" name="projectDisadvantages"></td></tr>
			<tr><td align="right">Project advantegs:</td><td><textarea rows="4" cols="50" name="advantages"></textarea></td></tr>
			<tr><td align="right">Future project improvement:</td><td><textarea rows="4" cols="50" name="future"></textarea></td></tr>
			<tr><td align="right">Conclusion:</td><td><textarea rows="4" cols="50" name="conclusion"></textarea></td></tr>
			<tr><td align="right"><input type="submit" value="Create!" /></td></tr>
		</form>
	</table>
</body>
</html>