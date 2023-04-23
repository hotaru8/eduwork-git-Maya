///<reference types="cypress" />

describe("Demo application mindtranss", () => {
  it("should checkout and choice payment method mindtrans", () => {
    cy.visit("https://demo.midtrans.com/");
    cy.contains("BUY NOW").click();
    cy.contains("CHECKOUT").click();
    cy.contains("Gopay").click();
  });
});
