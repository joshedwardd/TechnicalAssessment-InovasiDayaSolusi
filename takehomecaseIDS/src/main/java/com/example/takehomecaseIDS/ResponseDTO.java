package com.example.takehomecaseIDS;

import lombok.Data;

import java.util.List;

@Data
public class ResponseDTO {
    private List<TransactionDTO> data;
    private List<StatusDTO> status;
}
