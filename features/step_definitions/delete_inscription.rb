#coding: utf-8
Если /^есть "(.*?)" в таблице с классом "(.*?)"$/ do |temp,good|
  a = FactoryGirl.create(temp.to_sym)
  visit '/'
  expect(page).to have_css('.'+good)
  find('td', text: a.name)
  find('td', text: a.description)
end

И /^я кликаю на ссылку "(.*?)"$/ do |link|
  click_link link
end

И /^я вижу "(.*?)" и "(.*?)" в открывшейся форме$/ do |name,desc|
  find('h4', text: name)
  find('div.text-muted',text: desc)
end

И /^я подтвеждаю действие$/ do
  page.driver.browser.switch_to.alert.accept
end

И /^я не вижу "(.*?)" и "(.*?)"$/ do |name,desc|
  expect(page).to_not have_text(name)
  expect(page).to_not have_text(desc)
end