<%@ include file="/partials/header.jsp" %>
  <body>
    <%@ include file="/partials/Navigationbar.jsp" %>
     <div class="container">
        <div class="row justify-content-center h-70 w-70">
           <form:form action="/books/${book.bookId}" method="POST" class="col-lg-8"
                      modelAttribute="book">

              <div class="p-4 m-4 bg-white rounded rounded-pill shadow-lg">
                 <h5 class="text-center mb-2">book Information</h5>

                 <div class="input-group mb-2">
                    <div class="input-group-prepend">
                      <span class="input-group-text">Course</span>
                    </div>
                    <form:input type="text" class="form-control"
                           value="${books.courseAbb}" path="courseAbb" />
                 </div>

                 <div class="input-group mb-2">
                    <div class="input-group-prepend">
                      <span class="input-group-text">Author Name</span>
                    </div>
                    <form:input type="text" class="form-control"
                           value="${books.authorName}" path="authorName" />
                 </div>

                  <div class="input-group mb-2">
                    <div class="input-group-prepend">
                      <span class="input-group-text">Book Name</span>
                    </div>
                    <form:input type="text" class="form-control"
                           value="${books.bookName}" path="bookName" />
                 </div>

                 <div class="input-group mb-2">
                    <div class="input-group-prepend">
                      <span class="input-group-text">IBN #</span>
                    </div>
                    <form:input type="number" class="form-control"
                           value="${books.ibnNum}" path="ibnNum"/>
                 </div>

                 <div>
                    <c:set var="cond" value="${book.cond=='Fair' ? 'checked' : 'Nothing'}" />
                    <div class="custom-control custom-radio custom-control-inline">
                       <form:radiobutton id="customRadioInline1"
                                         class="custom-control-input"
                                         path="cond" value="Fair"
                                         checked="${cond}" />
                       <label class="custom-control-label" for="customRadioInline1">Fair</label>
                    </div>
                    <c:set var="cond" value="${(book.cond=='Excellent') ? 'checked' : ''}" />
                    <div class="custom-control custom-radio custom-control-inline mb-2">
                       <form:radiobutton id="customRadioInline2"
                                         class="custom-control-input"
                                         path="cond" value="Excellent"
                                         checked="${cond}" />
                       <label class="custom-control-label" for="customRadioInline2">Excellent</label>
                    </div>
                 </div>

                 <div class="input-group mb-2">
                    <div class="input-group-prepend">
                      <span class="input-group-text">Selling Price</span>
                    </div>
                    <form:input type="number" class="form-control"
                           value="${book.price}" path="price"/>
                 </div>

                 <div class="input-group mb-2">
                    <div class="input-group-prepend">
                      <span class="input-group-text">Book Description</span>
                    </div>
                    <form:textarea class="form-control" value="${book.detail}" path="detail"/>
                 </div>

                 <input type="submit" class="btn btn-primary btn-lg btn-block" />

              </div>
           </form:form>
        </div> <!-- row -->
     </div> <!-- container -->
  </body>
</html>