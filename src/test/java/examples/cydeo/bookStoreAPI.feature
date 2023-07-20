Feature: Simple API body header status checks
  #To Initialize methods or variables which are used use Background
  Background:
    Given url 'https://demoqa.com/BookStore/v1/Books'
    When method get

@wip
  Scenario: GET all books and verify status and headers
    Then status 200
    And match header Content-Type == 'application/json; charset=utf-8'
    And match header Content-Length == '#present'

  @wip
  Scenario: Verify Body information




