Given("the following user exists") do |table|
  table.hashes.each do |user|
    User.create(user)
  end
end

Given("I visit the sign up page") do
  visit new_user_registration_path
end

When("I am at the sign up page") do
    if path == 'Sign up'
        expect(page.current_path).to eq registration_path
    end
end

When("I click {string} button") do |button|
  click_button button
end