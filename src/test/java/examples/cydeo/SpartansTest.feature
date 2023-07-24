Feature: Testing different end points of spartan API

  Background:
    * def spartanURL = "http://54.89.119.143:8000"

    @wip
    Scenario: Get one spartan and verify
      * def expectedSpartan =
      """
      {
        "id": 101,
        "name": "John Doe",
        "gender": "Male",
        "phone": 8877445596
        }
      """
     Given url spartanURL
     And path "/api/spartans"
     And path "/101"
     And header Accept = 'application/json'
     When method get
      Then match response == expectedSpartan