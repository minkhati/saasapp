# README

Software as a Service using Ruby on Rails. 


### Tools used
    Ruby 2.3.0, Rails 5.0.0, PostgreSQL 0.18.4, Bootstrap-saas, devise 4.2.0, stripe 1.48.0, figaro 1.1.1, mailgun for sending emails, paperclip (imagemagick)  

#### For Stripe implementation follow the steps below
    include the stripe gem in the gemfile and install the gem
    create a stripe.rb file inside the initializer directory and enter the two lines below
    
    ```
    Stripe.api_key = ENV["stripe_api_key"]
    STRIPE_PUBLIC_KEY = ENV["stripe_publishable_key"]
    ```
    
    update the application.yml file with the with your STRIPE secrete key and public key
    