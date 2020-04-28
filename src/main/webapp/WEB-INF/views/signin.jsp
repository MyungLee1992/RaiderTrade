<%@ include file="/partials/header.jsp" %>
  <body>
    <%@include file="/partials/Navigationbar.jsp" %>
    <div class="container">
      <div class="row justify-content-center h-100">
        <form method="POST" action="/signin" class="my-auto col-sm-12 col-md-8">
          ${error}
          <div class="p-1 bg-light rounded rounded-pill shadow-lg">

            <div class="input-group">
              <input type="text" name="userName" placeholder="Username"
                aria-describedby="button-addon1" class="form-control border-0 bg-light"/>
            </div>

            <div class="input-group">
              <input type="password" name="password" placeholder="Password"
                aria-describedby="button-addon1" class="form-control border-0 bg-light"/>
              <div class="input-group-append">
                <button id="button-addon1" type="submit" class="btn btn-link text-primary">
                  Submit
                </button>
              </div>
            </div>

          </div> <!-- col -->
        </form>
      </div> <!-- row -->
    </div> <!-- container -->
  </body>
</html>
