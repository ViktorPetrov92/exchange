package com.example.task;

import com.example.task.entities.Transaction;
import com.example.task.entities.dto.TransactionDTO;
import com.example.task.repositories.TransactionRepository;
import com.example.task.services.TransactionServiceImpl;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;

import java.util.Collections;
import java.util.List;


@RunWith(MockitoJUnitRunner.class)
public class ServiceTests {
    @Mock
    private TransactionRepository mockRepository;

    @InjectMocks
    private TransactionServiceImpl mockService;

    @Test
    public void createShould_CallRepository() {
        // Arrange
        TransactionDTO dto = new TransactionDTO();

        // Act
        Transaction transaction = mockService.create(dto);

        // Assert
        Mockito.verify(mockRepository,
                Mockito.times(1)).save(transaction);
    }

    @Test
    public void getAllByDateContainingShould_CallRepository() {
        // Arrange
        Transaction expected = new Transaction();
        Mockito.when(mockRepository.getAllByDateContaining(""))
                .thenReturn(Collections.singletonList(expected));

        // Act
        List<Transaction> returnedComments = mockService.getTransactionsByDate("");
        // Assert
        Assert.assertSame(1, returnedComments.size());
    }
}
