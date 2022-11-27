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

    <!-- nav -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container-fluid">
        <a class="navbar-brand" href="/"><span class="navbar-brand mt-1 h1">Link<span class="text-primary">Me</span>In</span></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarColor03">
        <ul class="navbar-nav me-auto">
          <li class="nav-item">
          <a class="nav-link active" href="/">Home
            <span class="visually-hidden">(current)</span>
          </a>
          </li>
          <li class="nav-item active">
            <a href="/about" class="nav-link">About</a>
        </li>
        <li class="nav-item active">
            <a href="/contact" class="nav-link">Contact</a>
        </li>
        </ul>
        <div>
            <button type="button" class="btn btn-danger" onclick="document.location='/signin'">Sign In</button>
            <button type="button" class="btn btn-danger" onclick="document.location='/signup'">Sign Up</button>
        </div>

    </nav>

    <div class="card mt-5" style="width: 50rem; margin: auto;">
      <div class="card-body text-center">
        <label class="form-label mt-4 mb-3" style="font-size:40px;">Welcome to LinkedMeIn Portal</label>
      </div>
      <div>
        <img src="assets/images/image1.jpg" class="img-fluid" alt="Responsive image">
      </div>
    </div>

    <section>
      <div class="container" style="margin-top: 135px;"></div>
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