Feature: DDT example

  Scenario Outline: verify amount and region
    Given url "https://uinames.com/api"
    And params {region:'<region>', amount:<amount>}
    When method get
    Then status 200
    And assert response.length==<expected_amount>
    And match each response contains {region:'<region>'}

    Examples:
    |amount|expected_amount|region|
    |2     |2              |Poland|
    |2     |2              |Turkey|
    |2     |2              |Canada|
    |2     |2              |Russia|
    |3     |3             |Azerbaijan|