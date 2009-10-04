Feature: Generating LCD representation for single numbers

  Scenario: Number 1
    When I convert the number "1" to LCD
    Then I should get the following representation
    """
       
      |
       
      |
       
    """
  Scenario: Number 2
    When I convert the number "2" to LCD
    Then I should get the following representation
    """
     - 
      |
     - 
    |  
     - 
    """

  Scenario: Number 3
    When I convert the number "3" to LCD
    Then I should get the following representation
    """
     - 
      |
     - 
      |
     - 
    """

  Scenario: Number 4
    When I convert the number "4" to LCD
    Then I should get the following representation
    """
       
    | |
     - 
      |
       
    """

  Scenario: Number 5
    When I convert the number "5" to LCD
    Then I should get the following representation
    """
     - 
    |  
     - 
      |
     - 
    """
  
  Scenario: Number 6
    When I convert the number "6" to LCD
    Then I should get the following representation
    """
     - 
    |  
     - 
    | |
     - 
    """

  Scenario: Number 7
    When I convert the number "7" to LCD
    Then I should get the following representation
    """
     - 
      |
       
      |
       
    """

  Scenario: Number 8
    When I convert the number "8" to LCD
    Then I should get the following representation
    """
     - 
    | |
     - 
    | |
     - 
    """

  Scenario: Number 9
    When I convert the number "9" to LCD
    Then I should get the following representation
    """
     - 
    | |
     - 
      |
     - 
    """

  Scenario: Number 0
    When I convert the number "0" to LCD
    Then I should get the following representation
    """
     - 
    | |
       
    | |
     - 
    """

