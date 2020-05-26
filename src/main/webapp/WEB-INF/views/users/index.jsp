<%@ include file="/partials/header.jsp" %>

<body>
  <%@include file="/partials/Navigationbar.jsp" %>
  <div class="container">
    <div class="row justify-content-center h-100">

      <table class="table bg-light rounded mt-3">
          <thead>
              <tr>
                 <th scope="col">First Name</th>
                 <th scope="col">Last Name</th>
                 <th scope="col">User Type</th>
                 <th scope="col">Username</th>
                 <th scope="col">Phone Number</th>
              </tr>
          </thead>
          <tbody>
              <c:forEach items="${userList}" var="user">
              <tr>
                 <td><c:out value="${user.firstName}"/></td>
                 <td><c:out value="${user.lastName}"/></td>
                 <td><c:out value="${user.userType}"/></td>
                 <td><c:out value="${user.username}"/></td>
                 <td><c:out value="${user.phoneNum}"/></td>
                 <td><a href="/${user.username}"><c:out value ="More Info"/></a></td>
              </tr>
              </c:forEach>
          </tbody>
      </table>

    </div> <!-- row -->
  </div> <!-- container -->
</body>

</html>