require 'rails_helper.rb'


feature"Student creates a user" do
    scenario "Student succesfully creates a new user from the homepage" do
        visit users_new_path
        expect(page).to have_content("Class Grade Calculator")
        fill_in "user[studentName]", with: "Kevin Donovan"
        fill_in "user[email]", with: "email@email.com"
        fill_in "user[password]", with: "1234"
        fill_in "user[password_confirmation]", with: "1234"
        fill_in "user[schoolName]", with: "UNCC"
        click_button "Sign-Up"
        expect(page).to have_content("Class Grade Calculator")
        expect(page).to have_field("email")
        expect(page).to have_field("password")
    end
end