local hyper = { "cmd", "alt", "ctrl", "shift" }
hs.hotkey.bind(hyper, "0", function()
  hs.reload()
end)
hs.notify.new({title="Hammerspoon", informativeText="Config loaded"}):send()

local applicationHotkeys = {
  c = 'Google Chrome',
  d = 'Calendar',
  f = 'Finder',
  g = 'DataGrip',
  i = 'Insomnia',
  n = 'Notes',
  p = 'Spotify',
  s = 'Slack',
  t = 'iTerm',
  v = 'Visual Studio Code',
  z = 'zoom.us'
}
for key, app in pairs(applicationHotkeys) do
  hs.hotkey.bind(hyper, key, function()
    hs.application.launchOrFocus(app)
  end)
end

hs.hotkey.bind(hyper, '1', function()
  local itermSuccess = hs.application.launchOrFocus('iTerm')
  local vsCodeSuccess = hs.application.launchOrFocus('Visual Studio Code')
end)