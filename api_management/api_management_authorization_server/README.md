# azurerm_api_management_authorization_server

Manages an Authorization Server within an API Management Service.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_authorization_server" 
}

inputs = {
   api_management_name = "api_management_name of api_management_authorization_server" 
   authorization_methods = "authorization_methods of api_management_authorization_server" 
   authorization_endpoint = "authorization_endpoint of api_management_authorization_server" 
   client_id = "client_id of api_management_authorization_server" 
   client_registration_endpoint = "client_registration_endpoint of api_management_authorization_server" 
   display_name = "display_name of api_management_authorization_server" 
   grant_types = "grant_types of api_management_authorization_server" 
   name = "name of api_management_authorization_server" 
   resource_group_name = "${resource_group}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.api_management_name** | string | True | -  |  The name of the API Management Service in which this Authorization Server should be created. Changing this forces a new resource to be created. | 
| **var.authorization_methods** | string | True | `DELETE`, `GET`, `HEAD`, `OPTIONS`, `PATCH`, `POST`, `PUT`, `TRACE`  |  The HTTP Verbs supported by the Authorization Endpoint. Possible values are `DELETE`, `GET`, `HEAD`, `OPTIONS`, `PATCH`, `POST`, `PUT` and `TRACE`. | 
| **var.authorization_endpoint** | string | True | -  |  The OAUTH Authorization Endpoint. | 
| **var.client_id** | string | True | -  |  The Client/App ID registered with this Authorization Server. | 
| **var.client_registration_endpoint** | string | True | -  |  The URI of page where Client/App Registration is performed for this Authorization Server. | 
| **var.display_name** | string | True | -  |  The user-friendly name of this Authorization Server. | 
| **var.grant_types** | string | True | `authorizationCode`, `clientCredentials`, `implicit`, `resourceOwnerPassword`  |  Form of Authorization Grants required when requesting an Access Token. Possible values are `authorizationCode`, `clientCredentials`, `implicit` and `resourceOwnerPassword`. | 
| **var.name** | string | True | -  |  The name of this Authorization Server. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.bearer_token_sending_methods** | string | False | `authorizationHeader`, `query`  |  The mechanism by which Access Tokens are passed to the API. Possible values are `authorizationHeader` and `query`. | 
| **var.client_authentication_method** | string | False | `Basic`, `Body`  |  The Authentication Methods supported by the Token endpoint of this Authorization Server.. Possible values are `Basic` and `Body`. | 
| **var.client_secret** | string | False | -  |  The Client/App Secret registered with this Authorization Server. | 
| **var.default_scope** | string | False | -  |  The Default Scope used when requesting an Access Token, specified as a string containing space-delimited values. | 
| **var.description** | string | False | -  |  A description of the Authorization Server, which may contain HTML formatting tags. | 
| **var.resource_owner_password** | string | False | -  |  The password associated with the Resource Owner. | 
| **var.resource_owner_username** | string | False | -  |  The username associated with the Resource Owner. | 
| **var.support_state** | string | False | -  |  Does this Authorization Server support State? If this is set to `true` the client may use the state parameter to raise protocol security. | 
| **var.token_body_parameter** | block | False | -  |  A `token_body_parameter` block. | 
| **var.token_endpoint** | string | False | -  |  The OAUTH Token Endpoint. | 

### `token_body_parameter` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The Name of the Parameter. |
| `value` | string | Yes | - | The Value of the Parameter. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Authorization Server. | 

Additionally, all variables are provided as outputs.
