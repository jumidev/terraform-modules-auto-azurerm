# azurerm_api_management_authorization_server

Manages an Authorization Server within an API Management Service.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.api_management_name** | string | True | -  |  -  | The name of the API Management Service in which this Authorization Server should be created. Changing this forces a new resource to be created. | 
| **var.authorization_methods** | string | True | -  |  `DELETE`, `GET`, `HEAD`, `OPTIONS`, `PATCH`, `POST`, `PUT`, `TRACE`  | The HTTP Verbs supported by the Authorization Endpoint. Possible values are `DELETE`, `GET`, `HEAD`, `OPTIONS`, `PATCH`, `POST`, `PUT` and `TRACE`. | 
| **var.authorization_endpoint** | string | True | -  |  -  | The OAUTH Authorization Endpoint. | 
| **var.client_id** | string | True | -  |  -  | The Client/App ID registered with this Authorization Server. | 
| **var.client_registration_endpoint** | string | True | -  |  -  | The URI of page where Client/App Registration is performed for this Authorization Server. | 
| **var.display_name** | string | True | -  |  -  | The user-friendly name of this Authorization Server. | 
| **var.grant_types** | string | True | -  |  `authorizationCode`, `clientCredentials`, `implicit`, `resourceOwnerPassword`  | Form of Authorization Grants required when requesting an Access Token. Possible values are `authorizationCode`, `clientCredentials`, `implicit` and `resourceOwnerPassword`. | 
| **var.name** | string | True | -  |  -  | The name of this Authorization Server. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.bearer_token_sending_methods** | string | False | -  |  `authorizationHeader`, `query`  | The mechanism by which Access Tokens are passed to the API. Possible values are `authorizationHeader` and `query`. | 
| **var.client_authentication_method** | string | False | -  |  `Basic`, `Body`  | The Authentication Methods supported by the Token endpoint of this Authorization Server.. Possible values are `Basic` and `Body`. | 
| **var.client_secret** | string | False | -  |  -  | The Client/App Secret registered with this Authorization Server. | 
| **var.default_scope** | string | False | -  |  -  | The Default Scope used when requesting an Access Token, specified as a string containing space-delimited values. | 
| **var.description** | string | False | -  |  -  | A description of the Authorization Server, which may contain HTML formatting tags. | 
| **var.resource_owner_password** | string | False | -  |  -  | The password associated with the Resource Owner. | 
| **var.resource_owner_username** | string | False | -  |  -  | The username associated with the Resource Owner. | 
| **var.support_state** | string | False | -  |  -  | Does this Authorization Server support State? If this is set to `true` the client may use the state parameter to raise protocol security. | 
| **var.token_body_parameter** | block | False | -  |  -  | A `token_body_parameter` block. | 
| **var.token_endpoint** | string | False | -  |  -  | The OAUTH Token Endpoint. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **api_management_name** | string  | - | 
| **authorization_methods** | string  | - | 
| **authorization_endpoint** | string  | - | 
| **client_id** | string  | - | 
| **client_registration_endpoint** | string  | - | 
| **display_name** | string  | - | 
| **grant_types** | string  | - | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **bearer_token_sending_methods** | string  | - | 
| **client_authentication_method** | string  | - | 
| **client_secret** | string  | - | 
| **default_scope** | string  | - | 
| **description** | string  | - | 
| **resource_owner_password** | string  | - | 
| **resource_owner_username** | string  | - | 
| **support_state** | string  | - | 
| **token_body_parameter** | block  | - | 
| **token_endpoint** | string  | - | 
| **id** | string  | The ID of the API Management Authorization Server. | 