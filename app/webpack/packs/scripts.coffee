require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require './styles'

import 'controllers'

import UiKit from 'uikit'
import UiIcons from 'uikit/dist/js/uikit-icons.min'

UiKit.use(UiIcons)

images = require.context('../images', true)
imagePath = (name) => images(name, true)
