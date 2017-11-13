# Kitchy
A two sided market place for commercial kitchen businesses to buy and sell their unused commercial kitchen equipment.

#### Designed for mobile

***When you inspect your browser and amend the view to iphone you'll be able to see the design compatibility.***

![Kitchy mobile](https://github.com/sophiechhoeu/kitchy2/blob/deploy/app/readme_images/kitchy.png)

[Kitchy](https://kitchy.herokuapp.com/)


There were two key features that I was unable to implement due to time constraints.


### Cart functionality
I tried a few guides on Cart functionality also as it would be integral in the user flow for the buyer. This unfortunately didn't fit the scope of the project due to the databases that I had created for this iteration.

* [Cart Reference Tutorial](https://richonrails.com/articles/building-a-shopping-cart-in-ruby-on-rails)



### Transactional emails
I tried the following guides on transactional emails using ActionMailer but only managed to get the email preview working. Most of the guides required a user controller which as a result of a devise I was a little weary of how to implement because of the relationship between Mailer and user that was required.

* [Transactional Email Tutorial Reference](https://launchschool.com/blog/handling-emails-in-rails)




# Deliverables
Design Documentation
Demonstrate your ability to break down the problem and design a solution.

## The Problem

Commercial business in the food industry find it difficult to acquire equipment that fits their specific needs. They
also have peaks and troughs of business activity and as a result would like to sell their unused kitchen equipment.

## The solution
 This marketplace is specifically targeting businesses who want to interact with other businesses and buy and sell with industry professionals. Here where unused equipment can result in a cashflow loss, the marketplace could potentially rectify this as it provides an avenue for businesses to sell, and essentially look to buy equipment that could benefit the business.

A summary can be found below in the attached document.

  [Summary](https://docs.google.com/document/d/1gx8D7Efz7i3n-roOdB3sjIzUKn0XfqJ8YgAwzn9zhFM/edit?usp=sharing)


2 - User stories for the whole application.

The trello board below outlines happy and sad paths that a user or seller may face

These include or not limited to:

* payment errors
* cart errors
* confirmation emails for payment
* transactions

Which through additional testing and functionality would make the drastically improve the user flow of kitchy. Further information on the user flow will be highlighted below eg.

 * sprinkles *including renting options attributing with the type of business sizes that could potentially handle the site*

 * delivery *storing address information to a database to manage delivery emails*  

 * resellers *targeting resellers looking for additional stock*

Below is a link to my trello with further information including a link to my lean canvas breakdown

* [Lean Canvas](https://canvanizer.com/canvas/wOtdTq4dV0qfq)

* [Trello](https://trello.com/b/WDiA8jLb/two-sided-market-place-kitchy)

3 - A workflow diagram of the user journey/s.

An unregistered user will be able to see the products on the page but if they wanted to purchase they'll need to sign up as a member.

As an unregistered user they'll be able to see business profiles.

If the user is logged in and on the home page they'll be able to see the page with a list of posted by sellers and will be able to purchase products that they haven't posted.

If there is an unregistered user they'll be able to see the listings available however if they choose to click the buy button they'll be redirected to the sign up page either to sign up or login

Once you've made a purchase you'll be redirected to home and the transaction will appear on your purchases page.

*please note, the userflow img includes cart functionality preview as a registered and an unregistered user which has not been implemented*

![userflow](https://github.com/sophiechhoeu/kitchy2/blob/deploy/app/readme_images/kitchy_userflow.png)


4 - Wireframes

The design scheme has been kept throughout the website with different aspects removed based on the end project. The notable difference is the nav bar change and logo throughout pages to streamline the consistency of pages which were not in my original wireframes.

* Login

  ![Login page](https://github.com/sophiechhoeu/kitchy2/blob/deploy/app/readme_images/Login_page.png)

* Home

  ![Home Registered](https://github.com/sophiechhoeu/kitchy2/blob/deploy/app/readme_images/Home_Registered.png)

* Product Page

  ![Product Page](https://github.com/sophiechhoeu/kitchy2/blob/deploy/app/readme_images/Product_page.png)

* Payment

  ![Payment](https://github.com/sophiechhoeu/kitchy2/blob/deploy/app/readme_images/Payment.png)

* Profile

  ![Profile Page](https://github.com/sophiechhoeu/kitchy2/blob/deploy/app/readme_images/Profile_page.png)

* Transaction

  ![My Transactions](https://github.com/sophiechhoeu/kitchy2/blob/deploy/app/readme_images/My_transactions.png)


## Entity Relationship Diagram (ERD)

The relationships for Kitchy as below:

A **User** has many products
A **User** has one Profile
A **User** has many charges
A **User** has many messages
A **User** has many conversations

A **Product** belongs to **User**
A **Product** belongs to **Category**
A **Product** has many **charges**
A **Product** has many **transactions**

A **Profile** belongs to **User**

A **Category** has one **Product**

A **Transaction** belongs to **User**
A **Transaction** belongs to **Product**

A **Message** belongs to **User**
A **Message** belongs to **Conversation**

*Please note: this erd includes a cart system which wasn't implemented*

  ![ERD](https://github.com/sophiechhoeu/kitchy2/blob/deploy/app/readme_images/kitchy_erd.png)

6 - Project plan and estimation.

 [Summary](https://docs.google.com/document/d/1alcXzMWrt_aFf0b4q277ee0PeT3Ajk47e5jw1mfW8xo/edit?usp=sharing)


## Kitchy development process

Listed below is the development process for this app.

### Prerequisites

What things you need to install the software and how to install them

```
rails version 5.1.4
```

More info on the rails version updates as below:
[Rails Versions](https://rubygems.org/gems/rails/versions)

### Gems installed

The Gems installed from this project included

```
gem "shrine-cloudinary"
#image uploading and saving to a cloud

gem 'geocoder'
#maps

gem 'bootstrap', '~> 4.0.0.beta2.1'
#styling

gem 'jquery-rails'
#to run toggle nav

gem 'dotenv-rails', groups: [:development, :test]
#environmental variables

gem 'stripe'
#payment gem

gem "shrine"
#for image uploading


gem 'devise'
#for user authentication
```
## APIs Used
* Google Maps
* Stripe

## Deployment

Deployment is live on herokuapp
As below

Take a look: ***make sure to switch to mobile view in your desktop browser***

[Kitchy](https://kitchy.herokuapp.com/)
