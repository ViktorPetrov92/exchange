"use strict";

$(function () {
    getExchangeCurrencyRate();
    getExchange();
});
// First function is to get current rate between given currency's
// First we check if the input is correct and then we fetch from API the result
function getExchangeCurrencyRate() {
    $(".get-rate").on("click", "", function () {
        let currentCurrency = $("#current-currency").val();
        let targetCurrency = $("#target-currency").val();

        let error = document.getElementById("error-panel-rate");

        error.innerHTML = "";
        fetch(
            "/api/rate?currentCurrency=" + currentCurrency + "&targetCurrency=" + targetCurrency
        ).then((res) => res.json())
            .then(function (data) {
                    if (data.status === 400) {
                        error.innerHTML = data.message;
                    } else {
                        $('#result').html(currentCurrency + ": 1 <==> " + targetCurrency + " : " + data);
                    }
                }
            )
    })
}

// Second functions is to get exchange rate by given amount and currency's.
// First we check for valid input. Then we fetch the result from the API and send another
// to our API to create and store the transaction. Then we return the unique ID and the result
function getExchange() {
    $("#get-exchange").on("click", "", function () {
        let currentCurrency = $("#current-currency-exchange").val();
        let targetCurrency = $("#target-currency-exchange").val();
        let amount = $("#exchange-value").val();
        let message = document.getElementById("error-panel");
        let messageTwo = document.getElementById("error-panel-2");

        // if (currentCurrency === "" || targetCurrency === "") {
        //     messageTwo.innerHTML = "Please select currency";
        // } else if (isNaN(amount)) {
        //     message.innerHTML = "Input is not a number";
        // } else if (amount === 0 || amount < 0 || amount === "") {
        //     amount = 1;
        //     message.innerHTML = "Cannot input negative number or zero";
        // } else {
        //     message.innerHTML = "";
        //     messageTwo.innerHTML = "";
        fetch(
            "/api/rate/amount?currentCurrency=" + currentCurrency + "&targetCurrency=" + targetCurrency + "&amount=" + amount
        ).then((res) => res.json())
            .then(function (data) {
                if (data.status === 400) {
                    message.innerHTML = data.message;
                } else {
                    let requestBody = {
                        "currentCurrency": currentCurrency,
                        "currentValue": amount,
                        "targetCurrency": targetCurrency,
                        "targetValue": data
                    };

                    fetch(
                        "/api/create", {
                            method: "POST",
                            body: JSON.stringify(requestBody),
                            headers: {
                                "Content-type": "application/json",
                                "Accept": "application/json, text/plain, */*"
                            }
                        }).then((res) => res.json())
                        .then(function (el) {
                            $('#result-2').html("Transaction id: " + el.uniqueId + " Result: " + data);
                        })
                }
            })

    })
}
