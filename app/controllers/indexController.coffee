App.IndexController = Em.Controller.extend
  actions:
    toggleLoading: ->
      @toggleProperty('buttonLoading')
      false

    buttonClicked: ->
      @set 'buttonLoading', true

      Em.run.later @, ->
        @set 'buttonLoading', false
      , 3000

  buttonLoading: false