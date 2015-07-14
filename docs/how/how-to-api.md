# API Design and architecture

## Design

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
