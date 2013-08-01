When 'I debug' do
  require 'ruby-debug'; Debugger.start; Debugger.settings[:autoeval] = 1; Debugger.settings[:autolist] = 1; debugger
  true
end

When /^I wait (\d+) seconds?$/ do |seconds|
  sleep seconds.to_i
end
