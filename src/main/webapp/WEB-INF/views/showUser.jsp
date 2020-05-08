<%@ include file="/partials/header.jsp" %>
  <body>
    <%@ include file="/partials/Navigationbar.jsp" %>
     <div class="container">
        <div class="row justify-content-center h-70 w-70">
           <div class="p-4 m-4 bg-white rounded rounded-pill shadow-lg">
              <h5 class="text-center mb-1">User Information</h5>

              <div class="input-group mb-2">
                 <div class="input-group-prepend">
                   <span class="input-group-text" id="basic-addon1">First Name</span>
                 </div>
                 <input type="text" class="form-control" aria-describedby="basic-addon1"
                        value="${userInfo.firstName}" disabled />
              </div>
           </div>
        </div> <!-- row -->
     </div> <!-- container -->
  </body>
</html>
