package com.microservices.microservices1;

import org.springframework.stereotype.Service;
@Service
public class Calculator {
    int multiply(int a, int b) {
        return a * b;
    }
}

