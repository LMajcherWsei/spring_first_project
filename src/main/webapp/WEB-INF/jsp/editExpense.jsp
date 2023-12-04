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
    <title>Edit expense</title>
  </head>
  <body>
    <section>
      <div class="jumbotron">
        <div class="container">
          <h1>Edit expense</h1>
          <form:form modelAttribute="form" method="POST" action="/expenses/save">
            <form:errors path="" element="div" />
            <form:hidden path="id" />
            <div class="form-group-lg">
              <form:label path="name">Name</form:label>
              <form:input path="name" class="form-control" />
              <form:errors path="name" />
            </div>
            <div class="form-group-lg">
              <form:label path="price">Price</form:label>
              <form:input class="form-control" type="number" step="0.01" path="price"/>
              <form:errors path="price" />
            </div>
            <div class="form-group-lg">
              <form:label path="date">Date</form:label>
              <form:input class="form-control" type="datetime-local" path="date"/>
              <form:errors path="date" />
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
