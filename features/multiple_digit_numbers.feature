Feature: Generating LCD representation for multi-digit numbers

  Scenario: 12
    When I convert the number "12" to LCD
    Then I should get the following representation
    """
         - 
      |   |
         - 
      | |  
         - 
    """

  Scenario: 345
    When I convert the number "345" to LCD
    Then I should get the following representation
    """
     -       - 
      | | | |  
     -   -   - 
      |   |   |
     -       - 
    """

  Scenario: 67890
    When I convert the number "67890" to LCD
    Then I should get the following representation
    """
     -   -   -   -   - 
    |     | | | | | | |
     -       -   -     
    | |   | | |   | | |
     -       -   -   - 
    """

