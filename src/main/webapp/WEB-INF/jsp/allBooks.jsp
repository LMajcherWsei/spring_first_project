<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="pl-PL">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
    />
    <title>Books</title>
  </head>
  <body>
    <section>
      <div class="jumbotron">
        <div class="container">
          <h1>All Books</h1>
          <a href="/books/addNew">Add New Book</a>
          <table>
            <tr>
              <!-- <th>Id</th> -->
              <th>Title</th>
              <th>Author</th>
              <th>Price</th>
              <th>Edit</th>
              <th>Delete</th>
            </tr>
            <c:forEach items="${books}" var="book">
              <tr>
                <!-- <td>${book.id}.</td> -->
                <td>${book.title}</td>
                <td>${book.author}</td>
                <td>${book.price}</td>
                <td><a href="/books/edit/${book.id}">Edit</a></td>
                <td><a href="/books/delete/${book.id}">Delete</a></td>
              </tr>
            </c:forEach>
          </table>
        </div>
      </div>
    </section>
  </body>
</html>
