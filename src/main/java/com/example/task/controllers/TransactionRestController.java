package com.example.task.controllers;

import com.example.task.exceptions.*;
import com.example.task.entities.Transaction;
import com.example.task.entities.dto.TransactionDto;
import com.example.task.services.base.TransactionService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import javax.validation.Valid;
import java.io.IOException;

@RestController
@RequestMapping("/api")
@RequiredArgsConstructor
public class TransactionRestController {
    private static final String SERVER_ERROR = "Transaction unavailable at the moment. Try again in few minutes";
    private final TransactionService transactionService;

    /**
     * {@code GET /rate} : Get exchange rate between two currency's
     * @param currentCurrency initial currency
     * @param targetCurrency  the currency you want to rate
     * @return float : the rate between currency's {@code status 200 OK}
     * @throws ResponseStatusException if params are missing {@code status 400 Bad Request}
     * @throws ResponseStatusException if Http Request is not completed to external api
     */
    @GetMapping("/rate")
    public float getRate(@RequestParam String currentCurrency, String targetCurrency) {
        try {
            return transactionService.getExchangeRate(currentCurrency, targetCurrency);
        } catch (InvalidInputException iie) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, iie.getMessage());
        } catch (IOException | InterruptedException ex) {
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, SERVER_ERROR);
        }
    }

    /**
     * {@code GET /rate/amount} : Get exchange rate between two currency's with amount
     * @param currentCurrency initial currency
     * @param targetCurrency  the currency you want to rate
     * @param amount initial currency's amount
     * @return float : the rate between currency's with selected amount {@code status 200 OK}
     * @throws ResponseStatusException if params are missing {@code status 400 Bad Request}
     * @throws ResponseStatusException if Http Request is not completed to external api
     */
    @GetMapping("/rate/amount")
    public float getRateWithAmount(
            @RequestParam String currentCurrency,
            @RequestParam String targetCurrency,
            @RequestParam int amount) {
        try {
            return transactionService.getExchangeRateWithAmount(currentCurrency, targetCurrency, amount);
        } catch (NumberFormatException | InvalidInputException nfe) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, nfe.getMessage());
        } catch (IOException | InterruptedException ex) {
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, SERVER_ERROR);
        }
    }
    /**
     * {@code POST /create} : Create and save new transaction in DB
     * body TransactionDTO : Data transfer object for Transaction
     * @return Transaction : Created and saved transaction with unique ID
     * @throws ResponseStatusException if params are missing {@code status 400 Bad Request}
     */
    @PostMapping("/create")
    public Transaction create(@RequestBody @Valid TransactionDto dto) {
        try {
            return transactionService.create(dto);
        } catch (InvalidInputException iie) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, iie.getMessage());
        }
    }
}
