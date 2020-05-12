<%@ include file="/partials/header.jsp" %>
  <body>
    <%@ include file="/partials/Navigationbar.jsp" %>
     <div class="container">
        <div class="row justify-content-center h-70 w-70">
           <form:form action="/users/${userInfo.username}" method="POST" class="col-lg-8"
                      modelAttribute="userInfo">

              <div class="p-4 m-4 bg-white rounded rounded-pill shadow-lg">
                 <h5 class="text-center mb-2">User Information</h5>

                 <div class="input-group mb-2">
                    <div class="input-group-prepend">
                      <span class="input-group-text">First Name</span>
                    </div>
                    <form:input type="text" class="form-control"
                           value="${userInfo.firstName}" path="firstName" />
                 </div>

                 <div class="input-group mb-2">
                    <div class="input-group-prepend">
                      <span class="input-group-text">Last Name</span>
                    </div>
                    <form:input type="text" class="form-control"
                           value="${userInfo.lastName}" path="lastName"/>
                 </div>

                 <form:errors path="userType" class="text-danger"/>
                 <div>
                    <c:set var="userType" value="${userInfo.userType=='Student' ? 'checked' : 'Nothing'}" />
                    <div class="custom-control custom-radio custom-control-inline">
                       <form:radiobutton id="customRadioInline1"
                                         class="custom-control-input"
                                         path="userType" value="Student"
                                         checked="${userType}" />
                       <label class="custom-control-label" for="customRadioInline1">Student</label>
                    </div>
                    <c:set var="userType" value="${(userInfo.userType=='Faculty') ? 'checked' : ''}" />
                    <div class="custom-control custom-radio custom-control-inline mb-2">
                       <form:radiobutton id="customRadioInline2"
                                         class="custom-control-input"
                                         path="userType" value="Faculty"
                                         checked="${userType}" />
                       <label class="custom-control-label" for="customRadioInline2">Faculty</label>
                    </div>
                 </div>

                 <div class="input-group mb-2">
                    <div class="input-group-prepend">
                      <span class="input-group-text">Phone Number</span>
                    </div>
                    <form:input type="text" class="form-control"
                           value="${userInfo.phoneNum}" path="phoneNum"/>
                 </div>

                 <input type="submit" class="btn btn-primary btn-lg btn-block" />

              </div>
           </form:form>
        </div> <!-- row -->
     </div> <!-- container -->
  </body>
</html>