package com.example.task.entities;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "transactions")
public class Transaction {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "unique_id")
    private int uniqueId;

    @Column(name = "current_value")
    private float currentValue;

    @Column(name = "current_currency")
    private String currentCurrency;

    @Column(name = "target_currency")
    private String targetCurrency;

    @Column(name = "target_value")
    private float targetValue;

    @Column(name = "date")
    private String date;
}
