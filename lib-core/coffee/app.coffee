KS        = require './ks'
Modal     = require './modal'
Navbar    = require './navbar'
Debounce  = require './debouncer'
Status    = require './status'
Tabs      = require './tabs'
Throttler = require './throttler'
Buttons   = require './buttons'
Buffer    = require './buffer'
Growl     = require './growl'
Dropdown  = require './dropdown'

k$.ready = ->
  k$.button()
  k$.dropdown()

document.addEventListener 'DOMContentLoaded', -> k$.ready()
