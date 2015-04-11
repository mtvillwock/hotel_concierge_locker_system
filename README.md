# Hotel Locker System

Functionality:
- user can add a bag to a locker and get a ticket
- user can remove enter a bag id from their ticket and get their bag from the locker

## Assumptions
The scope and scale of this challenge was only loosely defined. I felt that it would work well (and be more useful to the end user) as a Rails app, so that was the approach that I chose.

I decided to omit having customers, hotel, or concierge classes. I made this choice because I felt that tickets, lockers, and bags were the central focus of the operation. However, adding these facets into the program is certainly possible if one desired such additional functionality. For example, adding a user class would allow various levels of authentication for hotel operations depending on which level of employee was logged in.

I decided to adhere to as close to a RESTful structure as I could and to follow established Rails conventions. Unfortunately, due to the interactions between multiple objects I ended up having some complex and less-than-syntactically straightforward routes. That said, I believe that given more time the program could be refactored to use custom routes as well as AJAX to provide more logical back-end code and a smoother front-end user experience.

