# How to design API?

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

Decide how your data will be designed and how your core service / application will work. 

Design starts from sketching and finished after the creative and comps (comprehensive layout) is approved. During the creation of API design inlcude:

- Request. 
- Response.
- HTTP Method (for example - `GET`).
- Errors support (400, 403, 404, 500).
- Url endpoint.

Query parameters are used to filter and reduce the payload in the response.

## Architecture

Usually parent pom file contain the common plugins (Checkstyle, PMD, Findbugs, JACOCO or Cobertura, Maven surefire) and setting, which can be inherited by child poms (Orica (for easy mapping), Retrofit, Jakson, Commander, and Company share common libraries). Include the Apache CXF (Framework for hosting/running web service), for data serialization (Java object to JSON or XML object) and deserialization (opposite) add Jackson.

## Errors

Throw an exception if application can't recover from the error scenario, for example if the back-end service throws an exception. To insure that resiliency of the rest service, you should design partial success scenarios and full failure scenarios. For partial success scenario, for example if you not able to retrieve all guests profiles then you return guests objects in the response and for guests that have errors you include error details inside guest json object. For full failure scenario the response will only include error details (error code, stack trace, error message. field validation error(field name, rejected values, for example date format)). wdpr-errors.

## Spring

Main used for dependency injection.  By default all Spring beans are singleton. It is more efficient and keeps the application code cleaner, because it's don't worry about creating dependencies. 

## Environments

All environments setting are under src/main/recourses/environment/

> http://codeplanet.io/principles-good-restful-api-design/
