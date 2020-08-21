package com.example.task.controllers;

import com.example.task.entities.Transaction;
import com.example.task.entities.dto.TransactionDTO;
import com.example.task.services.TransactionServiceImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;


import javax.persistence.EntityNotFoundException;
import javax.validation.Valid;
import java.util.List;

// This is the RestAPI we need to store and get transactions
@RestController
@RequestMapping("/api/transaction")
@RequiredArgsConstructor
public class TransactionController {
    private final TransactionServiceImpl transactionService;

    // By given input from the user we send DTO to the service and create and store new transaction
    @PostMapping
    public Transaction create(@RequestBody @Valid TransactionDTO dto) {
        try {
            return transactionService.create(dto);
        } catch (EntityNotFoundException nfe) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, nfe.getMessage());
        }
    }

    // By given date by the user we get all transactions from database
    @GetMapping("/filter")
    public List<Transaction> getAllByDate(@RequestParam String date) {
        return transactionService.getTransactionsByDate(date);
    }
}
