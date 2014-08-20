App.LoadingButtonComponent = Ember.Component.extend
  actions:
    buttonPressed: ->
      if not @get('laddaButton').isLoading()
        @sendAction()

  laddaButton: null
  loading: null

  toggleButton: (->
    state = @get 'loading'
    if state
      @get('laddaButton').start()
    else
      @get('laddaButton').stop()
  ).observes('loading')

  didInsertElement: ->
    laddaButton = Ladda.create @$('button')[0]
    @set 'laddaButton', laddaButton

  willDestroyElement: ->
    @get('laddaButton').remove()




