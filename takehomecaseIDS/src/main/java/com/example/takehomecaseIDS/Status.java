package com.example.takehomecaseIDS;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@Table(name = "status")
public class Status {
    @Id
    private int id;
    private String name;

}
