Given("the following user exists") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end
end

Given("I visit the sign up page") do
  visit new_user_registration_path
end

When("I click {string} button") do |button|
  click_button button
end