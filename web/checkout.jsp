<%-- 
    Document   : checkout
    Created on : Nov 22, 2021, 11:44:23 AM
    Author     : kevin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background: #EEEEEE; display: flex; justify-content: center; align-items: center; flex-direction:  column;">
        <h1 style="font-size: 2rem; text-decoration: underline; margin-top: 3rem; margin-bottom: -2.5rem; align-self: center;">Checkout</h1>
        <form style="display: flex; justify-content: center; align-items: center; flex-direction: column; row-gap:0.5rem; margin-top: 5rem;" action="checkOut" method="post">
            <div>
                <label for="firstName">First Name:</label>
                <input type="text" class="form-control" id="firstName" name="firstName" placeholder="" value="" required>
            </div>
            <div>
                <label for="lastName">Last Name:</label>
                <input type="text" class="form-control" id="lastName" name="lastName" placeholder="" value="" required>
            </div>
            <div>
                <label for="txtEmail">Email:</label>
                <input type="email" class="form-control" id="txtEmail" name="txtEmail" placeholder="" value="" required>
            </div>
            <div>
                <label for="address">Address:</label>
                <input type="text" class="form-control" id="address" name="address" placeholder="" value="" required>
            </div>
            <div>
                <label for="country">Country:</label>
                <input type="text" class="form-control" id="country" name="country" placeholder="" value="" required>
            </div>
            <div>
                <label for="state">State:</label>
                <input type="text" class="form-control" id="state" name="state" placeholder="" value="" required>
            </div>
            <div>
                <label for="zip">Zip Code:</label>
                <input type="text" class="form-control" id="zip" name="zipCode" placeholder="" value="" required>
            </div>
            <div style="display: flex; justify-content: center; align-items: center; flex-direction: row;">
                <label for="credit">Card Payment Method:</label>
                <div style="margin-left: 0.5rem;">
                    <div>
                        <label for="credit">Credit Card:</label>
                        <input type="radio" class="form-control" id="credit" name="paymentMethod" placeholder="" value="credit" checked required>
                    </div>
                    <div>
                        <label for="debit">Debit Card:</label>
                        <input type="radio" class="form-control" id="debit" name="paymentMethod" placeholder="" value="debit" required>
                    </div>
                </div> 
            </div>
            <div>
                <label for="cc-name">Name on card:</label>
                <input type="text" class="form-control" id="cc-name" name="cardName" placeholder="" value="" required>
            </div>
            <div>
                <label for="cc-number">Zip Code:</label>
                <input type="text" class="form-control" id="cc-number" name="cardNumber" placeholder="" value="" required>
            </div>
            <div>
                <label for="cc-expire">Expiration:</label>
                <input type="text" class="form-control" id="cc-expire" name="cardExpire" placeholder="" value="" required>
            </div>
            <div>
                <label for="cc-expiration">CVV:</label>
                <input type="text" class="form-control" id="cc-expiration" name="cardCVV" placeholder="" value="" required>
            </div>
                <input type="hidden" id="totalPrice" name="totalPrice" value="${mc.fullPrice}">
            <input class="ml-auto btn hvr-hover" type="submit" name="submit" value=" Place Order ">
            
        </form>
    </body>
</html>
