Feature: Searching offers
  Scenario Outline: User inputs data and searches offers
    Given User opens page
    And User clicks cookie confirmation button
    And User inputs key words <key_words>
    And User inputs region <region>
    And User selects range <range>
    And User clicks search button
    And User selects remote job and remote recruitment
    When User reads all offers by criteria <criteria>
    Then Offers are saved
    Examples:
      | key_words                | region     | range     | criteria                                                                                    |
      | "Tester, Selenium, Java" | "Warszawa" | "+ 10 km" | "tester testowanie automatyczne automatyczny automatyzujący API Java Selenium SQL Postman"  |


