<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Management</title>
<script src=https://code.jquery.com/jquery-3.6.0.min.js></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >
</head>
<body style="background-color:#FAFAD2">
  <div align="center">
  <form action="/update" method="Post">
       <input type="hidden" name="bookId" value="${books.bookId }">
     
            <fieldset style="width: 1000px; height: 180px" class="ii">
             <legend >Edit Book Details</legend>
              <table class="table table-borderless form-control-sm-12">
			<tr>
				<td> <label for="name">Book Name  :</label>  
                   <input type="text" name="bookname" value="${books.bookname }"></td>
				<td><label for="Date">Publication Date :</label>  
                   <input type="text" name="date" id="date"  value="${books.date}" placeholder="mm/dd/yyyy"></td>
				<td> <label for="price">Price  :</label>  
                   <input type="number" name="price" value="${books.price }"> </td>
			
			</tr>
			<tr>
				<td colspan="2">
				<label for="PublisherName">Publisher Name  :</label>  
                   <select name="publish" id="publish" class=" col-sm-3" >
						<option value="">-Select-</option>
						
					<c:forEach items="${publish }" var="pubs">
                         <c:choose>
                              <c:when test="${  pubs.publisherId eq books.publish.publisherId}">
                                  <option value="${pubs.publisherId }" selected="selected">${pubs.publishername }</option>
                              </c:when>
                              <c:otherwise>
                                  <option value="${pubs.publisherId }">${pubs.publishername }</option>
                              </c:otherwise>
                       </c:choose>
                   </c:forEach>
					</select>
				</td>
				<td >
				Edition Type
                   <input type="radio" name="editionType" id="editionTypeH" value="Hardcover" 
                   <c:if test="${books.editionType=='Hardcover'}">checked="checked"</c:if>> Hardcover
					<input type="radio" name="editionType" id="editionTypeP" value="PaperBack" 
					   <c:if test="${books.editionType=='PaperBack'}">checked="checked"</c:if>> PaperBack
                </td>
				
			
			</tr>
			<tr>
			<td></td>
			<td>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="submit" value="save" id="sub" class="btn btn-success  btn-lg">  
			</td>
			<td></td>
			
			</tr>
			
		</table>
       </fieldset> 
           
										 
</form>
  </div>
</body>
</html>


 