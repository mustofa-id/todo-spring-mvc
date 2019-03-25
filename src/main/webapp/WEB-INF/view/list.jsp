<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.podkah.todo.util.Mapper" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>My Todo | Items</title>
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
            <div>
                <c:url var="addUrl" value="${Mapper.FORM}" />
                <a href="${addUrl}" class="button is-primary is-outlined">
                    <strong>New Todo</strong>
                </a>
            </div>
            </br>
            <table class="table is-bordered is-striped is-hoverable">
                <tr>
                    <th>Title</th>
                    <th>Detail</th>
                    <th>Deadline</th>
                    <th>Actions</th>
                </tr>
                <c:forEach var="item" items="${todoData.items}">
                    <tr>
                        <td><c:out value="${item.title}"/></td>
                        <td><c:out value="${item.detail}"/></td>
                        <td><c:out value="${item.deadline}"/></td>
                        <td>
                            <div class="buttons are-small has-addons is-centered">
                                <c:url var="detailUrl" value="${Mapper.DETAIL}">
                                    <c:param name="id" value="${item.id}"/>
                                </c:url>
                                <a href="${detailUrl}" class="button is-outlined is-success">Detail</a>

                                <c:url var="editUrl" value="${Mapper.FORM}">
                                    <c:param name="id" value="${item.id}"/>
                                </c:url>
                                <a href="${editUrl}" class="button is-outlined is-link">Edit</a>

                                <c:url var="deleteUrl" value="${Mapper.DELETE}">
                                    <c:param name="id" value="${item.id}"/>
                                </c:url>
                                <a href="${deleteUrl}" class="button is-outlined is-danger">Delete</a>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </section>
</main>

</body>
</html>