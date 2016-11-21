# OAuth 2.0

**OAuth 2.0** is the next evolution of the OAuth protocol which was originally created in late 2006. OAuth 2.0 focuses on client developer simplicity while providing specific authorization flows for web applications, desktop applications, mobile phones, and living room devices.

- [OAuth 2.0](https://oauth.net/2/) official website
- [The OAuth 2.0 Authorization Framework](https://tools.ietf.org/html/rfc6749) by IETF

![oauth2.0-example](/assets/oauth2.0-example.png "OAuth 2.0 example")

## OAuth Actors

- **Resource Owner**
  - Owns resources
  - Delegate right to access the resource to the third-party apps
- **Client**
  - Wants to access resources
  - Gets and holds Access Token and Refresh Token
  - Shoud NOT hold password of Resource Owner
  - Identified via ClientID and ClientSecret
- **OAuth Server**
  - Components
    - Login page
    - Database for Users
    - Concent Server
    - Token Information (token values, token attributes) etc.
  - Endpoints
    - `/authorize` **GET** *standardized endpoint*
      - Authorization Code (for Authorization Code Grant)
      - Access Token (for Implicit Grant)
    - `/token` **POST** Authorization: Basic clientId:client Server *standardized endpoint*
      - Access Token and Refresh Token (for Authorization Code Grant, Client Credentials Grant and Rsource Owner Password Credentials Grant
    - `verify` *not standardized*  only internally accessible by Resource Server
- **Resource Server**
  - Holds resources
  - Protect resources
  - Makes resources available via `/api`

![oauth2.0-actors](/assets/oauth2.0-actors.png "OAuth 2.0 Actors")

## OAuth Endpoints

- **Authorization Endpoint** `/autorize` **GET**
  - Input Query Parameters
    - state
    - scope
    - response_type
    - client_id
    - redirectr_uri
  - Output
    - Authorization Code (for Authorization Code Grant)
    - Access Token (for Implicit Grant)
  - Delivired via query parameter in the redirect URI
- **Token Endpoint** `/token` **POST**
  - Authorization: Basic `{clintId}:[clientSecret}`
  - Input Query Parameters
    - grant_type
    - code
    - client_id
    - redirect_uri
  - Output
    - Access Token and Refresh Token (for Authorization Code Grant, Client Credentials Grant and Rsource Owner Password Credentials Grant
- **Redirect Endpoint** **GET**
  - Input Query Parameters
    - state
    - scopes
    - code
- **Resource Endpoint** `/api`
  - Authorization: Bearer `{AccessToken}`
  - Access Token and Refresh Token (for Authorization Code Grant, Client Credentials Grant and Rsource Owner Password Credentials Grant

## Token & Credentials

**Token** are unique, long strings of random characters. It's not contain any users data.

- Tokens
  - **Access Token (AT)**: Bearer token used by client to access the resources. Length: 24 hours, or 1 month.
  - **Refresh Token (RT)** Used to get a **Access Token**. Length: 30 hours, or 3 month.
  - **Authorization Code (Code)** a confirmation of the successful access
- Credentials
  - Resource Owner Credentials
  - Client Credentials: ClineID & ClientSecret
  - Access Token

## OAuth Flows


