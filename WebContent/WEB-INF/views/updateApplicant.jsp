<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<link rel='stylesheet' href='webjars/bootstrap/3.3.7/css/bootstrap.min.css'>

<body>
    <jsp:include page="../views/fragments/navbar.jsp" />
    
    <div align="center">
        <span class="badge"><h3>Please Fill the Information</h3></span>
    </div>
    <br>

    <div class="container">

        <spring:url value="/submitapplication" var="submitApplicationUrl" />
        
        <form:form class="form-horizontal" method="post"
            modelAttribute="updateMe" action="${submitApplicationUrl}">

            <form:hidden path="id" />

            <spring:bind path="name">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <label class="col-sm-2 control-label">Name</label>
                    <div class="col-sm-6">
                        <form:input path="name" type="text" class="form-control "
                            id="name" placeholder="please enter your name" />
                        <form:errors path="name" class="control-label" />
                    </div>
                </div>
            </spring:bind>
            
            <spring:bind path="city">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <label class="col-sm-2 control-label">City</label>
                    <div class="col-sm-4">
                        <form:input path="city" class="form-control" id="city"
                            placeholder="please enter your city" />
                        <form:errors path="city" class="control-label" />
                    </div>
                </div>
            </spring:bind>
            
            <spring:bind path="state">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <label class="col-sm-2 control-label">State</label>
                    <div class="col-sm-4">
                        <form:input path="state" class="form-control" id="state"
                            placeholder="please enter your state" />
                        <form:errors path="state" class="control-label" />
                    </div>
                </div>
            </spring:bind>

            <spring:bind path="email">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <label class="col-sm-2 control-label">Email</label>
                    <div class="col-sm-6">
                        <form:input path="email" class="form-control" id="email"
                            placeholder="Please Enter a Valid Email" />
                        <form:errors path="email" class="control-label" />
                    </div>
                </div>
            </spring:bind>

            <spring:bind path="phone">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <label class="col-sm-2 control-label">Phone</label>
                    <div class="col-sm-4">
                        <form:input path="phone" class="form-control" id="phone"
                             placeholder="please enter your phone number" />
                        <form:errors path="phone" class="control-label" />
                    </div>
                </div>
            </spring:bind>
            
            <spring:bind path="remark">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <label class="col-sm-2 control-label">Remark</label>
                    <div class="col-sm-10">
                        <form:textarea path="remark" rows="5"
                            class="form-control" id="address" placeholder="please add your remarks if any" />
                        <form:errors path="remark" class="control-label" />
                    </div>
                </div>
            </spring:bind>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">

       <!--  <button type="submit" class="btn-lg btn-primary btn-block">Add/Update</button> -->
       <!--  <button type="submit" class="btn-lg btn-primary pull-right">Add/Update</button> -->
			 <button type="submit" class="btn-lg btn-primary pull-left">Add/Update</button> 
       <!--	 <button type="submit" class="btn-lg btn-primary pull-center">Add/Update</button> -->
											
                </div>
          	</div>
       </form:form>
   
    <spring:url value="/apply" var="applyUrl" />
   <form:form class="form-horizontal" method="get"
            modelAttribute="anyname" action="${applyUrl}">
    
			<div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
         			<button type="submit" class="btn-lg btn-default btn-left">Reset</button> 
				</div>
            </div>
        </form:form>
    
   </div> 
    

  
    
	<script type="text/javascript" src="webjars/jquery/1.11.1/jquery.min.js"></script>
	<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
    <%-- <jsp:include page="../views/fragments/footer.jsp" /> --%>
</body>
</html>
