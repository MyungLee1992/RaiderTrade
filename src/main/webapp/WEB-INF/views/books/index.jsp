<%@ include file="/partials/header.jsp" %>

<body>
   <%@include file="/partials/Navigationbar.jsp" %>

   <!-- Search Bar  -->
   <div class="container h-50">
      <form method="POST" action="/books">
         <div class="form-group">
            <div class="input-group mt-3">
               <input type="text"  name="bookName" placeholder="Search a book" class="form-control">
                  <div class="input-group-append">
                     <button type="submit" class="btn btn-secondary">
                        <i class="fa fa-search"></i>
                     </button>
                  </div>
               </input>
            </div>
         </div>
      </form>
   </div>

  <!-- Display the list of books -->
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
                  <th scope="col">Post Date</th>
              </tr>
           </thead>
           <tbody>
              <c:forEach items="${bookList.content}" var="book">
                 <tr>
                    <td><c:out value="${book.courseAbb}"/></td>
                    <td><c:out value="${book.authorName}"/></td>
                    <td><c:out value="${book.bookName}"/></td>
                    <td><c:out value="${book.ibnNum}"/></td>
                    <td><c:out value="${book.cond}"/></td>
                    <td><c:out value="$${book.price}"/></td>
                    <td><c:out value="${book.postDate}"/></td>
                    <td><a href="/books/${book.bookId}"><c:out value ="More Info"/></a></td>
                 </tr>
              </c:forEach>
           </tbody>
        </table>

        <!-- Pagination -->
        <nav aria-label="Search results pages">
           <ul class="pagination">
              <li class="page-item ${bookList.first ? 'disabled' : ''}">
                 <a class="page-link" href="/books/page/${bookList.number}" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only">Previous</span>
                 </a>
              </li>

              <c:forEach var="i" begin="1" end="${bookList.totalPages}">
                 <li class="page-item ${bookList.number == i-1 ? 'active' : ''}">
                    <a class="page-link" href='/books/page/${i}'><c:out value="${i}"/>
                       <span class="sr-only">(current)</span>
                    </a>
                 </li>
              </c:forEach>

              <li class="page-item ${bookList.last ? 'disabled' : ''}">
                 <a class="page-link" href="/books/page/${bookList.number + 2}" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only">Next</span>
                 </a>
             </li>
           </ul>
         </nav>

     </div> <!-- col -->
    </div> <!-- row -->
  </div> <!-- container -->
</body>

</html>