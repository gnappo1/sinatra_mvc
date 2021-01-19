# REST Architectural Constraints

[Check out this useful website](<https://restfulapi.net/rest-architectural-constraints/>)

[REST - Wikipedia](<https://en.wikipedia.org/wiki/Representational_state_transfer/>)
Representational state transfer (REST) is a de-facto standard for a software architecture for interactive applications that typically use multiple Web services. In order to be used in a REST-based application, a Web Service needs to meet certain constraints; such a Web Service is called RESTful. A RESTful Web service is required to provide an application access to its Web resources in a textual representation and support reading and modification of them with a stateless protocol and a predefined set of operations. By being RESTfull, Web Services provide interoperability between the computer systems on the internet that provide these services. REST offers an alternative to, for instance, [SOAP](<https://en.wikipedia.org/wiki/SOAP/>) as method of access to a Web Service.

"Web resources" were first defined on the World Wide Web as documents or files identified by their URLs. However, today they have a much more generic and abstract definition that encompasses every thing, entity, or action that can be identified, named, addressed, handled, or performed, in any way whatsoever, on the Web. In a RESTful Web service, requests made to a resource's URI will elicit a response with a payload formatted in HTML, XML, JSON, or some other format. The response can confirm that some alteration has been made to the resource state, and the response can provide hypertext links to other related resources. When HTTP is used, as is most common, the operations (HTTP methods) available are GET, HEAD, POST, PUT, PATCH, DELETE, CONNECT, OPTIONS and TRACE.

By using a stateless protocol and standard operations, RESTful systems aim for fast performance, reliability, and the ability to grow by reusing components that can be managed and updated without affecting the system as a whole, even while it is running.

The term representational state transfer was introduced and defined in 2000 by Roy Fielding in his doctoral dissertation. Fielding's dissertation explained the REST principles that were known as the "HTTP object model" beginning in 1994, and were used in designing the HTTP 1.1 and Uniform Resource Identifiers (URI) standards. The term is intended to evoke an image of how a well-designed Web application behaves: it is a network of Web resources (a virtual state-machine) where the user progresses through the application by selecting resource identifiers such as http://www.example.com/articles/21 and resource operations such as GET or POST (application state transitions), resulting in the next resource's representation (the next application state) being transferred to the end user for their use.

## Our REST routes for a movies-application

| Verb | Route| View|
|------|------|-------|
| GET | /movies | index | # get ALL the movies
| GET | /movies/:id | show| # get 1 specific movie   ex: '/movies/4'
| GET | /movies/new | new | # get the form to CREATE a new movie 
| POST | /movies |  |  # CREATES a new movie using the data from the form (params)
| GET | /movies/:id/edit | edit | # get the form to edit a specific movie 
| PUT/PATCH | /movies/:id |  |  # UPDATE the specific movie using data from the form 
| DELETE | /movies/:id |  |  # DELETE the specific movie from the database 