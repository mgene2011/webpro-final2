<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<script type="text/javascript" defer="defer">
function fn_egov_save() {	
	frm = document.getElementById("detailForm");

	/* TODO Validation기능 보완 */
	
  	frm.action = "<c:url value='/student/addStudent.do' />";
    frm.submit();

}
</script>
</head>
<body>

<form:form commandName="studentVO" name="detailForm" id="detailForm" >
	<form:input path="number" cssClass="txt"/>
	<form:input path="name" cssClass="txt"/>
	<a href="javascript:fn_egov_save();">등록</a>
</form:form>
</body>
</html>

