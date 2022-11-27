<!doctype html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
  <head>
    <title>Linkmein</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    
  </head>
  <body>
  
    <form class="mt-5" action="/reset-password" method="post">
    <input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
    
        <div class="card" style="width: 20rem; margin: auto;">
            <div class="card-body text-center">
                <span class="navbar-brand mt-1 h1">Link<span class="text-primary">Me</span>In</span>
                <h4 class="mb-4">Reset Password</h4>
                <p modelattribute="email">Your email (${email}) is verified. Please enter your new password.<p>
                <input type="hidden" name="email" value="${email}">
                <div class="form-group mt-2 mb-2">
                    <label for="password" class="visually-hidden">password</label>
                    <input type="password" name="password" id="password" class="form-control" placeholder="password" required autofocus>
                </div>
                <div class="form-group mb-4">
                    <label for="cpassword" class="visually-hidden">confirmed password</label>
                    <input type="password" name="cpassword" id="cpassword" class="form-control" placeholder="confirm password" required autofocus>
                </div>
                
                <div class="form-group d-grid gap-2">
                    <button type="submit" class="btn btn-primary w-100"> Send</button>
                    
                    <c:if test="${error_warning != null}">
                    <div class="alert alert-warning" role="alert">
  						${error_warning}
					</div>
					</c:if>
                </div>
     
                <footer class="mt-5 text-muted">&copy; 2022 Copyright:<a>  By Nelson</a>
                </footer>
            </div>
        </div>
    </form>

  </body>
</html>