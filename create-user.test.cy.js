describe("Create New Users", () => {
  it("Successfully create new user", () => {
    var user = {
      name: "Maya",
      job: "QA",
    };
    cy.request("POST", "https://reqres.in/api/users", user).then((response) => {
      expect(response.body.name).to.equal(user.name);
    });
  });
});
