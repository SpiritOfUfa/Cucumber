Feature: Validate search functionality on different platforms
​
Check google.com, yahoo.com, yandex.ru

Scenario: Verify google.com search
Given I am on the google page
When I search google for IT start
Then I get results provided by google

Scenario: Verify yandex.com search
Given I am on the yandex page
When I search yandex for IT Start
Then I get results provided by yandex

Scenario: Verify yahoo.com search
Given I am on the yahoo page
When I search yahoo for IT Start
Then I get results provided by yahoo

Scenario Outline: Varify search page
Given I am on the <name> page
When I search <name> for <phrase>
Then I get results provided by <name>

Examples:
    | name | phrase | 
    | google  | IT Start  | 
    | yandex  | Dima  | 
    | yahoo  | Whiskey   | 