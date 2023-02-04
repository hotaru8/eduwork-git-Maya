/// <reference types="cypress" />

describe('My first tes', () =>{
    it('clicking "type" show the right heading', () =>{
        cy.visit('https://example.cypress.io')
        cy.pause()

        cy.contains('type').click()
        cy.url().should('include','/commands/actions')
        cy.get('.action-email').type('fake@email.com').should('have.value','fake@email.com')
    })
})