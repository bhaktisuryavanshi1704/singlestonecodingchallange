Feature: Search capitalone/Hygieia repository in github



Scenario:
  Given We navigate to the Github WebSite
 

When We search for the capitalone/Hygieia
  

Then The results for the search will be displayed

And Verify that the following 4 repo headers appear Commit, Branches, releases, contributors

And Verify other search criteria 