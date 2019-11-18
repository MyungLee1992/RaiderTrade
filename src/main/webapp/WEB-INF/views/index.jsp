<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <script
      src="https://code.jquery.com/jquery-3.4.1.js"
      integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
      crossorigin="anonymous"
    ></script>
    <script src="/js/cdn.js"></script>
    <script src="/js/main.js"></script>
    <link id="cdn" />
    <link rel="stylesheet" href="/css/main.css" />
    <title>RaiderTrade</title>
  </head>
  <body>
    <!-- <div id="indexNavigationbar"></div> -->
    <%@include file="/html/indexNavigationbar.html" %>
     <div class="container">
    ${error}
      <div class="row justify-content-center h-100">
        <form:form method="POST" action="/" class="my-auto col-sm-12 col-md-8" modelAttribute="user">
          <div class="p-1 bg-light rounded rounded-pill shadow-lg">
          <h5 class="text-center">Registration Form:</h5>
            First Name:
            <div class="input-group">
              <form:input
                type="text"
                placeholder="John"
                path="firstName"
                aria-describedby="button-addon1"
                class="form-control border-0 bg-light"
              />
            </div>
            Last Name:
            <div class="input-group">
              <form:input
                type="text"
                placeholder="Smith"
                path="lastName"
                aria-describedby="button-addon1"
                class="form-control border-0 bg-light"
              />
            </div>
            User Type:
            <form:select path="userType" class="input-group">
              <form:option 
                value="student" label="Student"
                class="form-control border-0 bg-light"
              />
              <form:option
                value="faculty" label="Faculty"
                class="form-control border-0 bg-light"
              />
            </form:select>
            User Name:
            <div class="input-group">
              <form:input
                type="text"
                placeholder="dme3c"
                path="userName"
                aria-describedby="button-addon1"
                class="form-control border-0 bg-light"
              />
            </div>
             Phone Number:
            <div class="input-group">
              <form:input
                type="text"
                placeholder="615-543-2332"
                path="phoneNum"
                aria-describedby="button-addon1"
                class="form-control border-0 bg-light"
              />
            </div>
            Password:
            <div class="input-group">
              <form:input
                type="password"
                placeholder="password"
                path="password"
                aria-describedby="button-addon1"
                class="form-control border-0 bg-light"
              />
            </div>
            Verify Password:
            <div class="input-group">
              <form:input
                type="password"
                placeholder="verify password"
                path="confirmPassword"
                aria-describedby="button-addon1"
                class="form-control border-0 bg-light"
              />
            <div class="input-group-append">
                <button
                  id="button-addon1"
                  type="submit"
                  class="btn btn-link bg-light text-primary"
                >
                  Submit
                </button>
              </div>
            </div>
         </div>
       </form:form>
      </div>
     </div>
  </body>
</html>
