package com.example.task.controllers;

import com.example.task.entities.Transaction;
import com.example.task.services.TransactionServiceImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.*;


// This is the API we need to store and get transactions
@Controller
@RequiredArgsConstructor
public class TransactionController {
    private final TransactionServiceImpl transactionService;

    @GetMapping("/")
    public String showHomePage() {
        return "index";
    }

    // By given date by the user we get all transactions from database
    @GetMapping("/filter")
    public String getAllByDate(Model model, @RequestParam(value = "date") String date,@PageableDefault Pageable pageable) {
        Page<Transaction> pages = transactionService.getTransactionsByDate(date, pageable);
        model.addAttribute("pages", pages);
        model.addAttribute("transactions",pages.getContent());
        model.addAttribute("date",date);
        return "index";
    }

}
