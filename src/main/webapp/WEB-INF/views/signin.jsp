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
    <script src="./js/main.js"></script>
    <link id="cdn" />
    <link rel="stylesheet" href="/css/main.css" />
    <title>Sign In</title>
  </head>
  <body>
    <%@include file="/html/indexNavigationbar.html" %>
    <!-- <div id="indexNavigationbar"></div> -->
    <div class="container">
      <div class="row justify-content-center h-100">
        <form method="POST" action="/signin" class="my-auto col-sm-12 col-md-8" modelAttribute="user">
          <div class="p-1 bg-light rounded rounded-pill shadow-sm">
            <div class="input-group">
              <input
                type="text"
                name="userName"
                placeholder="Username"
                aria-describedby="button-addon1"
                class="form-control border-0 bg-light"
              />
            </div>
            <div class="input-group">
              <input
                type="password"
                name="password"
                placeholder="Password"
                aria-describedby="button-addon1"
                class="form-control border-0 bg-light"
              />
              <div class="input-group-append">
                    <button
                      id="button-addon1"
                      type="submit"
                      class="btn btn-link text-primary"
                    >
                      Submit
                    </button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </body>
</html>
