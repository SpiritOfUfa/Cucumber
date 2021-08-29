Feature: Validate search functionality on different platforms
​
Check google.com, yahoo.com, yandex.ru

Scenario Outline: Varify search page
Given I am on the <name> page
When I search <name> for <phrase>
Then I get results provided by <name>

Examples:
    | name | phrase | 
    | google  | IT Start  | 
    | yandex  | Dima  | 
    | yahoo  | Whiskey   | 