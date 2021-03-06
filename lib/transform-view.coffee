{View} = require 'atom'

module.exports =
class TransformView extends View
  @content: ->
    @div class: 'transform overlay from-top', =>
      @div "The Transform package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.commands.add "atom-text-editor", "transform:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "TransformView was toggled!"
    if @hasParent()
      @detach()
    else
      # TODO this doesnt work yet
      atom.views.getView(atom.workspace).appendChild(this)
