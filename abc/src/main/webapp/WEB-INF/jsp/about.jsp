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
        </ul>


    </nav>

    <main>
        <section class="py-5 text-center">
            <div class="container">
                <div class="row py-lg-5">
                    <div class="col-lg-6 mx-auto">
                        <img class="img-fluid mb-3" src="assets/images/pic17.jpg" alt="welcome">
                        <h2 class="fw-light">About us</h2>  
                    </div>
                </div>
    
                <div class="row">
                    <div class="row row-cols-1 row-cols-md-3 mb-5 text-center">
                        <div class="col">
                            <div class="card mb-4 rounded-3 shadow-sm h-100">
                                <div class="card-header py-3">
                                    <h4 class="fw-normal">Vision</h4>
                                </div>
                                <div class="card-body">
                                    <p>To be leading Digital Learning and Software Talent Platform</p>
                                </div>
                            </div>
                        </div>
    
                        <div class="col">
                            <div class="card mb-4 rounded-3 shadow-sm h-100">
                                <div class="card-header py-3">
                                    <h4 class="fw-normal">Mission</h4>
                                </div>
                                <div class="card-body">
                                    <p>Deliver future-ready talents and enterprises to community</p>
                                </div>
                            </div>
                        </div>
    
                        <div class="col">
                            <div class="card mb-4 rounded-3 shadow-sm h-100">
                                <div class="card-header py-3">
                                    <h4 class="fw-normal">Our Value and Culture</h4>
                                </div>
                                <div class="card-body">
                                    <p>We learn, innovate and grow</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="py-5 text-center bg-light">
            <div class="container">
                <h2 class="fw-light mb-4">Our Team</h2>
                <div class="row row-cols-1 row-cols-md-3 mb-5 text-center">
                    <div class="col">
                        <div class="rounded mb-4 shadow-sm px-4 h-100">
                            <img src="assets/images/pic12.jpg" alt width="100" class="img-fluid rounded-circle mt-3 mb-3 img-thumbnail shadow-sm">
                            <h5>Judy Hill</h5>
                            <span class="small text-uppercase text-muted">Founder, CEO</span>
                        </div>
                    </div>
                    <div class="col">
                        <div class="rounded mb-4 shadow-sm px-4 h-100">
                            <img src="assets/images/pic23.jpg" alt width="100" class="img-fluid rounded-circle mt-3 mb-3 img-thumbnail shadow-sm">
                            <h5>Andrea Piacquadio</h5>
                            <span class="small text-uppercase text-muted">Trainer</span>
                        </div>
                    </div>
                    <div class="col">
                        <div class="rounded mb-4 shadow-sm px-4 h-100">
                            <img src="assets/images/pic24.jpg" alt width="100" class="img-fluid rounded-circle mt-3 mb-3 img-thumbnail shadow-sm">
                            <h5>David Dein</h5>
                            <span class="small text-uppercase text-muted">Founder, Trainer</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="py-5 bg-white text-center">
            <div class="container">
                <h2 class="fw-light text-muted mb-3">Our Story</h2>
                <p class="fw-normal text-muted mt-4 mb-4">
                    Digital revolution is transforming jobs and has resulted in critical skills gaps that are struggling to fill. Korn 
                    Ferry's Global Talent Crunch study estimates that Asia Pacific is set to suffer the most severe skills crunch globally 
                    with talents deficit estimated at 55% of the global shortages by 2030.</p>
                <p class="fw-normal text-muted mt-4 mb-4">
                    Covid-19 outbreak has torn down all barriers to learning and working online. More than just delivering digitally 
                    skilled talents with CLaaS, our Pan-Asia eduCLaaS platform connects higher education students, working adults, 
                    industry experts, tech vendors, enterprises, employers, and higher education institutions for delivering total 
                    training and talents solution which is able to holistically mitigate the digital skills gap between emerging and 
                    developed economies across Asia at scale.</p>
                <p class="fw-normal text-muted mt-4 mb-4">
                    We believe that learning and work will intertwine for a converged future where learning is work and work is learning. 
                    Our solution for connecting the future of learning and work is eduCLaaS - a learning and talent cloud able to bridge 
                    digital skills gap and rising income inequality across Asia.
                </p>
            </div>
        </section>
    </main>

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