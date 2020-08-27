package com.example.task.entities.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.JsonNode;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ExchangeRateDto {
        @JsonProperty("success")
        Boolean success;
        @JsonProperty("base")
        String base;
        @JsonProperty("date")
        String date;
        @JsonProperty("rates")
        public
        JsonNode rates;
}
