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
    <script src="/static/js/main.js"></script>
    <link id="cdn" />
    <link rel="stylesheet" href="/static/css/main.css" />
    <title>Add Item</title>
  </head>
  <body>
    <%@include file="/static/html/signedNavigationbar.html" %>
    <!-- <div id="signedNavigationbar"></div> -->
    <div class="container">
      <div class="row justify-content-center h-100">
      <!--Make sure you look at the action-->
        <form:form action="/additem" class="my-auto col-sm-12 col-md-8"
                   method="POST" modelAttribute="book">
          <div class="p-1 bg-light rounded rounded-pill shadow-lg">
            <h5 class="text-center">Enter Listing Information</h5>
            Course #:
            <div class="input-group">
              <form:input
                type="text"
                placeholder="CSCI3033 or NA (for no course related)"
                path="courseAbb"
                aria-describedby="button-addon1"
                class="form-control border-0 bg-light"
              />
            </div>
            Author's Last Name:
            <div class="input-group">
              <form:input
                type="text"
                placeholder="Smith"
                path="authorName"
                aria-describedby="button-addon1"
                class="form-control border-0 bg-light"
              />
            </div>
            Book Name:
            <div class="input-group">
              <form:input
                type="text"
                placeholder="Java Programming Language"
                path="itemName"
                aria-describedby="button-addon1"
                class="form-control border-0 bg-light"
              />
            </div>
            IBN Number:
            <div class="input-group">
              <form:input
                type="text"
                placeholder="1234567890"
                path="ibnNum"
                aria-describedby="button-addon1"
                class="form-control border-0 bg-light"
              />
            </div>
            Condition:
            <form:select path="cond" class="input-group">
              <form:option 
                value="fair" label="Fair"
                class="form-control border-0 bg-light"
              />
              <form:option
                value="good" label="Good"
                class="form-control border-0 bg-light"
              />
              <form:option
                value="mint" label="Mint"
                class="form-control border-0 bg-light"
              />
            </form:select>
            Price
            <div class="input-group">
              <form:input
                type="text"
                placeholder="123.45 or 0.00 (for free)"
                path="price"
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
