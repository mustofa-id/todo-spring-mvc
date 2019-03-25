<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>My Todo | Detail</title>
    <link rel="shortcut icon"
          href="https://lh3.googleusercontent.com/a-/AAuE7mDBCT4kYlpVhhTnSQ1fNJbUhH6RxeAOwIIr8oN7Lw=s120-p-rw-no"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.min.css"/>
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
            <div class="columns is-centered">
                <div class="column is-half">
                    <div class="box">
                        <div class="media">
                            <div class="media-left">
                                <figure class="image is-64x64">
                                    <img src="https://bulma.io/images/placeholders/128x128.png" alt="Image" />
                                </figure>
                            </div>
                            <div class="media-content">
                                <div class="content">
                                    <p>
                                        <strong><c:out value="${todoItem.title}" /></strong> -
                                        <small><c:out value="${todoItem.deadline}" /></small>
                                        <br/>
                                        <c:out value="${todoItem.detail}" />
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>

</body>
</html>