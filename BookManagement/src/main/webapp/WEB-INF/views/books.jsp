<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@page import="java.util.*"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Management</title>
<script type="text/javascript">

</script>
<script src=https://code.jquery.com/jquery-3.6.0.min.js></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >
</head>
<body style="background-color:#FAFAD2">

  <div align="center">
      <form action="AddBook" method="Post" >
       
          <fieldset style="width: 1000px; height: 200px" class="ii">
             <legend >Book Details</legend>
              <table class="table table-borderless form-control-sm-12">
			<tr>
				<td><label for="name">Book Name  :</label> 
                   <input type="text" name="bookname" id="bookname"></td>
				<td><label for="Date">Publication Date :</label>  
                 <fmt:formatDate var="fmtDate" value="${form.bean.dateProperty}" pattern="mm/dd/yyyy"/>
                     <input type="text" name="date" value="${fmtDate}" placeholder="mm/dd/yyyy"/></td>
				<td> <label for="price">Price  :</label>  
                   <input type="number" name="price"></td>
			
			</tr>
			<tr>
				<td colspan="2">
				<label for="PublisherName">Publisher Name  :</label>  
                   <select name="publish" id="publish" class=" col-sm-3">
						<option value="">-Select-</option>
						<c:forEach items="${publish }" var="pubs">
						<option value="${pubs.publisherId }">${pubs.publishername }</option>
						</c:forEach>
					</select>
				</td>
				<td >
				<label for="EditionType" class="form-check-label">Edition Type  :</label>
                   <input type="radio" name="editionType" id="editionTypeH" value="Hardcover"  checked="checked"> Hardcover
					<input type="radio" name="editionType" id="editionTypeP" value="PaperBack" > PaperBack
                </td>
				
			
			</tr>
			<tr>
			<td></td>
			<td>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="save" id="sub" class="btn btn-success">   &nbsp;&nbsp;
             <input type="reset" id="res" value="Reset"class="btn btn-danger">
			</td>
			<td></td>
			
			</tr>
			
		</table>
       </fieldset>    
</form>
</div>
<br>
<div align="center">
           <fieldset style="width: 1000px; height: 180px" class="ii">
            <legend >Book List</legend>
           <table border="1" class="table table-hover">
									<thead>
										<tr>
											 <th>Sl#</th>
											<th>Name</th>
											<th>Publication Date</th>
											<th>Price</th>
											<th>Publisher Name</th>
											<th>Edition Type</th>
											<th>Action</th>
										</tr>
									</thead>

									<tbody >

										<c:forEach items="${books}" var="list"
											varStatus="status">
											<tr>
											   <%--  <td>${status.count}</td> 
											    <td>${list.bookname}</td>
											    <td>${list.date}</td>
											    <td>Rs.${list.price}0</td>
											    <td>${list.publish.publishername}</td>
												<td>${list.editionType}</td>
												<td>
												<a href="edit/${list.bookId}" >Edit</a> &nbsp &nbsp
												<a href="delete/${list.bookId}">Delete</a>
												</td> --%>
												<td>${status.count}</td> 
											    <td>${list[0]}</td>
											    <td><fmt:formatDate pattern="dd-MMM-yyyy" value="${list[1]}" /></td>
											    <td>Rs.${list[2]}0</td>
											    <td>${list[3]}</td>
												<td>${list[4]}</td>
												<td>
												<a href="edit/${list[5]}" class="btn btn-warning btn-sm">Edit</a> &nbsp &nbsp
												<a href="delete/${list[5]}" class="btn btn-danger btn-sm">Delete</a>
												</td> 
												
											</tr>
										</c:forEach>
									</tbody>
								</table>
            </fieldset>
  </div>
</body>
</html>