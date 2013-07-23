# motion-frank-screenshots

Take automated screenshots in RubyMotion apps using Frank.

## Installation

Add this line to your application's Gemfile:

    gem 'motion-frank-screenshots'

And then execute:

    bundle install

Or install it yourself as:

    gem install motion-frank-screenshots

Then run the following command once, to get everything set up:

    rake frank:init_screenshots

## Usage

To take a screenshot in your frank scenario, add the following line:

    Then I take a screenshot into "<filename>"

This will take a picture of what is currently on your screen and store it in `screenshots/<filename>.png` in non-retina mode, `screenshots/<filename>@2x.png` for 3.5 inch retina mode and `screenshots/<filename>-568h@2x.png` for 4 inch retina mode.

To get started, you can add the following into `features/screenshots.feature`:

    Feature: 
      As a RubyMotion developer
      I want to take screenshots
      So I can submit them with the app to the App Store

    Scenario: Splash screen
      Given I launch the app
      Then I take a screenshot into "Default"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
