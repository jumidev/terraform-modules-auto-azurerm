# azurerm_api_management_authorization_server

Manages an Authorization Server within an API Management Service.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_authorization_server" 
}

inputs = {
   # api_management_name → set in tfstate_inputs
   authorization_methods = "authorization_methods of api_management_authorization_server" 
   authorization_endpoint = "authorization_endpoint of api_management_authorization_server" 
   client_id = "client_id of api_management_authorization_server" 
   client_registration_endpoint = "client_registration_endpoint of api_management_authorization_server" 
   display_name = "display_name of api_management_authorization_server" 
   grant_types = "grant_types of api_management_authorization_server" 
   name = "name of api_management_authorization_server" 
   resource_group_name = "${resource_group}" 
}

tfstate_inputs = {
   api_management_name = "path/to/api_management_component:name" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **api_management_name** | string |  -  |  The name of the API Management Service in which this Authorization Server should be created. Changing this forces a new resource to be created. | 
| **authorization_methods** | string |  `DELETE`, `GET`, `HEAD`, `OPTIONS`, `PATCH`, `POST`, `PUT`, `TRACE`  |  The HTTP Verbs supported by the Authorization Endpoint. Possible values are `DELETE`, `GET`, `HEAD`, `OPTIONS`, `PATCH`, `POST`, `PUT` and `TRACE`. | 
| **authorization_endpoint** | string |  -  |  The OAUTH Authorization Endpoint. | 
| **client_id** | string |  -  |  The Client/App ID registered with this Authorization Server. | 
| **client_registration_endpoint** | string |  -  |  The URI of page where Client/App Registration is performed for this Authorization Server. | 
| **display_name** | string |  -  |  The user-friendly name of this Authorization Server. | 
| **grant_types** | string |  `authorizationCode`, `clientCredentials`, `implicit`, `resourceOwnerPassword`  |  Form of Authorization Grants required when requesting an Access Token. Possible values are `authorizationCode`, `clientCredentials`, `implicit` and `resourceOwnerPassword`. | 
| **name** | string |  -  |  The name of this Authorization Server. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **bearer_token_sending_methods** | string |  -  |  `authorizationHeader`, `query`  |  The mechanism by which Access Tokens are passed to the API. Possible values are `authorizationHeader` and `query`. | 
| **client_authentication_method** | string |  -  |  `Basic`, `Body`  |  The Authentication Methods supported by the Token endpoint of this Authorization Server.. Possible values are `Basic` and `Body`. | 
| **client_secret** | string |  -  |  -  |  The Client/App Secret registered with this Authorization Server. | 
| **default_scope** | string |  -  |  -  |  The Default Scope used when requesting an Access Token, specified as a string containing space-delimited values. | 
| **description** | string |  -  |  -  |  A description of the Authorization Server, which may contain HTML formatting tags. | 
| **resource_owner_password** | string |  `Random string of 32 characters`  |  -  |  The password associated with the Resource Owner. | 
| **resource_owner_username** | string |  -  |  -  |  The username associated with the Resource Owner. | 
| **support_state** | string |  -  |  -  |  Does this Authorization Server support State? If this is set to `true` the client may use the state parameter to raise protocol security. | 
| **token_body_parameter** | [block](#token_body_parameter-block-structure) |  -  |  -  |  A `token_body_parameter` block. | 
| **token_endpoint** | string |  -  |  -  |  The OAUTH Token Endpoint. | 

### `token_body_parameter` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `value` | string | Yes | - | The Value of the Parameter. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Authorization Server. | 

Additionally, all variables are provided as outputs.
