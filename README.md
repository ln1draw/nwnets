# README

NW NETs homepage

## General coding theory, to start

Was originally a much more complicated app, but I scrapped the original. It was overcomplicated, prevented deployment, and the load speed for the client was too high. I want to make this usable even for the large portion of the public that doesn't have access to broadband, and to folks like the new Ada grads who might want to participate in development but wouldn't want to engage in complex SPAs.

To that end, this is a Rails app running vanilla JavaScript, deployed on Heroku. This may change in the future, but my goal is to keep it simple and stick mainly to this stack. We don't need to reinvent the wheel; rather, let's make something robust that works well, and focus on making it accessible.

## Features and requests

At the moment, it's rather feature and data poor. Want to make a PR? I would love some help!

First, if you aren't sure what to code, please ping ellenfromillinois@gmail.com about it. There are areas for improvement all over the codebase; we could almost certainly use your help! In particular, I would like to eventually have an exposed API with GET endpoints available to other developers so they can use the same data we generate. Additionally, I am a developer and not a designer, and there is certainly room for improvement in the UI and UX. And there are, as of this typing, no tests. I have not attempted to tab through, so the application likely isn't accessible. These are all highly desired improvements.

## Installation

As far as I can recall, should be a fairly standard installation--bundle install, rails s, etc. If that isn't correct let me know and I will update this README.

## Deployment

Currently deployed to heroku at nwnets.herokuapp.com

## Geocoding

I'm intending to use the Geocoder gem by alexreisner on github to handle geocoding. It looks like using lat/long is the standard for this process of handling geocoding, regardless. Check it out on github. It looks like using this gem will require that we make certain choices in our model--namely, including latitude and longitude in our model structure, and having a method that will return an address to geocode.