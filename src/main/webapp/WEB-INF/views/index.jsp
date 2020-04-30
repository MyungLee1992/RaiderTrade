<%@ include file="/partials/header.jsp" %>

<body>
   <%@include file="/partials/Navigationbar.jsp" %>
<!--   ${pageContext.request.userPrincipal.name}-->
    <c:if test="${not empty pageContext.request.userPrincipal.name}">
      <div class="container">
        <div class="row justify-content-center h-70 w-70">
           <div class="col-lg-8 mt-5">
              <div class="p-4 m-5 bg-white rounded rounded-pill shadow-lg">
                 <a href="/addBook" class="btn btn-primary btn-lg btn-block">Add Book</a>
                 <a href="/displayBooks" class="btn btn-primary btn-lg btn-block">Display Books</a>
                 <a href="/searched" class="btn btn-primary btn-lg btn-block">Search Books</a>
              </div>
            </div> <!-- col -->
           </div>
        </div> <!-- row -->
      </div> <!-- container -->
    </c:if>

</body>

</html>
