Then("show me the page") do
    save_and_open_page
end

When("I visit the site") do
    visit root_path
end

Given("the following user exist in the database") do |table|
    table.hashes.each do |user|
        User.create(user)
    end 
  end
  
  Then("I fill in {string} with {string}") do |field, content|
        fill_in field, with: content
    end
  
  Then("I should see {string}") do |expected_content|
        expect(page).to have_content expected_content
    end