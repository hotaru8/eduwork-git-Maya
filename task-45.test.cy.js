describe("Task 45 Validate Content", () => {
  it("Should validate content response body", () => {
    var user = {
      abilities: [
        {
          ability: {
            name: "limber",
            url: "https://pokeapi.co/api/v2/ability/7/",
          },
        },
      ],
    };

    cy.request("GET", "https://pokeapi.co/api/v2/pokemon/ditto", user).then(
      (response) => {
        expect(response.body.ability).to.eq(user.name);
      }
    );
  });
});
