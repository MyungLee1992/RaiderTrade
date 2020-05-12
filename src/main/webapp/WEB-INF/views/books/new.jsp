<%@ include file="/partials/header.jsp" %>
  <body>
    <%@ include file="/partials/Navigationbar.jsp" %>
     <div class="container">
        <div class="row justify-content-center h-70 w-70">
           <form:form method="POST" action="/books/new" class="col-lg-8" modelAttribute="bookForm">

              <div class="p-4 m-4 bg-white rounded rousnded-pill shadow-lg">
                 <h5 class="text-center mb-1">Add Book</h5>

                 <form:errors path="courseAbb" class="text-danger"/>
                 <div class="input-group mb-2">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="basic-addon1">Course</span>
                    </div>
                    <form:input type="text" class="form-control" placeholder="CSCI 3110"
                           aria-describedby="basic-addon1" path="courseAbb"/>
                 </div>

                 <form:errors path="authorName" class="text-danger"/>
                 <div class="input-group mb-2">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="basic-addon2">Author Name</span>
                    </div>
                    <form:input type="text" class="form-control" placeholder="John Doe"
                           aria-describedby="basic-addon2" path="authorName"/>
                 </div>

                 <form:errors path="bookName" class="text-danger"/>
                 <div class="input-group mb-2">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="basic-addon3">Book Name</span>
                    </div>
                    <form:input type="text" class="form-control" placeholder="Data Structures and Algorithms"
                           aria-describedby="basic-addon3" path="bookName"/>
                 </div>
                 <form:errors path="ibnNum" class="text-danger"/>
                 <div class="input-group mb-2">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="basic-addon4">IBN #</span>
                    </div>
                    <form:input type="text" class="form-control" placeholder="123456789"
                           aria-describedby="basic-addon4" path="ibnNum"/>
                 </div>

                 <form:errors path="cond" class="text-danger"/>
                 <div>
                    <div class="custom-control custom-radio custom-control-inline">
                       <form:radiobutton id="customRadioInline1" class="custom-control-input active"
                                         path="cond" value="fair"/>
                       <label class="custom-control-label" for="customRadioInline1">Fair</label>
                    </div>
                    <div class="custom-control custom-radio custom-control-inline mb-2">
                       <form:radiobutton id="customRadioInline2" class="custom-control-input"
                                         path="cond" value="excellent"/>
                       <label class="custom-control-label" for="customRadioInline2">Excellent</label>
                    </div>
                 </div>

                 <form:errors path="price" class="text-danger"/>
                 <div class="input-group mb-2">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="basic-addon5">Selling Price $</span>
                    </div>
                    <form:input type="text" class="form-control" placeholder="$50"
                           aria-describedby="basic-addon5" path="price"/>
                 </div>

                 <form:errors path="detail" class="text-danger"/>
                 <div class="input-group mb-2">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="basic-addon6">Book Detail</span>
                    </div>
                    <form:input type="text" class="form-control" placeholder="Calculus Book"
                           aria-describedby="basic-addon6" path="detail"/>
                 </div>

                 <input type="submit" class="btn btn-primary btn-lg btn-block"></input>

                  <div class="row mt-4">
                     <strong class="col-12 text-center text-danger">${error}</strong>
                 </div>

            </div> <!-- col -->
           </form:form> <!-- form -->
        </div> <!-- row -->
     </div> <!-- container -->
  </body>
</html>








<!--     <form action="/searched" method="GET" class="text-center my-auto col-12">-->
<!--        <div class="p-1 bg-light rounded rounded-pill shadow-lg">-->
<!--          <div class="input-group">-->
<!--            <input-->
<!--              type="search"-->
<!--              placeholder="What're you searching for?"-->
<!--              aria-describedby="button-addon1"-->
<!--              class="form-control border-0 bg-light"-->
<!--            />-->
<!--            <div class="input-group-append">-->
<!--              <button-->
<!--                id="button-addon1"-->
<!--                type="submit"-->
<!--                class="btn btn-link text-primary"-->
<!--              >-->
<!--                <i class="fa fa-search"></i>-->
<!--              </button>-->
<!--            </div>-->
<!--          </div>-->
<!--        </div>-->
<!--     </form>-->

</body>

</html>
