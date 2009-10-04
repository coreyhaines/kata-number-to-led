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

