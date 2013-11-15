# Menu Magic


1. [Learning Objectives](#learning-objectives)
1. [Summary](#summary)
1. [Releases](#releases)
1. [Helpful Resources](#helpful-resources)

## Learning Objectives
This challenge should meet 'most' of the :+1: [learning objectives](https://github.com/fox-squirrels-2013/phase-2-guide/blob/master/week-3/learning-objectives.md) for Phase 2.  Read through these before you start and after completing each release to guide your learning. 


## Summary 
You will create a menu application based on [THIS MOCKUP](menus.png) and the releases below. Start from the skeleton code provided and submit a pull request with all releases completed.  **DO NOT MERGE YOUR PULL REQUEST TO MASTER** 

## Releases

### Release 1 : Menus
* Create a migration and model for menus.
* Add validations 
* In IRB, test your data model.  Verify that you can create Menus with correct and see errors when you try to create Menus with incorrect input. 
* Create the first view you see in the [Mockup](menus.png) the Menu. (Don't worry about styling yet).
* Implement Create and Read for your Menus
* Use Rspec, Shoulda and Capybara to test your Menu model and integration.

### Release 2: Items
  
* Create the migrations and models necessary for Items
* In IRB, test your Items data model. 
* Create the Items View 
* Implement Create, Read your Items.
* Use Rspec, Shoulda and Capybara to test your models and integration.
 
### Release 3 : Items on Menus (NO AJAX)
* Create a many-to-many relationship between items and menus.
* In IRB, test your data model.  Verify that you can assign Items to a Menu and view all Items on a Menu and all Menus that an Item is on. 
* Create the Items on Menus View (don't worry about styling yet).  In the Items on Menus View, the drop down should be filled with all possible items. 
* Implement Adding and Deleting Items from a menu.
* Use Rspec, Shoulda and Capybara to test your models and integration.


### Release 4: AJAXify it.
* Add AJAX 
* ... FINISH

### Release 5: Errors
* Use JavaScript to validate your forms before submission.
* Use `errors` to display errors to the form after submission.

### Release 6: CSS
* Add CSS to make it beautiful.  (At the minimum it should look like the mockup).


## Helpful Resources
* See the [resources file](https://github.com/fox-squirrels-2013/phase-2-guide/blob/master/resources.md)