package com.example.task;

import com.example.task.exceptions.*;
import com.example.task.entities.Transaction;
import com.example.task.entities.dto.TransactionDto;
import com.example.task.repositories.TransactionRepository;
import com.example.task.services.TransactionServiceImpl;
import org.junit.Assert;
import org.junit.Test;
import org.junit.jupiter.api.Assertions;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import javax.persistence.EntityNotFoundException;
import java.io.IOException;

import static org.junit.jupiter.api.Assertions.assertThrows;


@RunWith(MockitoJUnitRunner.class)
public class ServiceTests {
    @Mock
    private TransactionRepository mockRepository;

    @InjectMocks
    private TransactionServiceImpl mockService;

    @Test
    public void createShould_CallRepository() {
        // Arrange
        TransactionDto dto = new TransactionDto();
        dto.setCurrentCurrency("BGN");
        dto.setTargetCurrency("BGN");
        dto.setCurrentValue(1);
        dto.setTargetValue(1);
        // Act
        Transaction transaction = mockService.create(dto);

        // Assert
        Mockito.verify(mockRepository,
                Mockito.times(1)).save(transaction);
    }

    @Test
    public void createShould_ThrowExceptionWhen_CurrentCurrencyIsMissing() {
        // Arrange
        TransactionDto dto = new TransactionDto();
        dto.setCurrentCurrency("");
        dto.setTargetCurrency("BGN");
        dto.setCurrentValue(1);
        dto.setTargetValue(1);
        // Act
        // Assert
        assertThrows(InvalidInputException.class,
                () -> mockService.create(dto));
    }

    @Test
    public void createShould_ThrowExceptionWhen_TargetCurrencyIsMissing() {
        // Arrange
        TransactionDto dto = new TransactionDto();
        dto.setCurrentCurrency("BGN");
        dto.setTargetCurrency("");
        dto.setCurrentValue(1);
        dto.setTargetValue(1);
        // Act
        // Assert
        assertThrows(InvalidInputException.class,
                () -> mockService.create(dto));
    }

    @Test
    public void createShould_ThrowExceptionWhen_CurrentValueIsZero() {
        // Arrange
        TransactionDto dto = new TransactionDto();
        dto.setCurrentCurrency("BGN");
        dto.setTargetCurrency("BGN");
        dto.setCurrentValue(0);
        dto.setTargetValue(1);
        // Act
        // Assert
        assertThrows(InvalidInputException.class,
                () -> mockService.create(dto));
    }

    @Test
    public void createShould_ThrowExceptionWhen_TargetValueIsZero() {
        // Arrange
        TransactionDto dto = new TransactionDto();
        dto.setCurrentCurrency("BGN");
        dto.setTargetCurrency("BGN");
        dto.setCurrentValue(1);
        dto.setTargetValue(0);
        // Act
        // Assert
        assertThrows(InvalidInputException.class,
                () -> mockService.create(dto));
    }

    @Test
    public void createShould_ThrowExceptionWhen_AnyValueIsNegative() {
        // Arrange
        TransactionDto dto = new TransactionDto();
        dto.setCurrentCurrency("BGN");
        dto.setTargetCurrency("BGN");
        dto.setCurrentValue(-5);
        dto.setTargetValue(5);
        // Act
        // Assert
        assertThrows(InvalidInputException.class,
                () -> mockService.create(dto));
    }

    @Test
    public void getTransactionsByDateShould_CallRepository() {
        // Arrange
        Pageable pageable = PageRequest.of(0, 10, Sort.by("date").descending());
        ;

        // Act
        mockService.getTransactionsByDate("", pageable);
        // Assert
        Mockito.verify(mockRepository,
                Mockito.times(1)).findAllByDateContaining("", pageable);
    }

    @Test
    public void getExchangeRateShould_ReturnFloat() throws IOException, InterruptedException {
        // Arrange
        String currentCurrency = "BGN";
        String targetCurrency = "BGN";

        // Act
        float result = mockService.getExchangeRate(currentCurrency, targetCurrency);
        // Assert
        Assert.assertEquals(1, result, 0.0001);
    }

    @Test
    public void getExchangeRateShould_ThrowExceptionWhen_CurrentCurrencyIsMissing() {
        // Arrange
        String currentCurrency = "";
        String targetCurrency = "BGN";

        // Act
        // Assert
        assertThrows(InvalidInputException.class,
                () -> mockService.getExchangeRate(currentCurrency, targetCurrency));
    }

    @Test
    public void getExchangeRateShould_ThrowExceptionWhen_TargetCurrencyIsMissing() {
        // Arrange
        String currentCurrency = "BGN";
        String targetCurrency = "";

        // Act
        // Assert
        assertThrows(InvalidInputException.class,
                () -> mockService.getExchangeRate(currentCurrency, targetCurrency));
    }

    @Test
    public void getExchangeRateWithAmountShould_ReturnFloat() throws IOException, InterruptedException {
        // Arrange
        String currentCurrency = "BGN";
        String targetCurrency = "BGN";
        int amount = 1;

        // Act
        float result = mockService.getExchangeRateWithAmount(currentCurrency, targetCurrency, amount);
        // Assert
        Assert.assertEquals(1, result, 0.0001);
    }

    @Test
    public void getExchangeRateWithAmountShould_ThrowExceptionWhen_CurrentCurrencyIsMissing() {
        // Arrange
        String currentCurrency = "";
        String targetCurrency = "BGN";
        int amount = 1;
        // Act
        // Assert
        assertThrows(InvalidInputException.class,
                () -> mockService.getExchangeRateWithAmount(currentCurrency, targetCurrency, amount));
    }

    @Test
    public void getExchangeRateWithAmountShould_ThrowExceptionWhen_TargetCurrencyIsMissing() {
        // Arrange
        String currentCurrency = "BGN";
        String targetCurrency = "";
        int amount = 1;
        // Act
        // Assert
        assertThrows(InvalidInputException.class,
                () -> mockService.getExchangeRateWithAmount(currentCurrency, targetCurrency, amount));
    }

    @Test
    public void getExchangeRateWithAmountShould_ThrowExceptionWhen_AmountIsZeroOrNegative() {
        // Arrange
        String currentCurrency = "BGN";
        String targetCurrency = "BGN";
        int amount = -1;
        // Act
        // Assert
        assertThrows(InvalidInputException.class,
                () -> mockService.getExchangeRateWithAmount(currentCurrency, targetCurrency, amount));
    }

}
