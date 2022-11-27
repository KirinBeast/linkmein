<!Doctype html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

	<head>
		<title>Linkmein</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
	</head>
  <body>

    <!-- navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container-fluid">
        <a class="navbar-brand" href="/dashboard"><span class="navbar-brand mt-1 h1">Link<span class="text-primary">Me</span>In</span></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarColor03">
        <ul class="navbar-nav me-auto">
        <li class="nav-item">
        <a class="nav-link active" href="/dashboard">Home
          <span class="visually-hidden">(current)</span>
        </a>
        </li>
        </li>
        <li class="nav-item active">
        <a href="/about" class="nav-link" target="_blank">About</a>
      </li>
      <li class="nav-item active">
        <a href="/contact" class="nav-link" target="_blank">Contact</a>
      </li>
      <li class="nav-item active">
        <a href="/jobs" class="nav-link">Jobs</a>
      </li>
        </ul>
    
        <ul class="navbar-nav me-2 my-2 my-lg-0 navbar-nav-scroll" modelattribute="person" style="--bs-scroll-height: 100px;">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
          @<c:out value="${pageContext.request.remoteUser}" />
          </a>
          <ul class="dropdown-menu dropdown-menu-lg-end" >
          <li><a class="dropdown-item" href="/profile?id=${person.id}">Profile</a></li>
          <li><hr class="dropdown-divider"></li>
          <li><a class="dropdown-item" href="/dashboard">Dashboard</a></li>
          <li><hr class="dropdown-divider"></li>
          <li>
            <form action="/logout" method="post">
            <input type="hidden" name="${_csrf.parameterName}"
            value="${_csrf.token}" />
              <button type="submit" class="dropdown-item">Logout</button>
          </form> 
          </li>
          </ul>
        </li>
      </div>
      </nav>
    

    <!-- Search Public Profile -->
    <section>
      <div class="container mt-3" style="width: 50rem; margin: auto;">
      <c:url var="search_url" value="/dashboard" />
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
          <form:form role="search" action="${search_url}" method="post">
            <div class="input-group">
                <input class="form-control" name="keyword" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-success me-2" type="submit">Search</button>
            </div>
          </form:form>
        </div>
    </section>

    <div class="card mt-5" style="width: 70rem; margin: auto;">
      <style>
        table {
          font-family: arial, sans-serif;
          border-collapse: collapse;
          width: 100%;
        }
        
        td, th {
          border: 1px solid #dddddd;
          text-align: left;
          padding: 8px;
        }
        
        tr:nth-child(even) {
          background-color: #dddddd;
        }
      </style>
        
      <table class="table card-body text-center">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Username</th>
            <th scope="col">Email</th>
            <th scope="col">First Name</th>
            <th scope="col">Last Name</th>
            <th scope="col">Company</th>
            <th scope="col">City</th>
            <th scope="col">Country</th>
          </tr>
        </thead>
        <tbody>
          <c:if test="${not empty users}">
          <c:forEach var="user" items="${users}">
          <tr>
            <th scope="row">${user.id}</th>
            <td>${user.username}</td>
            <td>${user.email}</td>
            <td>${user.firstname}</td>
            <td>${user.lastname}</td>
            <td>${user.company}</td>
            <td>${user.city}</td>
            <td>${user.country}</td>
          </tr>
          </c:forEach>
          </c:if>
        </tbody>
      </table>
    </div>


    <section>
      <div class="container" style="margin-top: 300px;"></div>
    </section>

    <!-- Footer -->
    <footer class="py-5 bg-light text-muted">
      <div class="container">
        <div class="row">
          <div class="col-8 d-flex justify-content-start">
            <li>&copy; 2022 Copyright: By Nelson</li>
          </div>

          <div class="col-4 d-flex justify-content-end">
            <section id="contact">
              <div>
                <section class="split">
                  <section>
                    <div class="contact-method">
                      <i class="fa fa-envelope" aria-hidden="true"></i>
                      <h3>Email</h3>
                      <a>ysoung3535@gmail.com</a>
                    </div>
                  </section>
                  <section>
                    <div class="contact-method">
                      <i class="fa fa-phone" aria-hidden="true"></i>
                      <h3>Phone</h3>
                      <span>(+60)18-2615992</span>
                    </div>
                  </section>
                  <section>
                    <div class="contact-method">
                      <i class="fa fa-home" aria-hidden="true"></i>
                      <h3>Address</h3>
                      <span>54, Jalan Sultan Ahmad Shah<br />
                        10050 Penang<br />
                        Malaysia</span>
                    </div>
                  </section>
                </section>
              </div>
            </section>
          </div>
        </div>
      </div>
  </footer>
  <script src="https://kit.fontawesome.com/e19fcdf015.js" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>

  </body>
</html>