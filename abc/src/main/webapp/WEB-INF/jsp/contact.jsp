<!Doctype html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

	<head>
		<title>Linkmein</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
		
	

	</head>
  <body>

    <!-- nav -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">Linkmein</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarColor03">
        <ul class="navbar-nav me-auto">
          <li class="nav-item">
          <a class="nav-link active" href="dashboard">Home
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

    <main>
        <section class="py-5 text-center">
            <div class="container">
                <div class="row py-lg-5">
                    <div class="col-lg-6 mx-auto">
                        <img class="img-fluid mb-3" src="assets/images/pic00.jpg" alt="welcome">
                        <h2 class="fw-light mb-2">Contact Us</h2>
                        <p class="lead text-muted">
                            Speak with our dedicated education consultants to pick the best course for you.
                        </p>
                        <p class="fw-light text-muted">Email: noys@gmail.com</p>
                        <p class="fw-light text-muted">Phone: +618 - 261599</p>
                    </div>
                </div>
            </div>
        </section>

        <section class="py-5 text-center bg-light">
            <div class="container">
                <h2 class="fw-light mb-4">Locate Us</h2>

                <div class="row container">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3972.006221163123!2d100.33956241431451!3d5.41602083654876!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x304ac3e21aa452f7%3A0x5d72532ef1412cb0!2sBangunan%20Wawasan!5e0!3m2!1sen!2smy!4v1660461424283!5m2!1sen!2smy" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
        </section>

        <section class="py-5 text-center bg-white">
            <div class="container">
                <h2 class="fw-light mb-4">Interested to Join Us?</h2>
                <a href="/signup" class="btn btn-warning">Sign up here</a>
            </div>
        </section>
    </main>

    <section>
      <div class="container" style="margin-top: 135px;"></div>
    </section>

    <!-- Footer -->
    <footer class="bg-dark text-center text-white">
	    <!-- Copyright -->
	    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
        <li>&copy; 2022 Copyright: By Nelson</li>
	    </div>
    </footer>

  </body>
</html>