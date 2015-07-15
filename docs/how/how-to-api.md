# How to design an API?

In computer programming, an **application programming interface** (API) is a set of routines, protocols, and tools for building software applications. An **API** expresses a software component in terms of its operations, inputs, outputs, and underlying types. An **API** represents a contract between you and those who Consume your data. Documentations is big part of it. Here’s a few of the important terms for api design:

- Resource as a single instance of an object.
- Collection as a collection of homogeneous objects.
- HTTP protocol for communicating over a network.
- Consumer as a client computer application capable of making HTTP requests.
- Third Party Developer as A developer not a part of your project but who wishes to consume your data.
- Server as an HTTP server/application accessible from a Consumer over a network.
- Endpoint as An API URL on a Server which represents either a Resource or an entire Collection.
- URL Segment as a slash-separated piece of information in the URL.

> The easier your API is to consume, the more people that will consume it.

## Design

First, decide how your data will be designed and how your core service / application will work. If doing API First Development this should be easy. If you’re attaching an API to an existing project, you may need to provide more abstraction. After designed finished the creative and comps(comprehensive layout) must be approved. Usually disign include:

- [Request](https://github.com/valerysamovich/engineering/blob/master/docs/how/how-to-api.md#request)
- [Response](https://github.com/valerysamovich/engineering/blob/master/docs/how/how-to-api.md#response)
- [Status code](https://github.com/valerysamovich/engineering/blob/master/docs/how/how-to-api.md#status-codes)
- [Endpoint](https://github.com/valerysamovich/engineering/blob/master/docs/how/how-to-api.md#endpoint)
- [Filters](https://github.com/valerysamovich/engineering/blob/master/docs/how/how-to-api.md#status&filtering)
- [Authentication](https://github.com/valerysamovich/engineering/blob/master/docs/how/how-to-api.md#status&authentication)
- [Content type](https://github.com/valerysamovich/engineering/blob/master/docs/how/how-to-api.md#status&content-type)

## Request

These are the two most commonly requests (GET and POST) used when your browser visits different webpages. The term POST is so popular that it has even invaded common language, where people who know nothing about how the Internet works do know they can “post” something on a friends Facebook wall. Here are the verbs, and next to them are their associated database call: 

Request   | Description
----------|---------------------------------------------------------------------------------------------
`GET`     | Retrieve a specific Resource from the Server, or a listing of Resources.
`POST`    | Create a new Resource on the Server. 
`PUT`     | Update a Resource on the Server, providing the entire Resource.
`PATCH`   | Update a Resource on the Server, providing only changed attributes.
`DELETE`  | Remove a Resource from the Server.
`HEAD`    | Retrieve meta data about a Resource, such as a hash of the data or when it was last updated.
`OPTIONS` | Retrieve information about what the Consumer is allowed to do with the Resource.

Typically, **GET** requests can be cached (and often are!) Browsers, for example, will cache GET requests (depending on cache headers), and will go as far as prompt the user if they attempt to POST for a second time. A HEAD request is basically a GET without the response body, and can be cached as well.

## Versioning

No matter what you are building, no matter how much planning you do beforehand, your core application is going to change, your data relationships will change, attributes will invariably be added and removed from your Resources. This is just how software development works, and is especially true if your project is alive and used by many people (which is likely the case if you’re building an API).

If you make changes to the Servers API and these changes break backwards compatibility, you will break things for your Consumer and they will resent you for it. To ensure your application evolves AND you keep your Consumers happy, you need to occasionally introduce new versions of the API while still allowing old versions to be accessible. if you are simply ADDING new features to your API, such as new attributes on a Resource (which are not required and the Resource will function without), or if you are ADDING new Endpoints, you do not need to increment your API version number since these changes do not break backwards compatibility. You will want to update your API Documentation (your Contract), of course.

Over time you can deprecate old versions of the API. To deprecate a feature doesn’t mean to shut if off or diminish the quality of it, but to tell Consumers of your API that the older version will be removed on a specific date and that they should upgrade to a newer version. A good RESTful API will keep track of the version in the URL. The other most common solution is to put a version number in a request header.

## Analytics

Keep track of the version/endpoints of your API being used by Consumers. This can be as simple as incrementing an integer in a database each time a request is made. There are many reasons that keeping track of API Analytics is a good idea, for example, the most commonly used API calls should be made efficient.

## Root URL

 It’s important that the root entry point into your API is as simple as possible, as a long complex **URL** will appear daunting and can turn developers away. Here are two common URL Roots:

    https://example.org/api/v1/*
    https://api.example.com/v1/*

It’s a good idea to have content at the root of your API. Hitting the root of GitHub’s API returns a listing of endpoints, for example. Also, it have the HTTPS prefix. As a good RESTful API, you must host your API behind HTTPS.

## Endpoint

An **Endpoint** is a URL within your API which points to a specific Resource or a Collection of Resources.

    https://api.example.com/v1/guests
    https://api.example.com/v1/reservations

When referring to what each endpoint can do, you’ll want to list valid HTTP Verb and Endpoint combinations. 

    GET /guests/gid/name Retrieve a listing of guests (id and Name).
    POST /owner: Create a new owner

## Filtering

When a Consumer makes a request for a listing of objects, it is important that you give them a list of every single object matching the requested criteria. it is important that you don’t perform any arbitrary limitations of the data. 

> Minimize the arbitrary limits imposed on Third Party Developers.

It is important, however, that you do offer the ability for a Consumer to specify some sort of **filtering/limitation** of the results. The most important reason for this is that the network activity is minimal and the Consumer gets their results back as soon as possible. **Filtering** is mostly useful for performing GETs on Collections of resources. Since these are GET requests, filtering information should be passed via the URL. Here are some examples of the types of filtering you could conceivably add to your API:

    ?limit=10: Reduce the number of results returned to the Consumer (for Pagination)
    ?offset=10: Send sets of information to the Consumer (for Pagination)
    ?guest_type_id=1: Filter records which match the following condition (WHERE animal_type_id = 1)
    ?sortby=name&order=asc: Sort the results based on the specified attribute (ORDER BY name ASC)

## Status Codes

It is very important that as a RESTful API, you make use of the proper HTTP Status Codes. Various network equipment is able to read these status codes. There are a [plethora of HTTP Status Codes](http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html) to choose from, however this list should be a good starting point:

- **200** OK – `[GET]` The Consumer requested data from the Server, and the Server found it for them (Idempotent).
- **201** CREATED – `[POST/PUT/PATCH]` The Consumer gave the Server data, and the Server created a resource.
- **204** NO CONTENT – `[DELETE]` The Consumer asked the Server to delete a Resource, and the Server deleted it.
- **400** INVALID REQUEST – `[POST/PUT/PATCH]` The Consumer gave bad data to the Server (Idempotent).
- **404** NOT FOUND – `[*]` The Consumer referenced an inexistant Resource or Collection (Idempotent).
- **500** INTERNAL SERVER ERROR – `[*]` The Server encountered an error, and request was successful.

**Status Code Ranges**

- The **1xx** range is reserved for low-level HTTP stuff.
- The **2xx** range is reserved for successful messages where all goes as planned.
- The **3xx** range is reserved for traffic redirection.
- The **4xx** range is reserved for responding to errors made by the Consumer.
- The **5xx** range is reserved as a response when the Server makes a mistake.

## Response

When performing actions using the different HTTP verbs to Server endpoints, a Consumer needs to get some sort of information in return. This list is pretty typical of RESTful APIs:

- GET `/collection` Return a listing (array) of Resource objects
- GET `/collection/resource` Return an individual Resource object
- POST `/collection` Return the newly created Resource object
- PUT `/collection/resource` Return the complete Resource object
- PATCH `/collection/resource` Return the complete Resource object
- DELETE `/collection/resource` Return an empty document

## Authentication

Most of the time a server will want to know exactly who is making which Requests. Some APIs provide endpoints to be consumed by the general (anonymous) public, but most of the time work is being perform on behalf of someone.

[**OAuth 2.0**](https://tools.ietf.org/html/rfc6749) provides a great way of doing this. With each Request, you can be sure you know which Consumer is making requests, which User they are making requests on behalf of, and provides a (mostly) standardized way of expiring access or allowing Users to revoke access from a Consumer, all without the need for a third-party consumer to know the Users login credentials.

There are also [**OAuth 1.0**](http://tools.ietf.org/html/rfc5849) and [**xAuth**](https://dev.twitter.com/oauth/xauth), which fill the same space. Whichever method you choose, make sure it is something common and well documented with many different libraries written for the languages/platforms which your Consumers will likely be using.

## Content type

Currently, the most “exciting” of APIs provide **JSON** data from RESTful interfaces. This includes Facebook, Twitter, GitHub, and etc. XML appears to have lost the war a while ago in SOAP (except in large corporate environments). Some API creators recommend adding a .json, .xml, or .html file extension to the URL (after the endpoint) for specifying the content type to be returned, although I’m personally not a fan of this.

    {"employees":[
        {"firstName":"John", "lastName":"Doe"},
        {"firstName":"Anna", "lastName":"Smith"},
        {"firstName":"Peter", "lastName":"Jones"}
    ]}

Read more about [JSON](http://www.w3schools.com/json/)

## Architecture

Usually parent pom file contain the common plugins (Checkstyle, PMD, Findbugs, JACOCO or Cobertura, Maven surefire) and setting, which can be inherited by child poms (Orica (for easy mapping), Retrofit, Jakson, Commander, and Company share common libraries). Include the Apache CXF (Framework for hosting/running web service), for data serialization (Java object to JSON or XML object) and deserialization (opposite) add Jackson.

## Errors

Throw an exception if application can't recover from the error scenario, for example if the back-end service throws an exception. To insure that resiliency of the rest service, you should design partial success scenarios and full failure scenarios. For partial success scenario, for example if you not able to retrieve all guests profiles then you return guests objects in the response and for guests that have errors you include error details inside guest json object. For full failure scenario the response will only include error details (error code, stack trace, error message. field validation error(field name, rejected values, for example date format)). wdpr-errors.

## Spring

Main used for dependency injection.  By default all Spring beans are singleton. It is more efficient and keeps the application code cleaner, because it's don't worry about creating dependencies. 

## Environments

All environments setting are under src/main/recourses/environment/

> http://codeplanet.io/principles-good-restful-api-design/
