require 'rails_helper.rb'

feature"Student logs ous of session" do
    scenario "Student succesfully logs out" do
        visit new_session_path
        expect(page).to have_content("Please login to use the calculator.")
        fill_in "email", with: "email@email.com"
        fill_in "password", with: "1234"
        User.create!(:studentName=>"Kevin Donovan", :email=>"email@email.com", :password=>"1234", :password_confirmation=>"1234", :schoolName=>"UNCC")
        click_button "Login"
        expect(page).to have_content("Hello, Kevin Donovan!! UNCC")
        click_link "Log Out"
        expect(page).to have_content("Please sign-up to use the calculator.")
    end
end