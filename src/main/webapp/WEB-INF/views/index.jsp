<%@ include file="/partials/header.jsp" %>

<body>
   <%@include file="/partials/Navigationbar.jsp" %>
<!--   ${pageContext.request.userPrincipal.name}-->
<!--    <c:if test="${not empty pageContext.request.userPrincipal.name}">-->
<!--    </c:if>-->
   <security:authorize access="isAuthenticated()">
      <div class="container">
        <div class="row justify-content-center h-70 w-70">
           <div class="col-lg-8 mt-5">
              <div class="p-4 m-5 bg-white rounded rounded-pill shadow-lg">
                 <a href="/books" class="btn btn-primary btn-lg btn-block">Display Books</a>
                 <a href="/books/new" class="btn btn-primary btn-lg btn-block">Add Book</a>
                 <!-- Only Admin can view the user list -->
                 <security:authorize access="hasAuthority('ADMIN')">
                    <a href="/users" class="btn btn-primary btn-lg btn-block">Display Users</a>
                 </security:authorize>
              </div>
            </div> <!-- col -->
           </div>
        </div> <!-- row -->
      </div> <!-- container -->
   </security:authorize>
</body>

</html>
