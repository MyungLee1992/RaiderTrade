<%@ include file="/partials/header.jsp" %>
  <body>
    <%@ include file="/partials/Navigationbar.jsp" %>
     <div class="container">
        <div class="row justify-content-center h-70 w-70">
           <div class="p-4 m-4 bg-white rounded rounded-pill shadow-lg">
              <h5 class="text-center mb-2">User Information</h5>

              <div class="input-group mb-2">
                 <div class="input-group-prepend">
                   <span class="input-group-text">First Name</span>
                 </div>
                 <input type="text" class="form-control"
                        value="${userInfo.firstName}" disabled />
              </div>

              <div class="input-group mb-2">
                 <div class="input-group-prepend">
                   <span class="input-group-text">Last Name</span>
                 </div>
                 <input type="text" class="form-control"
                        value="${userInfo.lastName}" disabled />
              </div>

              <div class="input-group mb-2">
                 <div class="input-group-prepend">
                   <span class="input-group-text">Title</span>
                 </div>
                 <input type="text" class="form-control"
                        value="${userInfo.userType}" disabled />
              </div>

              <div class="input-group mb-2">
                 <div class="input-group-prepend">
                   <span class="input-group-text">User Name</span>
                 </div>
                 <input type="text" class="form-control"
                        value="${userInfo.username}" disabled />
              </div>

              <div class="input-group mb-2">
                 <div class="input-group-prepend">
                   <span class="input-group-text">Phone Number</span>
                 </div>
                 <input type="text" class="form-control"
                        value="${userInfo.phoneNum}" disabled />
              </div>

              <a class="btn btn-warning btn-md" href="${userInfo.username}/edit">Edit</a>
              <form method="GET" action="${userInfo.username}/delete" class="inline">
                 <button class="btn btn-danger btn-md">Delete</button>
              </form>

           </div>
        </div> <!-- row -->
     </div> <!-- container -->
  </body>
</html>
