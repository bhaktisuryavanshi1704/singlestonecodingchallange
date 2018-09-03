# cucumber-ruby-example

This is sample cucumber + selenium project in Ruby. It shows how to building automated functional tests for the home page and repository page 

### Install Dependencies

Supported Ruby Version - 2.0+  

We are using these custom modules : selenium-webdriver, rest-client, json.

We have preconfigured `ruby` to automatically run `gems` so we can simply do:

```
gem install selenium-webdriver rest-client json 
```

### Install geckodriver  

You need to install [geckodriver](https://github.com/mozilla/geckodriver/releases) to run test on Mozilla. Then extract the downloaded file in a directory in the PATH.

### Run test

First you need to provide few details in Steps file. `features > step_definitions > my_search.rb`. 

After providing these details, you are ready to start test.

```
cucumber --format json_pretty > cucumber.json
```

It will generate cucumber.json test result file. 
