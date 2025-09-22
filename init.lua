local hyper = { "cmd", "alt", "ctrl", "shift" }
hs.hotkey.bind(hyper, "0", function()
  hs.reload()
end)
hs.notify.new({title="Hammerspoon", informativeText="Config loaded"}):send()

local applicationHotkeys = {
  a = 'Arc',
  c = 'ChatGPT',
  d = 'Figma',
  f = 'Finder',
  g = 'DataGrip',
  -- i = 'Insomnia',
  n = 'Notes',
  p = 'Spotify',
  s = 'Slack',
  t = 'Warp',
  v = 'Cursor',
  z = 'Google Meet'
}
for key, app in pairs(applicationHotkeys) do
  hs.hotkey.bind(hyper, key, function()
    hs.application.launchOrFocus(app)
  end)
end

hs.hotkey.bind(hyper, '1', function()
  local itermSuccess = hs.application.launchOrFocus('Warp')
  local vsCodeSuccess = hs.application.launchOrFocus('Cursor')
end)