package com.example.task;

import com.example.task.entities.Transaction;
import com.example.task.entities.dto.TransactionDto;
import com.example.task.repositories.TransactionRepository;
import com.example.task.services.TransactionServiceImpl;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import java.io.IOException;



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

        // Act
        Transaction transaction = mockService.create(dto);

        // Assert
        Mockito.verify(mockRepository,
                Mockito.times(1)).save(transaction);
    }

    @Test
    public void getTransactionsByDateShould_CallRepository() {
        // Arrange
        Pageable pageable= PageRequest.of(0,10, Sort.by("date").descending());;

        // Act
        mockService.getTransactionsByDate("",pageable);
        // Assert
        Mockito.verify(mockRepository,
                Mockito.times(1)).findAllByDateContaining("",pageable);
    }

    @Test
    public void getExchangeRateShould_ReturnFloat() throws IOException, InterruptedException {
        // Arrange
        String currentCurrency = "BGN";
        String targetCurrency = "BGN";

        // Act
        float result =mockService.getExchangeRate(currentCurrency,targetCurrency);
        // Assert
        Assert.assertEquals(1,result,0.0001);
    }

    @Test
    public void getExchangeRateWithAmountShould_ReturnFloat() throws IOException, InterruptedException {
        // Arrange
        String currentCurrency = "BGN";
        String targetCurrency = "BGN";
        int amount =1;

        // Act
        float result =mockService.getExchangeRateWithAmount(currentCurrency,targetCurrency,1);
        // Assert
        Assert.assertEquals(1,result,0.0001);
    }
}
