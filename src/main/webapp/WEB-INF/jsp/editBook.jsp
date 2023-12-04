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
    <title>Edit book</title>
  </head>
  <body>
    <section>
      <div class="jumbotron">
        <div class="container">
          <h1>Edit book</h1>
          <form:form modelAttribute="form" method="POST" action="/books/save">
            <form:errors path="" element="div" />
            <form:hidden path="id" />
            <div class="form-group-lg">
              <form:label path="title">Title</form:label>
              <form:input path="title" class="form-control" />
              <form:errors path="title" />
            </div>
            <div class="form-group-lg">
              <form:label path="author">Author</form:label>
              <form:input class="form-control" path="author" />
              <form:errors path="author" />
            </div>
            <div class="form-group-lg">
              <form:label path="price">Price</form:label>
              <form:input class="form-control" path="price" type="number" step="0.01"/>
              <form:errors path="price" />
            </div>
            <div class="form-group-lg">
              <input type="submit" value="Save" />
            </div>
          </form:form>
        </div>
      </div>
    </section>
  </body>
</html>
