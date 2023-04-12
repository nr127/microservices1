
package com.microservices.microservices1;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.* ;

public class CalculatorTest {
  private Calculator calculator = new Calculator();

  @Test
  public void testMultiply() {
    assertEquals(42, calculator.multiply(6, 7));
  }
} 
