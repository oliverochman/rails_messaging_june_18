When("I visit the landing page") do
    visit root_path
end

Then("I should see {string} link") do |login|
    expect(page).to have_link login
end

Then("I should see sign up link") do
    #binding.pry 
    pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see home link") do
    pending # Write code here that turns the phrase above into concrete actions
end