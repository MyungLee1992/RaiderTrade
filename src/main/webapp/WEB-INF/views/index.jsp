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
    <script src="./js/cdn.js"></script>
    <script src="./js/main.js"></script>
    <link id="cdn" />
    <link rel="stylesheet" href="/css/main.css" />
    <title>RaiderTrade</title>
  </head>
  <body>
    <div id="indexNavigationbar"></div>
     <div class="container">
      <div class="row justify-content-center h-100">
        <font color="red">${error}</font>
        <form:form method="POST" action="/" class="my-auto col-sm-12 col-md-8" modelAttribute="user">
          <div class="p-1 bg-light rounded rounded-pill shadow-lg">
            <div class="input-group">
              <form:input
                type="text"
                path="firstName"
                placeholder="First Name"
                aria-describedby="button-addon1"
                class="form-control border-0 bg-light"
              />
            </div>
            <form:input
                type="text"
                path="lastName"
                placeholder="Last Name"
                aria-describedby="button-addon1"
                class="form-control border-0 bg-light"
              />
            </div>
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
            <div class="input-group">
              <form:input
                type="text"
                path="userName"
                placeholder="MT Mail Username"
                class="form-control border-0 bg-light"
              />
            </div>
            <div class="input-group">
              <form:input
                type="text"
                path="phoneNum"
                placeholder="Phone Number"
                class="form-control border-0 bg-light"
              />
            </div>
            <div class="input-group">
              <form:input
                type="password"
                path="password"
                placeholder="Password"
                class="form-control border-0 bg-light"
              />
            <div class="input-group">
              <form:input
                type="password"
                path="confirmPassword"
                placeholder="Verify Password"
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
    <!--Original index.jsp-->
    <!--
    <div class="container">
      <div class="row h-100">
        <form action="" class="text-center my-auto col-12">
          <div class="p-1 bg-light rounded rounded-pill shadow-sm">
            <div class="input-group">
              <input
                type="search"
                placeholder="What're you searching for?"
                aria-describedby="button-addon1"
                class="form-control border-0 bg-light"
              />
              <div class="input-group-append">
                <button
                  id="button-addon1"
                  type="submit"
                  class="btn btn-link text-primary"
                >
                  <i class="fa fa-search"></i>
                </button>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
    -->
  </body>
</html>
