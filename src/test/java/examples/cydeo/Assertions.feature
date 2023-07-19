Feature: Testing Assertions commands in Karate
  Background: Common steps for all Scenarios in the feature file and also variables,
    * def oneSpartan =
    """
    {
        "id": 1,
        "name": "Meade",
        "gender": "Male",
        "phone": 3584128232
    }
    """
    * def fourSpartans = read("classpath:examples/data/spartans.json")


  Scenario: simple match examples
    * match oneSpartan.name == 'Meade'
    * match fourSpartans[2].name == 'Fidole'
    # * match fourSpartans.length == 4
    * def lengthOfName = fourSpartans[2].name.length
    * def Total = fourSpartans.length
    * match lengthOfName == 6
    * match Total == 4

  Scenario: fuzzy matching in Karate, dataTypes and existence of that variable
    * match oneSpartan.name == '#string'
    * match oneSpartan.id == '#number'
    * match oneSpartan.phone == '#present'
    * match oneSpartan.poop == '#notpresent'
    * match oneSpartan.id == '#present'

    @Wip
  Scenario: match each, king of looping inside JSON Array objects
    * match each fourSpartans[*].id == '#number'
    * match each fourSpartans[*].name == '#string'
    * match each fourSpartans[*].phone == '#number'
    * def expectedSpartan =
    """
    {
      "id": 2,
      "name": "Nels",
      "gender": "Male",
      "phone": 4218971348
    }
    """
    * match fourSpartans contains expectedSpartan
      * match fourSpartans contains any expectedSpartan
