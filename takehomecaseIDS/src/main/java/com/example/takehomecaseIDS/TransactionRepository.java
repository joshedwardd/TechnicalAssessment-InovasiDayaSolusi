package com.example.takehomecaseIDS;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TransactionRepository extends JpaRepository<Transaction, Long> {
    @Query("SELECT t FROM Transaction t JOIN FETCH t.product JOIN FETCH t.status")
    List<Transaction> findAllWithDetails();
}
