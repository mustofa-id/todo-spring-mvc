<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>My Todo</title>
    <link rel="shortcut icon"
          href="https://lh3.googleusercontent.com/a-/AAuE7mDBCT4kYlpVhhTnSQ1fNJbUhH6RxeAOwIIr8oN7Lw=s120-p-rw-no"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.min.css">
</head>
<body>

<header>
    <nav class="navbar is-dark" role="navigation" aria-label="main navigation">
        <div class="navbar-brand">
            <a class="navbar-item" href="https://bulma.io">
                <img src="https://bulma.io/images/bulma-logo-white.png" width="112" height="28">
            </a>
            <a role="button" class="navbar-burger burger" aria-label="menu" aria-expanded="false"
               data-target="navbarBasicExample">
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
            </a>
        </div>
        <div id="navbarBasicExample" class="navbar-menu">
            <div class="navbar-end">
                <div class="navbar-item">
                    <div class="buttons">
                        <a class="button is-primary">
                            <strong>Sign up</strong>
                        </a>
                        <a class="button is-light">
                            Log in
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </nav>
</header>

<main>
    <section class="section">
        <div class="container" align="center">
            <table class="table is-bordered is-striped is-hoverable">
                <caption><h1 class="title">Todo Items</h1></caption>
                <tr>
                    <th>Title</th>
                    <th>Detail</th>
                    <th>Deadline</th>
                </tr>
                <c:forEach var="item" items="${todoData.items}">
                    <tr>
                        <td><c:out value="${item.title}"/></td>
                        <td><c:out value="${item.detail}"/></td>
                        <td><c:out value="${item.deadline}"/></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </section>
</main>

</body>
</html>