WHAT?
-----
* Application Programming Interface.
* In general, any way a systems component communicates to another component.
* You are already using APIs all the time when you call methods.
* We're talking about a specific class of APIs today, server side Web APIs, which is a way to communicate between web servers over HTTP, so your app sends a request and receive a response.
* JSON - the current common format of the information passed back and forth, such as parameters to a web server and the format of responses received.
* The great thing about JSON is that it's "Just Text", which means it's readable by humans AND computers!

WHY?
----
* Vast troves of data.
* Interoperability and integration between different information silos of the web.  You can Twitter on your Facebook on your Google Calendar. IFTTT (https://ifttt.com/wtf)
* Alternative or custom interfaces.
* Mashups like http://padmapper.com, http://gifsound.com/
* * 
* What do you think makes a good API?  What makes a bad one?  What could be some problems in using APIs?  In retrieving data?  In storing data?

HOW?
----
* Today we are going to work with the Soundcloud API.  We're going to look at a sample Rails app that searches for Soundcloud's hottest tracks containing a certain search term.  
* 
* Let's step through the design process, and we'll look at the code as we go along.

* Where do we start?
* 
* My process is to start where the person who's going to be using the app would start.  
* Let's create our search form and a controller with an action to show the form and a route to make it all go.  The barest hint of style.
* Next, let's think about what will happen when that submit button gets hit?
* * We want to take our search term and use it as a parameter in our request to the Soundcloud API.
* * Now's a good time to figure out how to query the API, find the soundcloud-ruby gem, and read some documentation.
* Where do you think we should put the code that does the talking to the API?
* * Encapsulate the logic for talking to an API in a model.
* Add a controller action to use our searcher model.

DISCUSSION
----------
* What other ways are there to organize API integration?  What are tradeoffs?
* * If its an API that add mustaches to an image, one way might be to wrap the API in an img_tag-like helper.
* * If its client side, for example with Javascript.
* What are some improvements we could make on the current exception handling?
* * Separate service to report errors is really valuable, like ExceptionMailer
* What tests would you write to make sure this code is working?
* * Do you want to hit the API every time your tests run?
* * How can you make sure your code is right without hitting the API?  Save the expected response.  Webmock.
