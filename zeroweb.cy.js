/// <reference types="cypress" />

describe('Creat Commandcustom', () => {
    it("Make a payment on the website", () => {

        cy.visit('http://zero.webappsecurity.com/login.html')
        cy.url().should('include' , 'login.html') 
        cy.login()
        cy.payBills()
        
    });
})
