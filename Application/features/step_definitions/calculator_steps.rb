Given("I am on the home page") do
  visit root_path
end

When("I click on the {string} link") do |string|
  click_link string
end
When("I click on the {string} button") do |string|
  click_link string
end
Then("I should be on the {string} page") do |string|
  expect(page).to have_content(string)
end

Then("I should see the {string} field") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
