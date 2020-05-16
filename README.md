# README
Ruby version: 2.4.1
Rails Version: 5.2.3

The Class Grade Calculator application was developed in AWS Cloud 9. To get
the application up and running, you must do the following:

- create an AWS Cloud 9 EC2 instance environment (you can leave all options on
  the default setting)
- open a terminal and run the following commands to make sure you are using the
  correct versions of Ruby and Rails:
    1. git clone https://github.com/chasey55/Grade_Calculator
    2. cd Grade_Calculator/Application
    3. rvm install ruby-2.4.1 (this will take about a minute)
    4. gem install bundler
    5. bundle install (this will take about a minute as well)
    6. gem install rails -v 5.2.2
- set up the database by running the command "rails db:migrate"
- start the rails server by typing the command "rails s"
- click on the "Preview" tab at the top of Cloud 9 and select "Preview Running
  Application"
- click on the "Pop Out Into New Window" button (located in top right) to view
  the running application

The application is now ready to use! A demo video of the Class Grade calculator
can be seen here: https://youtu.be/zFsvict7yTM?t=66


How to run the test suite:

- Make sure you are in the Application folder with the command
  "cd Grade_Calculator/Application"
- To run the rspec tests, type "rspec" in the terminal
- To run the cucumber tests, type "cucumber" in the terminal
