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
    <div class="form--steps-instructions">
        <div class="form--steps-container">
            <h3>Ważne!</h3>
            <p data-step="1" class="active">
                Uzupełnij szczegóły dotyczące Twoich rzeczy. Dzięki temu będziemy
                wiedzieć komu najlepiej je przekazać.
            </p>
            <p data-step="2">
                Uzupełnij szczegóły dotyczące Twoich rzeczy. Dzięki temu będziemy
                wiedzieć komu najlepiej je przekazać.
            </p>
            <p data-step="3">
                Jeśli wiesz komu chcesz pomóc, możesz wpisać nazwę tej organizacji w
                wyszukiwarce. Możesz też filtrować organizacje po ich lokalizacji
                bądź celu ich pomocy.
            </p>
            <p data-step="4">
                Na podstawie Twoich kryteriów oraz rzeczy, które masz do oddania
                wybraliśmy organizacje, którym możesz pomóc. Wybierz jedną, do
                której trafi Twoja przesyłka.
            </p>
            <p data-step="5">Podaj adres oraz termin odbioru rzeczy.</p>
        </div>
    </div>


    <div class="form--steps-container">
    <form id="add-gift-form" method="post">

        <div data-step="2" class="active">
            <h3>Zaznacz co chcesz oddać:</h3>

            <c:forEach items="${category}" var="category">

                <div class="form-group form-group--checkbox choosing-organization">
                    <label>
                        <input type="radio" name="category"  value="${category.id}"/>
                        <span class="checkbox radio" multiple="true"></span>
                        <span class="description">
                            <div class="title"> <span id="category-name" >${category.name} </span> </div>
                            </span>
                    </label>
                </div>

            </c:forEach>


            <h3>Podaj liczbę 60l worków, w które spakowałeś/aś rzeczy:</h3>

            <div class="form-group form-group--inline">
                <label>
                    Liczba 60l worków:
                    <input id="amountOfBags" type="number" name="quantity" step="1" min="1"/>
                </label>
            </div>


            <h3>Wybierz organizacje, której chcesz pomóc:</h3>

                <c:forEach items="${institution}" var="institution">

                    <div class="form-group form-group--checkbox choosing-organization">
                        <label>
                            <input type="radio" name="institution" value="${institution.id}"/>
                            <span class="checkbox radio"></span>
                            <span class="description">
                                <div class="title"> <span id="organization-name">${institution.name}</span></div>
                                    <div class="subtitle">
                                        Cel i misja: ${institution.description}
                                    </div>
                            </span>
                        </label>
                    </div>

                </c:forEach>

            <h3>Podaj adres oraz termin odbioru rzecz przez kuriera:</h3>

                <div class="form-section form-section--columns">
                    <div class="form-section--column">
                        <h4>Adres odbioru</h4>
                        <div class="form-group form-group--inline">
                            <label> Ulica <input id="street" type="text" name="street"/> </label>
                        </div>

                        <div class="form-group form-group--inline">
                            <label> Miasto <input id="city" type="text" name="city"/> </label>
                        </div>

                        <div class="form-group form-group--inline">
                            <label>
                                Kod pocztowy <input id="zipCode" type="text" name="zipCode"/>
                            </label>
                        </div>
                    </div>

                    <div class="form-section--column">
                        <h4>Termin odbioru</h4>
                        <div class="form-group form-group--inline">
                            <label> Data <input id="pickUpDate" type="date" name="pickUpDate"/> </label>
                        </div>

                        <div class="form-group form-group--inline">
                            <label> Godzina <input id="pickUpTime" type="time" name="pickUpTime"/> </label>
                        </div>

                        <div class="form-group form-group--inline">
                            <label>
                                Uwagi dla kuriera
                                <textarea id="text" name="pickUpComment" rows="5"></textarea>
                            </label>
                        </div>
                    </div>
                </div>

            <div class="form-group form-group--buttons">
                <button type="submit" class="btn submit sixth-slide">Potwierdzam</button>
            </div>
        </div>
    </form>
    </div>
</section>


    <jsp:include page="footer.jsp"/>

</body>

</html>