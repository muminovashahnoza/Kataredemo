Feature: testing karate demo

 # Scenario: status code
  # Given  url "https://uinames.com/api";
  # When method get
  # Then status 200
  # And match  header Content-Type == "application/json; charset=utf8";


 # Scenario: printing example
 #   Given  url "https://uinames.com/api";
 #   When method get
 #   Then status 200
 #   And print "PRINTING RESPONCE"
 #   And print responce
 #   And print responce.name



#  Scenario: Parameter example
#    Given url "https://uinames.com/api"
#    And param region = 'Poland'
#    When  method get
#    Then status 200
#    And print respond.region



#  Scenario: Parameter example: Multiple parameters
#    Given url "https://uinames.com/api"
#    And  params {gender:'female', region:'Poland', amount:2}
#    When  method get
#    Then status 200
#    And print respond.region
#    And print respond.gender

# Verification
#  Scenario: Verify whole response
#    Given url "https://reqres.in/api/users/1"
#    When  method get
#    Then status 200
#    #verify whole response
#    And match response == {"data": {"id": 1,"email": "george.bluth@reqres.in","first_name": "George","last_name": "Bluth","avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/calebogden/128.jpg"}}
#    And match $ == {"data": {"id": 1,"email": "george.bluth@reqres.in","first_name": "George","last_name": "Bluth","avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/calebogden/128.jpg"}}


#  Scenario: Verify values in response
#    Given url "https://uinames.com/api"
#    And  params {gender:'female', region:'Poland'}
#    When method get
#    Then status 200
#    And match response contains {region:'Poland'}
#    And match response contains {region:'Poland,gender:"female"}
#

#  Scenario: Verify not null and data type
#    Given  url "https://uinames.com/api"
#    When method get
#    Then status 200
#    And match response contains {name:#notnull}
#    And match response contains {region:#string}

   Scenario: Numbers of objects in response
     Given url "https://uinames.com/api"
     And params {region:'Poland', amount:2}
     When method get
     Then status 200
     And assert  response.length == 2
     And match each response contains {region:'Poland'}




