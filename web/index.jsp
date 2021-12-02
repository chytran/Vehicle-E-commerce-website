<%-- 
    Document   : index
    Created on : Nov 18, 2021, 9:37:16 PM
    Author     : kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        *, *::before, *::after {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        
        .link {
            z-index: var(--z-high);
            color: #121212;
            margin: 2rem;
            background-color: #FFF;
            padding: 1rem 2rem;
            border-radius: 10%;
            box-shadow: 1px 2px 5px #121212;
            font-size: 2rem;
            font-family: 'Poppins', sans-serif;
            font-weight: bold;
            transition: 0.3s;
        }
        
        .link:hover {
        opacity: 0.85;
    }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: var(--body-font);
            font-size: var(--normal-font-size);
        }

        h1, h2, h3 {
            color: var(--main-black);
            font-weight: var(--font-semi-bold);
            font-family: var(--body-font);
        }

        section {
            width: 100%;
            position: relative;
        }

        a {
            text-decoration: none;
        }

        img, video {
            max-width: 100%;
            height: auto;
        }

        button, input {
            border: none;
            font-size: var(--normal-font-size);
        }

        button {
            cursor: pointer;
        }

        input {
            outline: none;
        }
        .main__container {
            max-width: 100%;
            width: 100%;
            height: 100vh;
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            z-index: 100;
        }
        
        .bg {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            opacity: 0.68;
            z-index: 10;
        }
        
        .main__text {
            margin-bottom: 8rem;
            opacity: 0.89;
            z-index: 100;
            font-weight: 500;
            font-size: 4rem;
            text-transform: uppercase;
            color: #121212;
        }.container__main {
            z-index: 1000;
        }
    </style>
    <body>
        <main class="main__container">
            <img src="image/janusz-maniak-o1GNCjgGu-g-unsplash.jpg" class="bg" alt="">
            <h2 class="main__text">Welcome to Vehimecha</h2>
            <div class="container__main">
                <a class="link" href="VehicleServlet?sort=n&page=1&vehicle=b">Boat</a> 
                <a class="link" href="VehicleServlet?sort=n&page=1&vehicle=c">Car</a>
                <a class="link" href="VehicleServlet?sort=n&page=1&vehicle=m">Motorcycle</a> 
            </div>
        </main>
        
    </body>
</html>
