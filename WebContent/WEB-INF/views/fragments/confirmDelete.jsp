
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Modal Dialog -->

<div id="mymodal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h3 class="modal-title">Confirm Deletion</h3>
            </div>
            <div class="modal-body">
                <p>Do you want to  permanently delete the item ?</p>
                <br>
                <p class="text-warning"><small>Deleted itmes are not recoverable.</small></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                
                <c:forEach var="volunteer" items="${myVolunteers}">
                <spring:url value="/applicant/${volunteer.id}/delete" var="deleteUrl" />
                <button  class="btn btn-primary" onclick="location.href='${deleteUrl}'" >Delete</button>
           		 </c:forEach>	
            </div>
        </div>
    </div>
</div>

