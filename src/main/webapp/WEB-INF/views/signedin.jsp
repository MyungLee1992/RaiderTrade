<%@ include file="/partials/header.jsp" %>

<body>
   <%@include file="/partials/Navigationbar.jsp" %>
   <!-- <div id="signedNavigationbar"></div> -->
     <div class="container">
        <div class="row justify-content-center h-70 w-70">
           <form:form method="POST" action="/signup" class="col-lg-8 mt-5" modelAttribute="userForm">
              <div class="p-4 m-5 bg-white rounded rounded-pill shadow-lg">
                 <a href="/addBook" class="btn btn-primary btn-lg btn-block">Add Book</a>
                 <a href="/displayBooks" class="btn btn-primary btn-lg btn-block">Display Books</a>
                 <a href="/searched" class="btn btn-primary btn-lg btn-block">Search Books</a>
              </div>
            </div> <!-- col -->
           </form:form> <!-- form -->
        </div> <!-- row -->
     </div> <!-- container -->
</body>

</html>
