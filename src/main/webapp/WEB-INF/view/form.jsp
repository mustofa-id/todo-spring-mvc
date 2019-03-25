<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="com.podkah.todo.util.Attribute" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>My Todo | ${title}</title>
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
                            <div class="media-content">
                                <form:form method="POST" modelAttribute="${Attribute.TODO_ITEM}">

                                    <div class="field">
                                        <label class="label">Title</label>
                                        <div class="control">
                                            <form:input class="input" type="text" placeholder="Title" path="title" />
                                        </div>
                                    </div>

                                    <div class="field">
                                        <label class="label">Deadline</label>
                                        <div class="control">
                                            <form:input class="input" placeholder="Deadline" path="deadline"/>
                                        </div>
                                    </div>

                                    <div class="field">
                                        <label class="label">Detail</label>
                                        <div class="control">
                                            <form:textarea class="textarea" placeholder="Detail" path="detail"/>
                                        </div>
                                    </div>

                                    <div class="field is-grouped">
                                        <div class="control">
                                            <input type="submit" class="button is-primary" value="Save"/>
                                        </div>
                                        <div class="control">
                                            <a class="button" href="/todo/items" class="button is-text">Cancel</a>
                                        </div>
                                    </div>
                                </form:form>
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