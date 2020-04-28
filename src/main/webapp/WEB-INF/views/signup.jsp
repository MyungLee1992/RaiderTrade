<%@ include file="/partials/header.jsp" %>
  <body>
    <%@ include file="/partials/Navigationbar.jsp" %>
     <div class="container">
        <div class="row justify-content-center h-70 w-70">
           <form:form method="POST" action="/signup" class="col-lg-8" modelAttribute="userForm">

              <div class="p-4 m-4 bg-white rounded rounded-pill shadow-lg">
                 <h5 class="text-center mb-1">Registration Form</h5>

                 <form:errors path="firstName" class="text-danger"/>
                 <div class="input-group mb-2">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="basic-addon1">First Name</span>
                    </div>
                    <form:input type="text" class="form-control" placeholder="John"
                           aria-describedby="basic-addon1" path="firstName"/>
                 </div>

                 <form:errors path="lastName" class="text-danger"/>
                 <div class="input-group mb-2">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="basic-addon2">Last Name</span>
                    </div>
                    <form:input type="text" class="form-control" placeholder="Smith"
                           aria-describedby="basic-addon2" path="lastName"/>
                 </div>

                 <form:errors path="userType" class="text-danger"/>
                 <div>
                    <div class="custom-control custom-radio custom-control-inline">
                       <form:radiobutton id="customRadioInline1" class="custom-control-input active"
                                         path="userType" value="student"/>
                       <label class="custom-control-label" for="customRadioInline1">Student</label>
                    </div>
                    <div class="custom-control custom-radio custom-control-inline mb-2">
                       <form:radiobutton id="customRadioInline2" class="custom-control-input"
                                         path="userType" value="faculty"/>
                       <label class="custom-control-label" for="customRadioInline2">Faculty</label>
                    </div>
                 </div>

                 <form:errors path="userName" class="text-danger"/>
                 <div class="input-group mb-2">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="basic-addon3">Username</span>
                    </div>
                    <form:input type="text" class="form-control" placeholder="dwc5k"
                           aria-describedby="basic-addon3" path="userName"/>
                 </div>

                 <form:errors path="phoneNum" class="text-danger"/>
                 <div class="input-group mb-2">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="basic-addon4">Phone Number</span>
                    </div>
                    <form:input type="text" class="form-control" placeholder="615-543-2332"
                           aria-describedby="basic-addon4" path="phoneNum"/>
                 </div>

                 <form:errors path="password" class="text-danger"/>
                 <div class="input-group mb-2">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="basic-addon5">Password</span>
                    </div>
                    <form:input type="password" class="form-control" placeholder="password"
                           aria-describedby="basic-addon5" path="password"/>
                 </div>

                 <form:errors path="confirmPassword" class="text-danger"/>
                 <div class="input-group mb-2">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="basic-addon6">Confirm Password</span>
                    </div>
                    <form:input type="password" class="form-control" placeholder="confirm password"
                           aria-describedby="basic-addon6" path="confirmPassword"/>
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
