package com.example.takehomecaseIDS;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

@Data
public class TransactionDTO {
    private Long id;
    private String productID;
    private String productName;
    private String amount;
    private String customerName;
    private int status;
    @JsonFormat(shape= JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createOn;
    @JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss")
    private Date transactionDate;
    private String createBy;
}
