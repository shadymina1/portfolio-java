<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/style.css">
    <script src="https://kit.fontawesome.com/c4b1e249b0.js" crossorigin="anonymous"></script>
    <title>Shady Mina</title>
</head>

<body>
    <header>
        <nav class="navbar my_nav navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <div class="nav-spacer"></div>

                <a class="navbar-brand" href="http://localhost:8080/javaf/home.jsp">Shady Mina</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="http://localhost:8080/javaf/skills.jsp">My Skilles</a>
                        </li>
                    </ul>
                    <form class="d-flex" action="http://localhost:8080/javaf/contact.jsp" >

                        <button class="btn btn-primary btn-adj" type="submit">Contact Now!</button>
                    </form>
                    <div class="nav-spacer"></div>
                </div>

            </div>
        </nav>
    </header>