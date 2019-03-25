<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.podkah.todo.util.Mapper" %>
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
    <nav class="navbar is-primary" role="navigation" aria-label="main navigation">
        <div class="container">
            <div class="navbar-brand">
                <a class="navbar-item" href="/todo/items">
                    <img src="https://lh3.googleusercontent.com/a-/AAuE7mDBCT4kYlpVhhTnSQ1fNJbUhH6RxeAOwIIr8oN7Lw=s120-p-rw-no" width="28" height="28">
                </a>
                <h1 class="is-size-4 navbar-item">Todo Items</h1>
            </div>
        </div>
    </nav>
</header>

<main>
    <section class="section">
        <div class="container" align="center">
            <c:url var="itemsLink" value="${Mapper.ITEMS}" />
            <a class="button is-primary is-outlined" href="${itemsLink}">Todo List Items</a>
        </div>
    </section>
</main>

</body>
</html>