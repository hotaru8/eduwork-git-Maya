Feature: searchBox into result content
    
    visit Zero bank application

    Scenario: searchBox type online
        Given I open application Zero bank index html
        When I typing word online in searchBox
        Then I should see result content
