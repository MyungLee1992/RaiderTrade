<%@ include file="/partials/header.jsp" %>

<body>
  <%@include file="/partials/Navigationbar.jsp" %>
  <div class="container">
    <div class="row justify-content-center h-100">
      <table class="table bg-light rounded mt-3">
          <thead>
              <tr>
                  <th scope="col">Course</th>
                  <th scope="col">Author Name</th>
                  <th scope="col">Book Name</th>
                  <th scope="col">IBN #</th>
                  <th scope="col">Condition</th>
                  <th scope="col">Selling Price</th>
                  <th scope="col">Book Detail</th>
                  <th scope="col">Post Date</th>
              </tr>
          </thead>
          <tbody>
              <!--This is the list of books that loggedin users have added-->
              <c:forEach items="${bookList}" var="book">
              <tr>
                  <td><c:out value="${book.courseAbb}"/></td>
                  <td><c:out value="${book.authorName}"/></td>
                  <td><c:out value="${book.bookName}"/></td>
                  <td><c:out value="${book.ibnNum}"/></td>
                  <td><c:out value="${book.cond}"/></td>
                  <td><c:out value="${book.price}"/></td>
                  <td><c:out value="${book.detail}"/></td>
                  <td><c:out value="${book.postDate}"/></td>
              </tr>
              </c:forEach>
          </tbody>
      </table>

        </div> <!-- col -->
      </form>
    </div> <!-- row -->
  </div> <!-- container -->
</body>

</html>