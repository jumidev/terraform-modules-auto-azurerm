# azurerm_api_management_authorization_server

Manages an Authorization Server within an API Management Service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **api_management_name** | string | True | -  |  -  | The name of the API Management Service in which this Authorization Server should be created. Changing this forces a new resource to be created. | 
| **authorization_methods** | string | True | -  |  `DELETE`, `GET`, `HEAD`, `OPTIONS`, `PATCH`, `POST`, `PUT`, `TRACE`  | The HTTP Verbs supported by the Authorization Endpoint. Possible values are `DELETE`, `GET`, `HEAD`, `OPTIONS`, `PATCH`, `POST`, `PUT` and `TRACE`. | 
| **authorization_endpoint** | string | True | -  |  -  | The OAUTH Authorization Endpoint. | 
| **client_id** | string | True | -  |  -  | The Client/App ID registered with this Authorization Server. | 
| **client_registration_endpoint** | string | True | -  |  -  | The URI of page where Client/App Registration is performed for this Authorization Server. | 
| **display_name** | string | True | -  |  -  | The user-friendly name of this Authorization Server. | 
| **grant_types** | string | True | -  |  `authorizationCode`, `clientCredentials`, `implicit`, `resourceOwnerPassword`  | Form of Authorization Grants required when requesting an Access Token. Possible values are `authorizationCode`, `clientCredentials`, `implicit` and `resourceOwnerPassword`. | 
| **name** | string | True | -  |  -  | The name of this Authorization Server. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 
| **bearer_token_sending_methods** | string | False | -  |  `authorizationHeader`, `query`  | The mechanism by which Access Tokens are passed to the API. Possible values are `authorizationHeader` and `query`. | 
| **client_authentication_method** | string | False | -  |  `Basic`, `Body`  | The Authentication Methods supported by the Token endpoint of this Authorization Server.. Possible values are `Basic` and `Body`. | 
| **client_secret** | string | False | -  |  -  | The Client/App Secret registered with this Authorization Server. | 
| **default_scope** | string | False | -  |  -  | The Default Scope used when requesting an Access Token, specified as a string containing space-delimited values. | 
| **description** | string | False | -  |  -  | A description of the Authorization Server, which may contain HTML formatting tags. | 
| **resource_owner_password** | string | False | -  |  -  | The password associated with the Resource Owner. | 
| **resource_owner_username** | string | False | -  |  -  | The username associated with the Resource Owner. | 
| **support_state** | string | False | -  |  -  | Does this Authorization Server support State? If this is set to `true` the client may use the state parameter to raise protocol security. | 
| **token_body_parameter** | block | False | -  |  -  | A `token_body_parameter` block. | 
| **token_endpoint** | string | False | -  |  -  | The OAUTH Token Endpoint. | 

