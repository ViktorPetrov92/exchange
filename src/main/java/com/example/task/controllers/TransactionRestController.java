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
    private final TransactionService transactionService;

    @GetMapping("/rate")
    public float getRate(@RequestParam String currentCurrency, String targetCurrency) {
        try {
            return transactionService.getExchangeRate(currentCurrency, targetCurrency);
        } catch (InvalidInputException | IOException | InterruptedException iie) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, iie.getMessage());
        }
    }

    @GetMapping("/rate/amount")
    public float getRateWithAmount(
            @RequestParam String currentCurrency,
            @RequestParam String targetCurrency,
            @RequestParam int amount) {
        try {
            return transactionService.getExchangeRateWithAmount(currentCurrency, targetCurrency, amount);
        } catch (InvalidInputException | IOException | InterruptedException iie) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, iie.getMessage());
        }
    }

    // By given input from the user we send DTO to the service and create and store new transaction
    @PostMapping("/create")
    public Transaction create(@RequestBody @Valid TransactionDto dto) {
        try {
            return transactionService.create(dto);
        } catch (InvalidInputException iie) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, iie.getMessage());
        }
    }
}
