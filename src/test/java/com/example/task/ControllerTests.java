package com.example.task;

import com.example.task.controllers.TransactionRestController;

import com.example.task.entities.dto.TransactionDto;
import com.example.task.services.base.TransactionService;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ObjectWriter;
import com.fasterxml.jackson.databind.SerializationFeature;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@ExtendWith(SpringExtension.class)
@WebMvcTest(controllers = TransactionRestController.class)
public class ControllerTests {

    public static final MediaType APPLICATION_JSON_UTF8 = new MediaType(MediaType.APPLICATION_JSON.getType(), MediaType.APPLICATION_JSON.getSubtype(), StandardCharsets.UTF_8);
    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private TransactionService transactionService;

    @Autowired
    private ObjectMapper objectMapper;

    @Test
    public void getExchangeRateShouldReturnOK() throws Exception {
        String uri = "/api/rate";
        mockMvc.perform(MockMvcRequestBuilders.get(uri)
                .param("currentCurrency", "BGN")
                .param("targetCurrency", "BGN")
                .accept(MediaType.APPLICATION_JSON_VALUE))
                .andExpect(status().isOk());
    }

    @Test
    public void getExchangeRateShouldReturn400WhenNoParams() throws Exception {
        String uri = "/api/rate";
        mockMvc.perform(MockMvcRequestBuilders.get(uri)
                .accept(MediaType.APPLICATION_JSON_VALUE))
                .andExpect(status().isBadRequest());
    }

    @Test
    public void getExchangeWithAmountRateShouldReturnOK() throws Exception {
        String uri = "/api/rate/amount";
        mockMvc.perform(MockMvcRequestBuilders.get(uri)
                .param("currentCurrency", "BGN")
                .param("targetCurrency", "BGN")
                .param("amount", "1")
                .accept(MediaType.APPLICATION_JSON_VALUE))
                .andExpect(status().isOk());
    }

    @Test
    public void getExchangeWithAmountRateShouldReturn400WhenNoParams() throws Exception {
        String uri = "/api/rate/amount";
        mockMvc.perform(MockMvcRequestBuilders.get(uri)
                .accept(MediaType.APPLICATION_JSON_VALUE))
                .andExpect(status().isBadRequest());
    }


    @Test
    public void createShouldReturnOK() throws Exception {
        String uri = "/api/create";
        TransactionDto dto = new TransactionDto();
        dto.setCurrentValue(1);
        dto.setCurrentCurrency("EUR");
        dto.setTargetValue(1);
        dto.setTargetCurrency("EUR");
        objectMapper.configure(SerializationFeature.WRAP_ROOT_VALUE, false);
        ObjectWriter objectWriter = objectMapper.writer().withDefaultPrettyPrinter();
        String requestJson = objectWriter.writeValueAsString(dto);

        mockMvc.perform(MockMvcRequestBuilders.post(uri)
                .content(requestJson)
                .contentType(APPLICATION_JSON_UTF8))
                .andExpect(status().isOk());
    }
}
