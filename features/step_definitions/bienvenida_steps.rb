Given(/^me encuentro en la pagina de inicio$/) do
  visit '/'
end

Then(/^veo el mensaje "(.*?)"$/) do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end

Then(/^veo la imagen "(.*?)"$/) do |imagen|
  last_response.should have_xpath("//img[@src=\"/images/#{imagen}\"]")
end

Then(/^veo el boton "(.*?)"$/) do |boton|
  last_response.body.should =~ /#{boton}/m
end