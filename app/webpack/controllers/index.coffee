import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"

import StimulusReflex from 'stimulus_reflex'
import consumer from 'channels/consumer'
import controller from './application_controller'

application = Application.start()
context = require.context "controllers", true, /_controller\.js|.coffee$/
application.load definitionsFromContext context 
StimulusReflex.initialize application, { consumer, controller, debug: false } 
