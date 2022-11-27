<!Doctype html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

  <div class="card mt-5" style="width: 20rem; margin: auto;">
        <div class="card-body text-center">
            <form class="mb-4" action="/process_signup" method="post" modelattribute="user">
              <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            
                <h1 class="mb-4">Sign up</h1>
                <div class="form-group mt-2">
                    <label for="username" class="visually-hidden">Username</label>
                    <input type="text" name="username" id="username" class="form-control" placeholder="Username" required autofocus>
                </div>
                <div class="form-group mt-2">
                    <label for="email" class="visually-hidden">Email</label>
                    <input type="email" name="email" id="email" class="form-control" placeholder="Email" required>
                </div>
                <div class="form-group mt-2 mb-5">
                    <label for="password" class="visually-hidden">Password</label>
                    <input type="password" name="password" id="password" class="form-control" placeholder="Password">
                </div>
                <div class="form-group d-grid gap-2">
                    <button class="btn btn-success w-100">Sign Up With Email</button>
                </div>
                <footer class="mt-5 text-muted">&copy; 2022 Copyright:<a>  By Nelson</a>
                </footer>
            </form>
        </div>
    </div>
  </body>
</html>