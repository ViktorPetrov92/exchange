package com.example.task.services;

import com.example.task.entities.Transaction;
import com.example.task.entities.dto.TransactionDTO;
import com.example.task.repositories.TransactionRepository;
import com.example.task.services.base.TransactionService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.persistence.EntityExistsException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class TransactionServiceImpl implements TransactionService {

    private final TransactionRepository transactionRepository;

    private static final String TIME_FORMAT = "yyyy-MM-dd HH:mm:ss";

    // This is a function to create and store new transaction in database.
    @Override
    public Transaction create(TransactionDTO dto) {
        Transaction transaction = new Transaction();
        transaction.setUniqueId(GenerateUniqueId());
        transaction.setCurrentValue(dto.getCurrentValue());
        transaction.setCurrentCurrency(dto.getCurrentCurrency());
        transaction.setTargetCurrency(dto.getTargetCurrency());
        transaction.setTargetValue(dto.getTargetValue());
        transaction.setDate(getCurrentDate());

        try {
            transactionRepository.save(transaction);
            return transaction;
        } catch (EntityExistsException eee) {
            throw new EntityExistsException("Transaction with unique ID already exist");
        }
    }

    // Function to simply get all transaction by given date
    @Override
    public List<Transaction> getTransactionsByDate(String date) {
        return transactionRepository.getAllByDateContaining(date);
    }

    // Generate unique ID for every new transaction
    private String GenerateUniqueId() {
        return UUID.randomUUID().toString();
    }

    private String getCurrentDate() {
        LocalDateTime localDate = LocalDateTime.now();
        return DateTimeFormatter.ofPattern(TIME_FORMAT).format(localDate);
    }
}
