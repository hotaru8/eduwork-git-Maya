/// <reference types="cypress"/>

describe("Create New Users", () => {
  it("Successfully create new user", () => {
    cy.request("https://gorest.co.in/public/v2/users").as("users");
    cy.get("@users").its("status").should("equal", 200);
  });
  it("Verify the list users  will displayed", () => {
    cy.request("https://gorest.co.in/public/v2/users/663").as("663");
    cy.get("@663").its("body").should("include", { name: "Ashlesh Tagore" });
  });
  it("Successfully get posts", () => {
    cy.request("https://gorest.co.in/public/v2/users/663/posts").as("posts");
    cy.get("@posts").its("status").should("equal", 200);
  });
  it("Successfully posts comment", () => {
    cy.request("https://gorest.co.in/public/v2/posts/663/comments").as(
      "comment"
    );
    cy.get("@comment").its("status").should("equal", 200);
  });
});
