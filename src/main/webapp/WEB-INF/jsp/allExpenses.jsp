<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="pl-PL">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"/>
    <title>Expenses</title>
  </head>
  <body>
    <section>
      <div class="jumbotron">
        <div class="container">
          <h1>All Expenses</h1>
          <a href="/expenses/addNew">Add New Expense</a>
          <table>
            <tr>
              <!-- <th>Id</th> -->
              <th>Name</th>
              <th>Price</th>
              <th>Date</th>
            </tr>
            <c:forEach items="${expenses}" var="expense">
              <tr>
                <!-- <td>${expense.id}.</td> -->
                <td>${expense.name}</td>
                <td>${expense.price}</td>
                <td>${expense.date}</td>
                <td><a href="/expenses/edit/${expense.id}">Edit</a></td>
                <td><a href="/expenses/delete/${expense.id}">Delete</a></td>
              </tr>
            </c:forEach>
          </table>
        </div>
      </div>
    </section>
  </body>
</html>
