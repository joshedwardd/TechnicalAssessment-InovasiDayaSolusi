package com.example.takehomecaseIDS;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class Controller {
    @Autowired
    private APIService service;

    @GetMapping("/data")
    public ResponseEntity<ResponseDTO> getData(){
        ResponseDTO responseData = service.getData();
        return ResponseEntity.ok(responseData);
    }
}
