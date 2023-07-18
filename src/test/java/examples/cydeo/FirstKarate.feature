Feature: simple Karate scripts
  Scenario: How to print
  Given print "Hello world"
  * print 2+2
  #all same arithmetic operations in java
  * def name = 'Mike'
  * def age = '30'
  * print name,"is",age,"years old"
  #The comma is a concatenation in this case

  @wip
  Scenario: JSON objects, first class citizens of Karate framework
    * def student = {'name': 'Oscar', 'owe_tuition': false}
    #You can define json objects as variables
    * print student.name
    * def oneSpartan =
    """
   {
        "id": 1,
        "name": "Meade",
        "gender": "Male",
        "phone": 3584128232
   }
   """
    * print oneSpartan.gender
    * print oneSpartan.name
    * print oneSpartan.id
    * print oneSpartan.phone
    * def fourSpartans = read("classpath:examples/data/spartans.json")
    * print fourSpartans
    * print fourSpartans[2].name
    # How to reach data within a Json Array