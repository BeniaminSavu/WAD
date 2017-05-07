package org.hacktronic.service;

import java.util.List;

import org.hacktronic.persistence.model.TransactionModel;


public interface TransactionService {

	TransactionModel create(TransactionModel transaction);

	TransactionModel getById(int cartId);

	void update(TransactionModel cart);

	void delete(int cartId);

	TransactionModel getActiveTransaction();

	List<TransactionModel> getPurchesedTransactions();

}