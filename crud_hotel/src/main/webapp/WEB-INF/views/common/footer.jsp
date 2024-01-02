
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
</main>

<style>
    /* Generic styling */
    * {
        box-sizing: border-box;
        font-family: "Lato", sans-serif;
        margin: 0;
        padding: 0;
    }
    ul {
        list-style: none;
        padding-left: 0;
    }
    footer {
        background-color: #555;
        color: #bbb;
        line-height: 1.5;
    }
    footer a {
        text-decoration: none;
        color: #eee;
    }
    a:hover {
        text-decoration: underline;
    }
    .ft-title {
        color: #fff;
        font-family: "Merriweather", serif;
        font-size: 1.375rem;
        padding-bottom: 0.625rem;
    }
    /* Sticks footer to bottom */
    body {
        display: flex;
        min-height: 100vh;
        flex-direction: column;
    }
    .container {
        flex: 1;
    }
    /* Footer main */
    .ft-main {
        padding: 1.25rem 1.875rem;
        display: flex;
        flex-wrap: wrap;
    }
    @media only screen and (min-width: 29.8125rem /* 477px */) {
        .ft-main {
            justify-content: space-evenly;
        }
    }
    @media only screen and (min-width: 77.5rem /* 1240px */) {
        .ft-main {
            justify-content: space-evenly;
        }
    }
    .ft-main-item {
        padding: 1.25rem;
        min-width: 12.5rem;
    }

    /* Footer main | Newsletter form */
    form {
        display: flex;
        flex-wrap: wrap;
    }
    input[type="email"] {
        border: 0;
        padding: 0.625rem;
        margin-top: 0.3125rem;
    }
    input[type="submit"] {
        background-color: #00d188;
        color: #fff;
        cursor: pointer;
        border: 0;
        padding: 0.625rem 0.9375rem;
        margin-top: 0.3125rem;
    }
    /* Footer social */
    .ft-social {
        padding: 0 1.875rem 1.25rem;
    }
    .ft-social-list {
        display: flex;
        justify-content: center;
        border-top: 1px #777 solid;
        padding-top: 1.25rem;
    }
    .ft-social-list li {
        margin: 0.5rem;
        font-size: 1.25rem;
    }
    /* Footer legal */
    .ft-legal {
        padding: 0.9375rem 1.875rem;
        background-color: #333;
    }
    .ft-legal-list {
        width: 100%;
        display: flex;
        flex-wrap: wrap;
    }
    .ft-legal-list li {
        margin: 0.125rem 0.625rem;
        white-space: nowrap;
    }
    /* one before the last child */
    .ft-legal-list li:nth-last-child(2) {
        flex: 1;
    }
</style>
<%--    <footer>--%>
<%--        <div class="w-[1280px] h-[720px] relative bg-white">--%>
<%--            <div class="w-[1280px] h-[95px] left-0 top-[625px] absolute bg-stone-300"></div>--%>
<%--            <div class="left-[60px] top-[654px] absolute text-black text-3xl font-normal font-['Italianno']">CRUD Hotel</div>--%>
<%--        </div>--%>
<%--    </footer>--%>

<div class="container"></div>
<footer>
    <!-- Footer main -->
    <section class="ft-main">
        <div class="ft-main-item">
            <h2 class="ft-title">About</h2>
            <ul>
                <li><a href="#">Services</a></li>
                <li><a href="#">Portfolio</a></li>
                <li><a href="#">Pricing</a></li>
                <li><a href="#">Customers</a></li>
                <li><a href="#">Careers</a></li>
            </ul>
        </div>
        <div class="ft-main-item">
            <h2 class="ft-title">Resources</h2>
            <ul>
                <li><a href="#">Docs</a></li>
                <li><a href="#">Blog</a></li>
                <li><a href="#">eBooks</a></li>
                <li><a href="#">Webinars</a></li>
            </ul>
        </div>
        <div class="ft-main-item">
            <h2 class="ft-title">Contact</h2>
            <ul>
                <li><a href="#">Help</a></li>
                <li><a href="#">Sales</a></li>
                <li><a href="#">Advertise</a></li>
            </ul>
        </div>
        <div class="ft-main-item">
            <h2 class="ft-title">Stay Updated</h2>
            <p>Subscribe to our newsletter to get our latest news.</p>
            <form>
                <input type="email" name="email" placeholder="Enter email address">
                <input type="submit" value="Subscribe">
            </form>
        </div>
    </section>

    <!-- Footer social -->
    <section class="ft-social">
        <ul class="ft-social-list">
            <li><a href="#"><i class="fab fa-facebook"></i></a></li>
            <li><a href="#"><i class="fab fa-twitter"></i></a></li>
            <li><a href="#"><i class="fab fa-instagram"></i></a></li>
            <li><a href="#"><i class="fab fa-github"></i></a></li>
            <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
            <li><a href="#"><i class="fab fa-youtube"></i></a></li>
        </ul>
    </section>

    <!-- Footer legal -->
    <section class="ft-legal">
        <ul class="ft-legal-list">
            <li><a href="#">Terms &amp; Conditions</a></li>
            <li><a href="#">Privacy Policy</a></li>
            <li>&copy; 2024 Copyright Nowrap Inc.</li>
        </ul>
    </section>
</footer>
<script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/datepicker.min.js"></script>
</html>
