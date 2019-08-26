# README

NW NETs homepage

## Deployment

will need to use Cedar -14 bc sassc

sass-rails was deprecated
changes to the asset pipeline mean we'll need to use cedar-14 if deploy to heroku
see sassc-rails gem page for more

## Geocoding

I'm intending to use the Geocoder gem by alexreisner on github to handle geocoding. It looks like using lat/long is the standard for this process of handling geocoding, regardless. Check it out on github. It looks like using this gem will require that we make certain choices in our model--namely, including latitude and longitude in our model structure, and having a method that will return an address to geocode.