package com.jtspringproject.JtSpringProject.objects;

import java.util.ArrayList;
import java.util.List;

public class Buyer extends Person{
    public List<Transaction> transactions;

    public Buyer(){
        this.transactions = new ArrayList<>();
    }

    public Buyer(int id){
        this.id = id;
    }
    public List<Transaction> getTransactions() {
        return this.transactions;
    }

    public void addTransaction(Transaction transaction) {
        this.transactions.add(transaction);
    }
}