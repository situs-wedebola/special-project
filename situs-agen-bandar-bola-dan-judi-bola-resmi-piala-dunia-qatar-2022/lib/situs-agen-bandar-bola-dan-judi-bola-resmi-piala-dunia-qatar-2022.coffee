SitusAgenBandarBolaDanJudiBolaResmiPialaDuniaQatar2022View = require './situs-agen-bandar-bola-dan-judi-bola-resmi-piala-dunia-qatar-2022-view'
{CompositeDisposable} = require 'atom'

module.exports = SitusAgenBandarBolaDanJudiBolaResmiPialaDuniaQatar2022 =
  situsAgenBandarBolaDanJudiBolaResmiPialaDuniaQatar2022View: null
  modalPanel: null
  subscriptions: null

  activate: (state) ->
    @situsAgenBandarBolaDanJudiBolaResmiPialaDuniaQatar2022View = new SitusAgenBandarBolaDanJudiBolaResmiPialaDuniaQatar2022View(state.situsAgenBandarBolaDanJudiBolaResmiPialaDuniaQatar2022ViewState)
    @modalPanel = atom.workspace.addModalPanel(item: @situsAgenBandarBolaDanJudiBolaResmiPialaDuniaQatar2022View.getElement(), visible: false)

    # Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
    @subscriptions = new CompositeDisposable

    # Register command that toggles this view
    @subscriptions.add atom.commands.add 'atom-workspace', 'situs-agen-bandar-bola-dan-judi-bola-resmi-piala-dunia-qatar-2022:toggle': => @toggle()

  deactivate: ->
    @modalPanel.destroy()
    @subscriptions.dispose()
    @situsAgenBandarBolaDanJudiBolaResmiPialaDuniaQatar2022View.destroy()

  serialize: ->
    situsAgenBandarBolaDanJudiBolaResmiPialaDuniaQatar2022ViewState: @situsAgenBandarBolaDanJudiBolaResmiPialaDuniaQatar2022View.serialize()

  toggle: ->
    console.log 'SitusAgenBandarBolaDanJudiBolaResmiPialaDuniaQatar2022 was toggled!'

    if @modalPanel.isVisible()
      @modalPanel.hide()
    else
      @modalPanel.show()
