package com.example.takehomecaseIDS;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class APIService {
    @Autowired
    private TransactionRepository transactionRepository;
    @Autowired
    private StatusRepository statusRepository;

    public ResponseDTO getData(){
        List<Status> statusList = statusRepository.findAll();
        List<Transaction> transactionList = transactionRepository.findAllWithDetails();

        List<TransactionDTO> transactionDTO = transactionList.stream()
                .map(this::mapTranstoDTO).toList();
        List<StatusDTO> statusDTO = statusList.stream()
                .map(this::mapStatusDTO).toList();

        ResponseDTO response = new ResponseDTO();
        response.setData(transactionDTO);
        response.setStatus(statusDTO);
        return response;

    }

    private TransactionDTO mapTranstoDTO(Transaction transaction){
        TransactionDTO dto = new TransactionDTO();
        dto.setId(transaction.getId());
        dto.setAmount(transaction.getAmount());
        dto.setCustomerName(transaction.getCustomerName());
        dto.setTransactionDate(transaction.getTransactionDate());
        dto.setCreateBy(transaction.getCreateBy());
        dto.setCreateOn(transaction.getCreateOn());

        if(transaction.getProduct() !=null){
            dto.setProductID(transaction.getProduct().getProductId());
            dto.setProductName(transaction.getProduct().getProductName());
        }
        if(transaction.getStatus()!=null){
            dto.setStatus(transaction.getStatus().getId());
        }
        return dto;
    }

    private StatusDTO mapStatusDTO(Status status){
        StatusDTO dto = new StatusDTO();
        dto.setId(status.getId());
        dto.setName(status.getName());
        return dto;
    }
}
