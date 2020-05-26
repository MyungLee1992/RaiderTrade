<%@ include file="/partials/header.jsp" %>
  <body>
    <%@ include file="/partials/Navigationbar.jsp" %>
     <div class="container">
        <div class="row justify-content-center h-70 w-70">
           <div class="p-4 m-4 bg-white rounded rounded-pill shadow-lg">
              <h5 class="text-center mb-2">Book Details</h5>

              <div class="input-group mb-2">
                 <div class="input-group-prepend">
                   <span class="input-group-text">Course</span>
                 </div>
                 <input type="text" class="form-control"
                        value="${book.courseAbb}" disabled />
              </div>

              <div class="input-group mb-2">
                 <div class="input-group-prepend">
                   <span class="input-group-text">Author Name</span>
                 </div>
                 <input type="text" class="form-control"
                        value="${book.authorName}" disabled />
              </div>

              <div class="input-group mb-2">
                 <div class="input-group-prepend">
                   <span class="input-group-text">Book Name</span>
                 </div>
                 <input type="text" class="form-control"
                        value="${book.bookName}" disabled />
              </div>

              <div class="input-group mb-2">
                 <div class="input-group-prepend">
                   <span class="input-group-text">IBN #</span>
                 </div>
                 <input type="number" class="form-control"
                        value="${book.ibnNum}" disabled />
              </div>

              <div class="input-group mb-2">
                 <div class="input-group-prepend">
                   <span class="input-group-text">Condition</span>
                 </div>
                 <input type="text" class="form-control"
                        value="${book.cond}" disabled />
              </div>

              <div class="input-group mb-2">
                 <div class="input-group-prepend">
                   <span class="input-group-text">Selling Price</span>
                 </div>
                 <input type="number" class="form-control"
                        value="${book.price}" disabled />
              </div>

              <div class="input-group mb-2">
                 <div class="input-group-prepend">
                   <span class="input-group-text">Book Description</span>
                 </div>
                 <textarea class="form-control" disabled>${book.detail}</textarea>
              </div>

              <!-- Show edit and delete buttons to sellers or Admin -->
              <security:authentication var="username" property="principal.username" />
              <security:authentication var="authority" property="principal.authorities[0]" />
              <c:if test="${book.user.username == username || authority == 'ADMIN'}">
                 <div class="text-right">
                    <a class="btn btn-warning btn-md" href="${book.bookId}/edit">Edit</a>
                    <form method="GET" action="${book.bookId}/delete" class="inline">
                       <button class="btn btn-danger btn-md">Delete</button>
                    </form>
                 </div>
              </c:if>


           </div>
        </div> <!-- row -->
     </div> <!-- container -->
  </body>
</html>
