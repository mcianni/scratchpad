# Scratchpad

Scratchpad gives you a place outside of the normal flow of a page to display some data. You add data to the scratchpad throughout the request cycle and the collection is rendered in a panel at the bottom of the page. To add to the scratchpad pass any type of data to the scratchpad helper, for example (in erb):

```erb
  <% scratchpad @params %>
```

## Installation
Add this line to your application's Gemfile:

    gem 'scratchpad', group: :development

And then execute:

    $ bundle

## Usage
Scratchpad adds a view helper into your application. Call it as many times as necessary.

```erb
  <% scratchpad @user %>
```


This project rocks and uses MIT-LICENSE.
