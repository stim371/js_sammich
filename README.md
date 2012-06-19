# It's Sandwich Time

Use this app to select a sandwich and send it off to the sandwich artist of your choice.

## Why is this here?

This is a quick example app to exhibit a range of capabilities, which I will detail below. It isn't meant to be feature-complete or fully tested, just an example...

## Capabilities

This section will detail the various features, gems etc used in the production of this app.

### Ruby!

    "RoR"[0]

### Rails!

    "RoR"[-1]

### Twitter Bootstrap

### jQuery / CoffeeScript

Primarily used to show and hide divs in the order form.

### HTTParty

Used to grab Quotes from the API.

### ActionMailer

Used to send emails out to sandwich artists when ordered.

### Twitter Integration (pending)

Will be used in concert with ActionMailer depending on user input.

### External APIs

* Quotes
  * Grabbed some Hitchikers Guide quotes from http://www.iheartquotes.com/api/v1/random
* Recipes (pending)
  * Will grab random sandwich recipes to suggest to users from http://punchfork.com/api

### Cucumber / RSpec

Examples of unit and acceptance testing methods.

### Auth with Devise (pending)

Allow users to sign in to manage their orders and not have their choices out in the open. This could also serve as the centerpoint for emails and twitter integration as well.

## Deviations from Stock App

### Multiple lists on homepage

### Quotes class

### Moved Tables to partials

### Mail interception in test/dev environments

### after_create Observer for mail/tweet (pending)