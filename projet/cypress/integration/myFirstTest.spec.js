describe('My First Test', () => {
    it('Visits the Home Page', () => {
      cy.visit('/')
      cy.contains('Api Root')
    })
  })