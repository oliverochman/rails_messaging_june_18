When("a user click on {string}") do |link|
    click_on link
end
  
Then("I'm sent to the {string} page") do |path|
    if path == 'Login'
        expect(page.current_path).to eq new_user_session_path
    end
end
  