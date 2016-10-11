#Rails5 RESTful API

Create a tiny RESTful API to index a page's content. "Index the content" means to parse the page content and store its content - in this case to store the content that is found inside the tags h1, h2 and h3 and the links.

####Although you have freedom to show your skills, the requirements below must be fulfilled:
- Your code must be written in Ruby / Ruby on Rails

The API must have at least two endpoints:
- One that receives a url and indexes the content
- One that lists previously stored urls

####For endpoints:
One endpoint should receive the URL of the page, grab its content and store its content with the tags h1, h2 and h3 and the links
The other endpoint should list the urls and content stored in the database
- The API must store only content
- Inside html header tags (H1, H2 and H3)
- Links urls
- Your project must have a readme

In sum, what one has to do is pick up the contents of the posted url, parse the source code (html) and store the contents of h1, h2 and h3 and the links.

####Within this assessment, the following skills will be assessed:
- Software design
- API Design and REST
- Testing
- Code performance and scalability
