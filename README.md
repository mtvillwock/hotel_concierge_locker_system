# Hotel Locker System

A single page app for storing bags in lockers and giving tickets to be redeemed for a stored bag.

See it deployed [here](https://hotel-locker-system.herokuapp.com/).

## How to use:
- copy the git clone URL and use `git clone <paste the url>` to clone the repo to your desktop 
- open Terminal and use `cd ~/Desktop/hotel_concierge_locker_system` to navigate to the app root directory
- use `rails s` to boot up the WEBrick server
- open your browser and navigate to [http://localhost:3000](http://localhost:3000)
- try adding bags and retrieving bags by redeeming a ticket
- Leave feedback (pull requests, issues, email, any constructive feedback is appreciated)

## Technologies:
- Ruby on Rails 4
- AJAX
- Skeleton CSS
- RSPEC (check out the model and controller tests!)

## Post-Revision Thoughts
I learned a lot from this challenge. Important things I learned included:
- it is okay to include secondary objects in routes for a different, primary object
- designing a good user flow takes a lot of thought
- how to write thorough model and controller tests in RSPEC
- different kinds of validations

## Original Thoughts
The scope and scale of this challenge was loosely defined. I chose to build the program as a Rails app because I felt that it would work well and be more useful to the end user.

I felt that tickets, lockers, and bags were the central focus of the operation. For future iterations, I could add other facets like employees, hotels, and customers. For example, adding a user class would allow various levels of authentication for hotel operations depending on which level of employee was logged in.

This was a really fun challenge to work on. It required a good deal of thought and provided a great opportunity to address a real-world issue with my code.
