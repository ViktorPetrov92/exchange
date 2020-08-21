package com.example.task.entities.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

// This is data transfer object (DTO) that we get from the input of user in the index.html and
// it's send to the service to create new transaction
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class TransactionDTO {
    float currentValue;
    String currentCurrency;
    String targetCurrency;
    float targetValue;
}
