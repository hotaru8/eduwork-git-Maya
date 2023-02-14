const URL = 'http://zero.webappsecurity.com/index.html'
const TYPE = '#searchTerm'

class searchBoxPage {
    static visit() {
        cy.visit(URL)
    }
    static type(online) {
        cy.get(TYPE).type(online)
    }
}

export default searchBoxPage
