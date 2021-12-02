<%-- 
    Document   : cart
    Created on : Nov 19, 2021, 9:41:35 PM
    Author     : kevin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Cart</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <style>
        *, *::before, *::after {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
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
        .remove:hover {
            opacity: 0.8;
        }
    </style>
    <body style="display: flex; justify-content: center; align-items: center; flex-direction: column; background: #EEEEEE;">
        
        <table style="margin-top: 5rem;">
            <tr>
              <th>Quantity</th>
              <th>Description</th>
              <th>Price</th>
              <th>Amount</th>
              <th></th>
            </tr>
            <c:set var="total" value="${0}"/>
            <c:forEach var="item" items="${cart.items}">
            <tr>
            <td>
              <form action="cart" method="post">
                <input type="hidden" name="productId" value="${item.product.code}">
                <input type=text name="quantity" value="${item.quantity}" id="quantity">
                <input type="submit" value="Update">
              </form>
            </td>
            <td>${item.product.description}</td>
            <!--<td>${item.product.priceCurrencyFormat}</td>-->  
            <td>$${item.product.price}</td>
            <td>$${item.total}0</td>
            <td>
              <a class="remove" style="color: #121212; transition: 0.3s;" href="cart?productId=${item.product.code}&amp;quantity=0">Remove Item</a>
              <!--
              <form action="" method="post">
                <input type="hidden" name="productCode" 
                       value="${item.product.code}">
                <input type="hidden" name="quantity" 
                       value="0">
                <input type="submit" value="Remove Item">
              </form>
              -->
            </td>
          </tr>
          
          <c:set var="total" value="${total + item.total}"/>
          
          </c:forEach>
         
           
        </table>

        <h2 style="margin-top: 0.5rem; text-decoration: underline;">Total Amount: <c:out value='$${total}0'/></h2>  
        <form action="moneyTime" method="post">
          <input type="hidden" name="totalPrice" value="<c:out value='${total}0'/>"> 
          <input style="padding: 0.5rem 1rem; background-color: #121212; color: #FFF; margin-top: 1rem;" type="submit" name="submit">
        </form>
        
        <a style="color: #121212; margin-top: 0.5rem; font-size: 1.2rem;" href="index.jsp">Continue Shopping</a> 

    </body>
</html>
