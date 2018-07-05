When("I click on {string}") do |link|
    click_on link
end
  
Then("I should be on the {string} page") do |path|
    if path == 'Login'
        expect(page.current_path).to eq new_user_session_path
    end
end
  