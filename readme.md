# CHEERUPS 
Cheerups is your place where you can share and read positive messages about peoples days and lives.

# HOW TO USE CHEERUPS
Cheerups is a website to boost you spirit. You are able to browse cheerups that people have posted and see how many likes. 

You are also able to sign up or log in to create your own cheerup and like others. 

# PLANNING 
**# 1. READ   --> User opens local host and redirects to quotes page where shows most recent quotes added in from database (cheerups)**

**#           --> redirect /views/cheerups/quotes.erb --> display --> title, login or signup button, database quotes (loop)**

**# 2. CREATE --> User has option to Log in or sign up via button & gets redirect to signup/login page**

**#           --> /views/users/new.erb --> display --> login form & signup form --> /views/sessions/login.erb --> if user enter incorrect login details, show error message**

**# 3. CREATE --> Once the database has either find the user in the system or added them, redirect to Post Page (Write your cheerback) -> user has option to click button to take them back home**

**#           --> /views/cheerups/new.erb --> display --> user input (max120words) submit button --> button to go back home ("/")**

**# 4. UPDATE --> Once user is logged in, homepage will now display quotes with an edit button**

**#           --> redirect /views/cheerups/quotes.erb --> display home page with edit button (ifuserloggedin)**

**# 5. DELETE --> Click Edit button to take them to Edit page, which lets user UPDATE or DELETE post**

**#           --> /views/cheerups/edit.erb --> display --> re-enter user input (max120words) or use delete button to delete post**

**# 6. USER also has option to like specific posts**

# EXTRA
Will be incorptating a filter section for the cheerups posts, so the user can filter between most liked, most recent, posts only done by them and only posts that arent done by them.

# LESSONS I'VE LEARNT
To test and push everything.

I learnt to use puts "" in most places when trying to find out if it works. 


# ERRORS
Some methods for cheerups wont work unless in the controllers.

