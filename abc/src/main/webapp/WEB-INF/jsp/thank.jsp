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
        <a class="navbar-brand" href="#">Linkmein</a>
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

    <div class="card mt-5" style="width: 70rem; margin: auto;">
      <div class="card-body text-center">
        <label class="form-label mt-4 mb-3" style="font-size:40px;">Thank You Signing Up!</label><br>
        <label class="form-label mt-4 mb-3" style="font-size:40px;">Please Go To Verify Your Email.<span id="count">5</span></label><br>
        <button type="button" class="btn btn-danger" onclick="document.location='/signin'">Go to Sign In</button>
      </div>
    </div>

    <script>
    	let counter = +document.getElementById('count').innerText;
    	let count = counter - 1;
    	
    	setInterval(() => {
         document.getElementById('count').textContent = count;
    		count--;
    		if(count < 1) location.replace('http://localhost:8080/signin');
    	}, 1000);
    </script>

    <section>
      <div class="container" style="margin-top: 425px;"></div>
    </section>

    <!-- Footer -->
<footer class="bg-dark text-center text-white">

	<!-- Copyright -->
	<div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
	  © 2022 Copyright:
	  <a class="text-white">By Nelson</a>
	</div>
	<!-- Copyright -->
  </footer>
  </body>
</html>