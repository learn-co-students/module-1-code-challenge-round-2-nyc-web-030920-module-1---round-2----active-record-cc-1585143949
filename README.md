# MOD 1 ActiveRecord Code Challenge

To Start:
 - run `bundle install`
 - run `rake db:migrate`
 - run `rake db:seed`

## Deliverables

Congratulations! You've just been hired to work on a special project for JFK Airport. The previous developer began building an app that would keep track of flights, passengers, and planes. However, before they were able to finish, they quit to join Newark Airport. Your task is to review the existing code (including existing models and migrations) and do what's neccessary to make the app work.


*Remember the app is currently not complete. It is your job to read the given code and make any necessary changes to establish the proper database, models, and relationships. A Flight belongs to a Plane, a Flight has many Passengers, and a Passenger has many Flights. If your app is complete it will be able to do the following deliverables*

Flight: 
- has a duration_in_minutes
- has a destination
- has an origin
- belongs to Plane
- has many Passengers

  `Flight#duration`
    - returns the flight's `duration_in_minutes` as an integer
    
  `Flight#origin`
    - returns the flight's `origin` as a string
    
  `Flight#destination`
    - returns the flight's `destination` as a string
    
  `Flight#passengers`
    - returns an array of all of the flight's passengers
    
  `Flight#plane`
    - returns the plane that belongs to the flight
    
  `Flight#tickets`
    - returns an array of all the flight's tickets
    
  `Flight#total_passengers`
    - returns the total number of passengers on the flight

Plane:
- has a name
- has a num_of_seats
- has many flights

  `Plane#name`
    - returns the planes's `name`
    
  `Plane#num_of_seats`
    - returns the plane's `num_of_seats`
    
  `Plane#flights`
    - returns an array of all of the plane's flights
    
  `Plane#passengers`
    - returns an array of all of the plane's passengers
    
  `Plane#total_passengers`
    - returns the total number of passengers associated with this plane

Passenger:
- has a name
- has many Flights

  `Passenger#name`
    - returns the passenger's `name`
    
  `Passenger#flights`
    - returns an array of all of the passenger's `flights`
    
  `Passenger#tickets`
    - returns an array of all of the passenger's `tickets`
    
  `Passenger#planes`
    - returns an array of all of the passenger's `planes`
    
  `Passenger#total_flight_time`
    - returns the passenger's total `duration_in_minutes` from all of the passenger's flights

  *When you have completed your app you will need to answer the questions below to help out any new developers joining your team. Please write a short response answering in your own words*

## Complete the questions below:

  Which table(s) have foreign key(s)?
  
    Answer Here:

  Where does the `Passenger#flights` method come from?
  
    Answer Here:

  When would you need to use a join table?
  
    Answer Here:

  What is the join table in this application?
  
    Answer Here:
