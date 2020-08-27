package com.example.task.controllers;

import com.example.task.entities.Transaction;
import com.example.task.entities.dto.TransactionDto;
import com.example.task.services.base.TransactionService;
import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import javax.persistence.EntityNotFoundException;
import javax.validation.Valid;
import java.io.IOException;

@RestController
@RequestMapping("/api")
@RequiredArgsConstructor
public class TransactionRestController {
    private final TransactionService transactionService;

    @GetMapping("/rate")
    public float getRate(@RequestParam String currentCurrency, String targetCurrency) throws IOException, InterruptedException {
        return transactionService.getExchangeRate(currentCurrency, targetCurrency);
    }

    @GetMapping("/rate/amount")
    public float getRateWithAmount(@RequestParam String currentCurrency,
                                   String targetCurrency,
                                   int amount) throws IOException, InterruptedException {
        return transactionService.getExchangeRateWithAmount(currentCurrency, targetCurrency, amount);
    }

    // By given input from the user we send DTO to the service and create and store new transaction
    @PostMapping("/create")
    public Transaction create(@RequestBody @Valid TransactionDto dto) {
            return transactionService.create(dto);

    }
}
