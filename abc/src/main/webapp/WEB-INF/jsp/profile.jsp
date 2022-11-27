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



    <form class="form-group" action="/update-profile" method="post" modelAttribute="user" style="width: 20rem; margin: auto;">
      <input type="hidden" name="${_csrf.parameterName}"
          value="${_csrf.token}" />
          
        <div class="mb-3" >
          <label class="form-label">ID: </label>
          <input class="form-control" name="id" value="${user.id}" aria-label="Store ID" readonly="true" />
        </div>

        <div class="mb-3">
          <label class="form-label">*Username: </label>
          <input type="text" class="form-control" name="username" id="username" value="${user.username}" aria-label="username" required />
        </div>

        <div class="mb-3">
          <label class="form-label">*Email: </label>
          <input type="email" class="form-control" name="email" id="email" value="${user.email}" aria-label="email" required />
        </div>

        <div class="mb-3">
          <label class="form-label">*First Name: </label>
          <input class="form-control" name="firstname" id="firstname" value="${user.firstname}" aria-label="first name" required />
        </div>

        <div class="mb-3">
          <label class="form-label">*Last Name: </label>
          <input class="form-control" name="lastname" id="lastname" value="${user.lastname}" aria-label="last name" required />
        </div>

        <div class="mb-3">
          <label class="form-label">*Company: </label>
          <input class="form-control" name="company" id="company" value="${user.company}" aria-label="company" required />
        </div>

        <div class="mb-3">
          <label class="form-label">*City: </label>
          <input class="form-control" name="city" id="city" value="${user.city}" aria-label="country" required />
        </div>

        <div class="mb-3">
          <label class="form-label">*Country: </label>
          <input class="form-control" name="country" id="country" value="${user.country}" aria-label="country" required />
        </div>
        
        <div class="mb-3">
          <label class="form-label" for="customFile">Profile photo</label>
          <input type="file" name="img" class="form-control" id="customFile" value="" />
        </div>
        
        <div class="py-5">
          <a href="/dashboard" class="btn btn-danger">Cancel</a>
          <button type="submit" class="btn btn-success">Update</button>
        </div>
      </form>

    <section>
      <div class="container" style="margin-top: 425px;"></div>
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