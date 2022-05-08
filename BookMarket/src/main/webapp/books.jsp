<%@page import="dto.Book"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.BookRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>도서 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 목록</h1>
		</div>
	</div>
	<%
		BookRepository dao = BookRepository.getInstance();
		ArrayList<Book> dto = dao.getAllBooks();
	%>
	<div class="container">
		<div class="colum left">
			<%
				for(int i = 0; i<dto.size(); i++){
					Book book = dto.get(i);
			%>
		</div>
		<div class="col-md-8">
			<h4>[<%=book.getCategory()%>] <%=book.getName() %></h3>
			<p><%=book.getAuthor() %> | <%=book.getPublisher() %> | <%=book.getUnitPrice() %>
			<p><%= book.getDescription() %>
			<p><a href="./book.jsp?id=<%=book.getBookId() %>" class="btn btn-secondary" role="button">상세 정보 &raquo;</a>
		</div>
		<hr>
		<%
				}
		%>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>