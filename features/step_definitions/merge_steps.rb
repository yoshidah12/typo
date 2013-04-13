Given /^the following articles exist:$/ do |table|
  Article.create!(table.hashes)
end

When /^I fill in "(.*?)" with "(.*?)" id$/ do |arg1, arg2|
  article = Article.find_by_title(arg2)
  step "I fill in \"#{arg1}\" with \"#{article.id}\""
end

Given /^I am logged into the admin panel as a user$/ do
  visit '/accounts/login'
  fill_in 'user_login', :with => 'user1'
  fill_in 'user_password', :with => 'user1'
  click_button 'Login'
  if page.respond_to? :should
    page.should have_content('Login successful')
  else
    assert page.has_content?('Login successful')
  end
end

