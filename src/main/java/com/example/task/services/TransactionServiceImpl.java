package com.example.task.services;

import com.example.task.entities.Transaction;
import com.example.task.entities.dto.ExchangeRateDto;
import com.example.task.entities.dto.TransactionDto;
import com.example.task.exceptions.*;
import com.example.task.repositories.TransactionRepository;
import com.example.task.services.base.TransactionService;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class TransactionServiceImpl implements TransactionService {

    private final TransactionRepository transactionRepository;

    private static final String EXCHANGE_URI = "https://api.exchangerate.host/latest?base=";
    private static final String TIME_FORMAT = "yyyy-MM-dd HH:mm:ss";

    // This is a function to create and store new transaction in database
    @Override
    public Transaction create(TransactionDto dto) {
        if (dto.getCurrentCurrency().equals("")) {
            throw new InvalidInputException("Select current currency");
        } else if (dto.getTargetCurrency().equals("")) {
            throw new InvalidInputException("Select target currency");
        } else if (dto.getCurrentValue() == 0 || dto.getCurrentValue() < 0 || !isNumber(Float.toString(dto.getCurrentValue()))) {
            throw new InvalidInputException("Current amount must be a positive number!");
        } else if (dto.getTargetValue() == 0 || dto.getTargetValue() < 0 || !isNumber(Float.toString(dto.getTargetValue()))) {
            throw new InvalidInputException("Target amount must be a positive number!");
        } else {
            Transaction transaction = new Transaction();
            transaction.setUniqueId(GenerateUniqueId());
            transaction.setCurrentValue(dto.getCurrentValue());
            transaction.setCurrentCurrency(dto.getCurrentCurrency());
            transaction.setTargetCurrency(dto.getTargetCurrency());
            transaction.setTargetValue(dto.getTargetValue());
            transaction.setDate(getCurrentDate());

            transactionRepository.save(transaction);
            return transaction;
        }
    }

    // Function to get transaction by given date
    @Override
    public Page<Transaction> getTransactionsByDate(String date, Pageable pageable) {
        pageable = PageRequest.of(pageable.getPageNumber(), pageable.getPageSize(), Sort.by("date").descending());
        return transactionRepository.findAllByDateContaining(date, pageable);
    }

    //Function to get exchange rate between two currency's
    @Override
    public float getExchangeRate(String currentCurrency, String targetCurrency) throws IOException, InterruptedException {
        if (currentCurrency.equals("")) {
            throw new InvalidInputException("Select current currency");
        } else if (targetCurrency.equals("")) {
            throw new InvalidInputException("Select target currency");
        } else {
            HttpClient client = HttpClient.newHttpClient();
            HttpRequest request = HttpRequest.newBuilder()
                    .GET()
                    .header("accept", "application/json")
                    .uri(URI.create(EXCHANGE_URI + currentCurrency + "&symbols=" + targetCurrency))
                    .build();
            String str = mapResponseToString(client, request);
            return Float.parseFloat(str);
        }

    }

    //Function to get exchange rate between two currency's with given amount
    @Override
    public float getExchangeRateWithAmount(String currentCurrency, String targetCurrency, int amount) throws IOException, InterruptedException {
        if (currentCurrency.equals("")) {
            throw new InvalidInputException("Select current currency!");
        } else if (targetCurrency.equals("")) {
            throw new InvalidInputException("Select target currency!");
        } else if (amount == 0 || amount < 0 || !isNumber(Integer.toString(amount))) {
            throw new InvalidInputException("Amount must be a positive number!");
        } else {
            HttpClient client = HttpClient.newHttpClient();
            HttpRequest request = HttpRequest.newBuilder()
                    .GET()
                    .header("accept", "application/json")
                    .uri(URI.create(EXCHANGE_URI + currentCurrency + "&symbols=" + targetCurrency + "&amount=" + amount))
                    .build();

            String str = mapResponseToString(client, request);
            return Float.parseFloat(str);
        }
    }

    //Function to map the response from api.exchangerate.host to String
    private String mapResponseToString(HttpClient client, HttpRequest request) throws IOException, InterruptedException {
        HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());
        ObjectMapper mapper = new ObjectMapper();
        mapper.enable(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY);
        List<ExchangeRateDto> result = mapper.readValue(response.body(), new TypeReference<List<ExchangeRateDto>>() {
        });
        ExchangeRateDto rateDto = result.get(0);
        return rateDto.rates.toString().replace("{", "").replace("}", "").substring(6);
    }

    // Generate unique ID for every new transaction
    private String GenerateUniqueId() {
        return UUID.randomUUID().toString();
    }

    private String getCurrentDate() {
        LocalDateTime localDate = LocalDateTime.now();
        return DateTimeFormatter.ofPattern(TIME_FORMAT).format(localDate);
    }

    //Check if given input is number
    private boolean isNumber(String num) {
        try {
            Double test = Double.parseDouble(num);
        } catch (NumberFormatException nfe) {
            return false;
        }
        return true;
    }
}
