<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="<c:url value="/theme/css/sb-admin-2.css"/>" rel="stylesheet">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="<c:url value="/theme/vendor/fontawesome-free/css/all.min.css"/>" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">
    <title>List</title>
</head>
<body id="page-top">
<div id="wrapper">
    <%@ include file="/fragments/header.jsp" %>
    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Usuń użytkownika</h1>
            <a href="/user/list" class="d-none d-sm-inline-block btn btn-sm btn-secondary shadow-sm"><i
                    class="fas fa-download fa-sm text-white-50"></i> Lista użytkowników</a>
        </div>
        <div id="content-wrapper" class="d-flex justify-content-center">

            <form action="/user/delete" method="post">
                Czy na pewno chcesz usunąć użytkownika <b>${user.getUserName()}</b>?
                <div class="form-group d-flex justify-content-center pt-2">


                    <input type="radio" class="btn-check" name="options" value="yes" id="option1">
                    <label class="btn btn-secondary mx-2" for="option1">Tak</label>

                    <input type="radio" class="btn-check" name="options" value="no" id="option2" checked>
                    <label class="btn btn-secondary mx-2" for="option2">Nie</label>

                </div>
                <div class="d-flex justify-content-center">
                    <button type="submit" class="btn btn-secondary">
                        Prześlij
                    </button>
                </div>

            </form>

        </div>
        <ul>
            <%@ include file="/fragments/footer.jsp" %>
        </ul>

    </div>


    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
            integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
            integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
            integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
            crossorigin="anonymous"></script>
</body>
</html>

