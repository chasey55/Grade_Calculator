require 'rails_helper.rb'

feature"Student creates a new grade" do
    scenario "Student succesfully creates a grade" do
        visit new_session_path
        expect(page).to have_content("Please login to use the calculator.")
        fill_in "email", with: "email@email.com"
        fill_in "password", with: "1234"
        User.create!(:studentName=>"Kevin Donovan", :email=>"email@email.com", :password=>"1234", :password_confirmation=>"1234", :schoolName=>"UNCC")
        click_button "Login"
        expect(page).to have_content("Hello, Kevin Donovan!! UNCC")
        fill_in "grade[assignment1]", with: "Test 1"
        fill_in "grade[gradeNum1]", with: 80
        fill_in "grade[wieght1]", with: 40
        fill_in "grade[assignment2]", with: "Test 2"
        fill_in "grade[gradeNum2]", with: 90
        fill_in "grade[weight2]", with: 60
        click_button "Save"
        click_link "Show Previous Log"
        expect(page).to have_content("Test 1")
    end
    
end