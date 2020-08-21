# exchange
This is a foreign exchange application. Created with java 8, Spring boot, Gradle, MariaDB, HTML, CSS, Javascript.
The application request a Lombok library. For easy set up : https://www.baeldung.com/lombok-ide
Also it needs a database. SQL script is given in resources package.
From resources/application.properties you need to set username and password for your local database.
After setting up the database you can simple build the application with command prompt:
first go to path folder you store the application and type in command prompt "gradle bootRun".
If you don't have gradle : https://gradle.org/install/

The main functions are:
1. Get current exchange rate by giving current currency and the currency you want to rate.
The Javascript function calls an API and return the rate.

2. Get exchange rate by giving current currency, amount of it and currency you want to show.
The Javascript function calls an API and return the amount in the new currency and unique ID of the transaction.
Function also save the transaction in database, with unique ID.

3. Get all transactions by giving date.
This calls an API that returns all transactions in this date (stored in DB) in practical table,
with pagination and search.
