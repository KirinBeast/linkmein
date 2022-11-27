<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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