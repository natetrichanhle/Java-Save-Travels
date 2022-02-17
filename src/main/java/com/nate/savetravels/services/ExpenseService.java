package com.nate.savetravels.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nate.savetravels.models.Expense;
import com.nate.savetravels.repos.ExpenseRepository;



@Service
public class ExpenseService {

	@Autowired
	ExpenseRepository expenseRepository;

	// returns all the expenses
	public List<Expense> allExpenses() {
		return expenseRepository.findAll();
	}

	// creates a expense
	public Expense createExpense(Expense b) {
		return expenseRepository.save(b);
	}

	// retrieves a expense
	public Expense findExpense(Long id) {
		Optional<Expense> optionalExpense = expenseRepository.findById(id);
		if (optionalExpense.isPresent()) {
			return optionalExpense.get();
		} else {
			return null;
		}
	}

	public Expense updateExpense(Expense expense, Long id) {
		Optional<Expense> optionalExpense = expenseRepository.findById(id);
		if(optionalExpense.isPresent()) {
			return expenseRepository.save(expense);
		} else {
			return null;
		}
	}

	public void deleteExpense(Long id) {
		Optional<Expense> optionalExpense = expenseRepository.findById(id);
		if(optionalExpense.isPresent()) {
			expenseRepository.deleteById(id);			
		}
	}
}
