<%@ include file="/partials/header.jsp" %>
  <body>
    <%@include file="/partials/Navigationbar.jsp" %>
    <div class="container">
      <div class="row justify-content-center text-center h-100">
        <form method="POST" action="/signin" class="form-sighin my-auto col-sm-12 col-md-8">

          <div class="from-group p-4 m-4 bg-white rounded rounded-pill">
            <strong class="col-12 text-danger">${error}</strong>
            <strong class="col-12 text-danger">${message}</strong>

            <div class="input-group">
              <input type="text" name="username" placeholder="Username" class="form-control border-0" value="asdasd"/>
            </div>

            <div class="input-group">
              <input type="password" name="password" placeholder="Password" class="form-control border-0"
                     value="asdasd"/>
            </div>

            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

            <div>
              <input type="submit" value="Sign In" class="btn btn-primary btn-lg btn-block"></input>
            </div>

          </div> <!-- col -->
        </form>
      </div> <!-- row -->
    </div> <!-- container -->
  </body>
</html>
