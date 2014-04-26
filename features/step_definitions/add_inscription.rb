#coding: utf-8
И /^я захожу на страницу "(.*?)"$/ do |page|
  visit page
end

И /^я кликаю на кнопку "(.*?)"$/ do |button|
  click_button button
end

И /^я жду "(.*?)" секунд$/ do |seconds|
  sleep(seconds.to_i)
end

И /^я ввожу имя "(.*?)" в поле "(.*?)"$/ do |text,field|
  fill_in field, :with => text
end

И /^я ввожу описание "(.*?)" в поле "(.*?)"$/ do |text,field|
 fill_in field, :with => text
end
И /^я выбираю тип "(.*?)" в селекте "(.*?)"$/ do |type,obj|
  select type , :from => obj
end

И /^я вижу имя "(.*?)" и описание "(.*?)" в таблице с классом "(.*?)"$/ do |name,disc,red|
  expect(page).to have_css('.'+red)
  find('td', text: name)
  find('td', text: disc)
end