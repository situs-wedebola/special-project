SitusAgenBandarBolaDanJudiBolaResmiPialaDuniaQatar2022 = require '../lib/situs-agen-bandar-bola-dan-judi-bola-resmi-piala-dunia-qatar-2022'

# Use the command `window:run-package-specs` (cmd-alt-ctrl-p) to run specs.
#
# To run a specific `it` or `describe` block add an `f` to the front (e.g. `fit`
# or `fdescribe`). Remove the `f` to unfocus the block.

describe "SitusAgenBandarBolaDanJudiBolaResmiPialaDuniaQatar2022", ->
  [workspaceElement, activationPromise] = []

  beforeEach ->
    workspaceElement = atom.views.getView(atom.workspace)
    activationPromise = atom.packages.activatePackage('situs-agen-bandar-bola-dan-judi-bola-resmi-piala-dunia-qatar-2022')

  describe "when the situs-agen-bandar-bola-dan-judi-bola-resmi-piala-dunia-qatar-2022:toggle event is triggered", ->
    it "hides and shows the modal panel", ->
      # Before the activation event the view is not on the DOM, and no panel
      # has been created
      expect(workspaceElement.querySelector('.situs-agen-bandar-bola-dan-judi-bola-resmi-piala-dunia-qatar-2022')).not.toExist()

      # This is an activation event, triggering it will cause the package to be
      # activated.
      atom.commands.dispatch workspaceElement, 'situs-agen-bandar-bola-dan-judi-bola-resmi-piala-dunia-qatar-2022:toggle'

      waitsForPromise ->
        activationPromise

      runs ->
        expect(workspaceElement.querySelector('.situs-agen-bandar-bola-dan-judi-bola-resmi-piala-dunia-qatar-2022')).toExist()

        situsAgenBandarBolaDanJudiBolaResmiPialaDuniaQatar2022Element = workspaceElement.querySelector('.situs-agen-bandar-bola-dan-judi-bola-resmi-piala-dunia-qatar-2022')
        expect(situsAgenBandarBolaDanJudiBolaResmiPialaDuniaQatar2022Element).toExist()

        situsAgenBandarBolaDanJudiBolaResmiPialaDuniaQatar2022Panel = atom.workspace.panelForItem(situsAgenBandarBolaDanJudiBolaResmiPialaDuniaQatar2022Element)
        expect(situsAgenBandarBolaDanJudiBolaResmiPialaDuniaQatar2022Panel.isVisible()).toBe true
        atom.commands.dispatch workspaceElement, 'situs-agen-bandar-bola-dan-judi-bola-resmi-piala-dunia-qatar-2022:toggle'
        expect(situsAgenBandarBolaDanJudiBolaResmiPialaDuniaQatar2022Panel.isVisible()).toBe false

    it "hides and shows the view", ->
      # This test shows you an integration test testing at the view level.

      # Attaching the workspaceElement to the DOM is required to allow the
      # `toBeVisible()` matchers to work. Anything testing visibility or focus
      # requires that the workspaceElement is on the DOM. Tests that attach the
      # workspaceElement to the DOM are generally slower than those off DOM.
      jasmine.attachToDOM(workspaceElement)

      expect(workspaceElement.querySelector('.situs-agen-bandar-bola-dan-judi-bola-resmi-piala-dunia-qatar-2022')).not.toExist()

      # This is an activation event, triggering it causes the package to be
      # activated.
      atom.commands.dispatch workspaceElement, 'situs-agen-bandar-bola-dan-judi-bola-resmi-piala-dunia-qatar-2022:toggle'

      waitsForPromise ->
        activationPromise

      runs ->
        # Now we can test for view visibility
        situsAgenBandarBolaDanJudiBolaResmiPialaDuniaQatar2022Element = workspaceElement.querySelector('.situs-agen-bandar-bola-dan-judi-bola-resmi-piala-dunia-qatar-2022')
        expect(situsAgenBandarBolaDanJudiBolaResmiPialaDuniaQatar2022Element).toBeVisible()
        atom.commands.dispatch workspaceElement, 'situs-agen-bandar-bola-dan-judi-bola-resmi-piala-dunia-qatar-2022:toggle'
        expect(situsAgenBandarBolaDanJudiBolaResmiPialaDuniaQatar2022Element).not.toBeVisible()
