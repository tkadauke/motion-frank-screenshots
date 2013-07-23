def code_path
  Dir.pwd
end

Then /^I take a screenshot into "(.*)"$/ do |filename|
  app_exec "screenshot:", "#{code_path}/screenshots/#{filename}"
end
