<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <script
      src="https://code.jquery.com/jquery-3.4.1.js"
      integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
      crossorigin="anonymous"
    ></script>
    <script src="/static/js/main.js"></script>
    <link id="cdn" />
    <link rel="stylesheet" href="/static/css/main.css" />
    <title>Searched</title>
  </head>
  <body>
    <div id="indexNavigationbar"></div>
    <div class="container">
      <div class="row h-100">
        <table class="table bg-light rounded mt-3">
            <thead>
                <tr>
                    <th scope="col">User Id</th>
                    <th scope="col">Item Name</th>
                    <th scope="col">Author Name</th>
                    <th scope="col">IBN Number</th>
                    <th scope="col">Condition</th>
                    <!-- <th scope="col">Negotiable</th> -->
                    <th scope="col">Post Date</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${bookList}" var="book">
                <tr>
                    <th scope="row"><c:out value="${book.userId}"/></th>
                    <td><c:out value="${book.itemName}"/></td>
                    <td><c:out value="${book.authorName}"/></td>
                    <td><c:out value="${book.ibnNum}"/></td>
                    <td><c:out value="${book.cond}"/></td>
                    <td><c:out value="${book.authorName}"/></td>
                    <!-- <td><c:out value="${book.negotiable}"/></td> -->
                    <td><c:out value="${book.postDate}"/></td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
      </div>
    </div>
  </body>
</html>
