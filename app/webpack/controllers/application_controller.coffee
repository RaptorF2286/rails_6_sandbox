import { Controller } from 'stimulus'
import StimulusReflex from 'stimulus_reflex'

export default class ApplicationController extends Controller 
  connect: -> StimulusReflex.register this


  # Application-wide lifecycle methods
  # Use these methods to handle lifecycle concerns for the entire application.
  # Using the lifecycle is optional, so feel free to delete these stubs if you don't need them.
  
  # Arguments:
  
  #   element - the element that triggered the reflex
  #             may be different than the Stimulus controller's this.element
  
  #   reflex - the name of the reflex e.g. "Example#demo"
  
  #   error/noop - the error message (for reflexError), otherwise null
  
  #   reflexId - a UUID4 or developer-provided unique identifier for each Reflex
  

  # beforeReflex: (element, reflex, noop, reflexId) ->
  #   document.body.classList.add('wait')
  # reflexSuccess: (element, reflex, noop, reflexId) ->
  #   console.log 'reflexSuccess'
  # reflexError: (element, reflex, error, reflexId) -> 
  #   console.log 'reflexError'
  # afterReflex: (element, reflex, noop, reflexId) -> 
  #   console.log 'afterReflex'
  # beforeReflex: -> 
  #   @benchmark = performance.now()
  # afterReflex: (element, reflex) ->
  #   console.log(reflex, `${(performance.now() - this.benchmark).toFixed(0)}ms`)
