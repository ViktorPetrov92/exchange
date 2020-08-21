package com.example.task.services.base;

import com.example.task.entities.Transaction;
import com.example.task.entities.dto.TransactionDTO;

import java.util.List;

public interface TransactionService {

    Transaction create(TransactionDTO dto);

    List<Transaction> getTransactionsByDate(String date);
}
