Feature: Validate search functionality on different platforms
​
Check google.com, yahoo.com, yandex.ru
​
Scenario: Verify google.com search
Given I am on the google page
When I search google for IT start
Then I get results provided by google