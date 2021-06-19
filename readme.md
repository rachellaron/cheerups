# CHEERUPS 
Cheerups is your place where you can share and read positive messages about peoples days and lives.

# WEBSITE LINK
https://rocky-ocean-21720.herokuapp.com/cheerup

# HOW TO USE CHEERUPS
Cheerups is a website to boost you spirit. You are able to browse cheerups that people have posted and see how many likes. 

You are also able to sign up or log in to create your own cheerup and like others. 

# PLANNING 
1. READ   --> User opens local host and redirects to quotes page where shows most recent quotes added in from database (cheerups)**
- redirect /views/cheerups/quotes.erb --> display --> title, login or signup button, database quotes (loop)**

2. CREATE --> User has option to Log in or sign up via button & gets redirect to signup/login page**
- /views/users/new.erb --> display --> login form & signup form --> /views/sessions/login.erb --> if user enter incorrect login details, show error message**

3. CREATE --> Once the database has either find the user in the system or added them, redirect to Post Page (Write your cheerback) -> user has option to click button to take them back home**
- /views/cheerups/new.erb --> display --> user input (max120words) submit button --> button to go back home ("/")**

4. UPDATE --> Once user is logged in, homepage will now display quotes with an edit button**
- redirect /views/cheerups/quotes.erb --> display home page with edit button (ifuserloggedin)**

5. DELETE --> Click Edit button to take them to Edit page, which lets user UPDATE or DELETE post**
- /views/cheerups/edit.erb --> display --> re-enter user input (max120words) or use delete button to delete post**

6. USER also has option to like specific posts**

First Wireframe Planning -

![Screen Shot 2021-06-11 at 6 11 38 pm](https://user-images.githubusercontent.com/81345558/122509240-c5d08f80-d046-11eb-9dd5-5d4e09b47595.png)

Final Wireframe Planning - 

![Screen Shot 2021-06-18 at 3 05 53 pm](https://user-images.githubusercontent.com/81345558/122509298-e3055e00-d046-11eb-8c6a-979659da84d0.png)

Diagram Planning - 

![Screen Shot 2021-06-19 at 12 05 21 pm](https://user-images.githubusercontent.com/81345558/122628003-caed1780-d0f6-11eb-8e8e-5860c758d185.png)

# EXTRA FEATURES I'D LIKE TO INCLUDE
- Filter section for the user to filter for posts (most liked, most recent, own posts, only others posts)
- Account section where the user can only see their posts and edit, add or delete easier
- Display different users accounts (first_name) on posts
- Show a ranking on a user's profile if their posts have lots of likes their ranking is higher
- About & Contact page - Displays articles for lifeline Australia and contact options
- API of famous positive quotes to show on bottom of website

# LESSONS I'VE LEARNT
- To push up to github after every major coding session. Make sure the code is up to date.
- Using `puts` in VS to find what the problem is in terminal
- Take every step slowly, work on one thing at a time rather then mutiple




