"use strict";

$(function () {
    getExchangeCurrencyRate();
    getExchange();
    getTransactions();
});
// First function is to get current rate between given currency's
// First we check if the input is correct and then we fetch from API the result
function getExchangeCurrencyRate() {
    $(".get-rate").on("click", "", function () {
        let currentCurrency = $("#current-currency").val();
        let targetCurrency = $("#target-currency").val();

        let error = document.getElementById("error-panel-rate");

        if (currentCurrency === "" || targetCurrency === "") {
            error.innerHTML = "Please select currency";
        } else {
            error.innerHTML = "";
            fetch(
                "https://api.exchangerate.host/latest?base=" + currentCurrency + "&symbols=" + targetCurrency
            ).then((res) => res.json())
                .then(function (data) {

                        let res = JSON.stringify(data.rates, null, 4);
                        res = res.replace(/[{}]/g, "");
                        $('#result').html("\"" + currentCurrency + "\": 1 <==> " + res);
                    }
                ).catch(function () {
                alert("Transaction unavailable at the moment. Try again in few minutes")
            })
        }
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

        if (currentCurrency === "" || targetCurrency === "") {
            messageTwo.innerHTML = "Please select currency";
        } else if (isNaN(amount)) {
            message.innerHTML = "Input is not a number";
        } else if (amount === 0 || amount < 0 || amount === "") {
            amount = 1;
            message.innerHTML = "Cannot input negative number or zero";
        } else {
            message.innerHTML = "";
            messageTwo.innerHTML = "";
            fetch(
                "https://api.exchangerate.host/latest?base=" + currentCurrency + "&symbols=" + targetCurrency + "&amount=" + amount
            ).then((res) => res.json())
                .then(function (data) {
                    let res = JSON.stringify(data.rates);
                    res = res.replace(/[{}]/g, "");


                    let targetValue = res.substr(6);
                    let requestBody = {
                        "currentCurrency": currentCurrency,
                        "currentValue": amount,
                        "targetCurrency": targetCurrency,
                        "targetValue": targetValue
                    };

                    fetch(
                        "/api/transaction", {
                            method: "POST",
                            body: JSON.stringify(requestBody),
                            headers: {
                                "Content-type": "application/json",
                                "Accept": "application/json, text/plain, */*"
                            }
                        }).then((res) => res.json())
                        .then(function (el) {
                            $('#result-2').html("Transaction id: " + el.uniqueId + "  \"" + currentCurrency + "\":" + amount + " <==> " + res);
                        })
                        .catch(function () {
                            alert("Transaction incomplete. Try again in few minutes")
                        })
                })
                .catch(function () {
                    alert("Transaction unavailable at the moment. Try again in few minutes")
                })
        }
    })
}
// Third function is to get all transaction by given date.
// The result is list of transactions , but the dataTable function puts it in paged table
function getTransactions() {
    $("#get-transactions").on("click", "", function () {
        let date = $("#wanted-date").val();
        let tableBody = $("#transactions-table");
        let table = $("#example");
        const url = new URL("http://localhost:8080/api/transaction/filter");
        let params = {date: date};
        url.search = new URLSearchParams(params).toString();

        fetch(url, {
            method: "GET",
            headers: {
                "Content-type": "application/json",
                "Accept": "application/json, text/plain, */*"
            }
        }).then((res) => res.json())
            .then(function (transactions) {
                if ($.fn.dataTable.isDataTable('#example')) {
                    table = $('#example').DataTable();
                    table.destroy();
                }
                tableBody.empty();
                transactions.forEach(function (transaction) {
                    tableBody.append(
                        "    <tr>\n" +
                        "        <td>" + transaction.date + "</td>\n" +
                        "        <td>" + transaction.uniqueId + "</td>\n" +
                        "        <td>" + transaction.currentValue + "</td>\n" +
                        "        <td>" + transaction.currentCurrency + "</td>\n" +
                        "        <td>" + transaction.targetValue + "</td>\n" +
                        "        <td>" + transaction.targetCurrency + "</td>\n" +
                        "    </tr>\n"
                    );
                });
                table = $('#example').DataTable();
            });
    })

}

