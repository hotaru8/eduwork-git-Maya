const { Given, When, Then } = require('@badeball/cypress-cucumber-preprocessor')

Given('I open application Zero bank index html', () => {
    cy.visit('http://zero.webappsecurity.com/index.html')
})
When('I typing word online in searchBox', () => {
    cy.get('#searchTerm').type('online {enter}')
})
Then('I should see result content', () => {
    cy.get('h2').contains('Search Results:')
})
