package com.example.task.services.base;

import com.example.task.entities.Transaction;
import com.example.task.entities.dto.TransactionDto;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.io.IOException;

public interface TransactionService {

    Transaction create(TransactionDto dto);

    Page<Transaction> getTransactionsByDate(String date, Pageable pageable);

    float getExchangeRate(String currentCurrency, String targetCurrency) throws IOException, InterruptedException;
    float getExchangeRateWithAmount(String currentCurrency, String targetCurrency,int amount) throws IOException, InterruptedException;

}
