<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pl">

<jsp:include page="header.jsp"/>

<body>
<header class="header--form-page">

    <div class="slogan container container--90">
        <div class="slogan--item">
            <h1>
                Oddaj rzeczy, których już nie chcesz<br/>
                <span class="uppercase">potrzebującym</span>
            </h1>

            <div class="slogan--steps">
                <div class="slogan--steps-title">Wystarczą 4 proste kroki:</div>
                <ul class="slogan--steps-boxes">
                    <li>
                        <div><em>1</em><span>Wybierz rzeczy</span></div>
                    </li>
                    <li>
                        <div><em>2</em><span>Spakuj je w worki</span></div>
                    </li>
                    <li>
                        <div><em>3</em><span>Wybierz fundację</span></div>
                    </li>
                    <li>
                        <div><em>4</em><span>Zamów kuriera</span></div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</header>

<section class="form--steps">


    <div class="form--steps-container">


        <form id="add-gift-form" method="post">

            <div data-step="2" class="active">
                <div class="form-section">
                    <h4>Oddajesz:</h4>
                    <ul>
                        <li>
                            <span class="icon icon-bag"></span>
                            <span id="amountOfBags-info" class="summary--text"
                            >${quantity} worków </span
                            >
                        </li>

                        <li>
                            <span class="icon icon-hand"></span>
                            <span id="organization-info" class="summary--text"
                            >Dla fundacji "Mam marzenie" w Warszawie</span
                            >
                        </li>
                    </ul>
                </div>
                <div class="form-section form-section--columns">
                    <div class="form-section--column">
                        <h4>Adres odbioru:</h4>
                        <ul>
                            <li>
                                Ulica:
                                <span>${street}</span>
                            </li>
                            <li>
                                Miasto:
                                <span>${city}</span>
                            </li>
                            <li>
                                Kod pocztowy:
                                <span>${zip}</span>
                            </li>
                        </ul>
                    </div>

                    <div class="form-section--column">
                        <h4>Termin odbioru:</h4>
                        <ul>
                            <li>
                                Data:
                                <span>${date}</span>
                            </li>
                            <li>
                                Godznina:
                                <span>${time}</span>
                            </li>
                            <li>
                                Komentarz:
                                <span>${comment}</span>
                            </li>
                        </ul>
                    </div>
                </div>


            </div>
        </form>
    </div>

    <jsp:include page="footer.jsp"/>

</body>

</html>