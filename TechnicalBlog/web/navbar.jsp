<%@page import="com.technical.blog.entities.User"%>

<%
    User u = (User) session.getAttribute("currentUser");

%>


<nav class="navbar navbar-expand-lg navbar-dark primary-background">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp"><span class="fa fa-certificate"></span>Technical Blog</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#"><span class="fa fa-book"></span>Learn With Programmer</a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <span class="fa fa-check-circle"></span> Programming Language
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#">R programming</a></li>
                        <li><a class="dropdown-item" href="#">Java programming</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Data Structure</a></li>
                    </ul>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#"><span class="fa fa-vcard-o"></span>Contact</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" data-toggle="modal" data-target="#add-post-model"><span class="fa fa-pinterest-p"></span>Do Post</a>
                </li>
                
                <% if (u == null) {%>
                <li class="nav-item">
                    <a class="nav-link" href="login_page.jsp"><span class="fa fa-user-circle"></span>Login </a>
                </li>

                <% }%>

                
                <% if (u == null) {%>
                <li class="nav-item">
                    <a class="nav-link" href="register_page.jsp"><span class="fa fa-user-plus"></span>Sign Up</a>
                </li>
                <% }%>
            </ul>
            <% if (u != null && u.getName().length() > 0) {%>
                <li class="nav-item d-flex">
                    <a class="nav-link" href="#!"  data-bs-toggle="modal" data-bs-target="#staticBackdrop" ><span class="fa fa-user-circle"></span><%= u.getName()%></a>
                </li>
                <% }%>
            <% if (u != null && u.getName().length() > 0) {%>
                <li class="nav-item d-flex">
                    <a class="nav-link" href="logoutServlet"><span class="fa fa-user-plus"></span>Log Out</a>
                </li>
                <% }%>
                
                <% if(u==null){%>
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-                       label="Search">
                <button class="btn btn-outline-light" type="submit">Search</button>
            </form>
            <% } %>
        </div>
    </div>
</nav>