
let italianButton = document.getElementById("italian-button");

italianButton.addEventListener("click", function() {
        document.getElementById("input-email").textContent="E-mail";
        document.getElementById("inputEmail").setAttribute("placeholder", "E-mail");
        document.getElementById("input-password").textContent="Parola d'ordine";
        document.getElementById("inputPassword").setAttribute("placeholder", "Parola d'ordine");
        document.getElementById("input-address").textContent="Indrizzo";
        document.getElementById("inputAddress2").setAttribute("placeholder", "Appartamento, studio o piano");
        document.getElementById("input-address2").textContent="Indrizzo 2";
        document.getElementById("input-city").textContent="Città";
        document.getElementById("input-state").textContent="Stato";
        document.getElementById("postal-code").textContent="Codice Postale";
        document.getElementById("heading").textContent="Forma dall'inglese all'italiano";
        document.getElementById("button-sign-in").textContent="registrati";
        document.getElementById("flag").src="image/italy-flag-200px.png";

    }
);

let englishButton = document.getElementById("english-button");

englishButton.addEventListener("click", function() {
        document.getElementById("input-email").textContent="Email";
        document.getElementById("inputEmail").setAttribute("placeholder", "Email");
        document.getElementById("input-password").textContent="Password";
        document.getElementById("inputPassword").setAttribute("placeholder", "Password");
        document.getElementById("input-address").textContent="Address";
        document.getElementById("input-address2").textContent="Address 2";
        document.getElementById("inputAddress2").setAttribute("placeholder", "Apartment, studio or floor");
        document.getElementById("input-city").textContent="City";
        document.getElementById("input-state").textContent="State";
        document.getElementById("postal-code").textContent="Postal Code";
        document.getElementById("heading").textContent="English to Italian form";
        document.getElementById("button-sign-in").textContent="Sign in";
        document.getElementById("flag").src="image/us_british-flags-200px.jpg";
    }
);





