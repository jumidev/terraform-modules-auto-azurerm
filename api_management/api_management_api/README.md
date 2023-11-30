# azurerm_api_management_api

Manages an API within an API Management Service.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_api" 
}

inputs = {
   name = "name of api_management_api" 
   api_management_name = "api_management_name of api_management_api" 
   resource_group_name = "${resource_group}" 
   revision = "revision of api_management_api" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the API Management API. Changing this forces a new resource to be created. | 
| **var.api_management_name** | string | True | -  |  -  |  The Name of the API Management Service where this API should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The Name of the Resource Group where the API Management API exists. Changing this forces a new resource to be created. | 
| **var.revision** | string | True | -  |  -  |  The Revision which used for this API. Changing this forces a new resource to be created. | 
| **var.api_type** | string | False | `http`  |  `graphql`, `http`, `soap`, `websocket`  |  Type of API. Possible values are `graphql`, `http`, `soap`, and `websocket`. Defaults to `http`. | 
| **var.display_name** | string | False | -  |  -  |  The display name of the API. | 
| **var.path** | string | False | -  |  -  |  The Path for this API Management API, which is a relative URL which uniquely identifies this API and all of its resource paths within the API Management Service. | 
| **var.protocols** | string | False | -  |  `http`, `https`, `ws`, `wss`  |  A list of protocols the operations in this API can be invoked. Possible values are `http`, `https`, `ws`, and `wss`. | 
| **var.contact** | block | False | -  |  -  |  A `contact` block. | | `contact` block structure: || 
|   email (string): The email address of the contact person/organization. ||
|   name (string): The name of the contact person/organization. ||
|   url (string): Absolute URL of the contact information. ||

| **var.description** | string | False | -  |  -  |  A description of the API Management API, which may include HTML formatting tags. | 
| **var.import** | block | False | -  |  -  |  A `import` block. | | `import` block structure: || 
|   content_format (string): (REQUIRED) The format of the content from which the API Definition should be imported. Possible values are: 'openapi', 'openapi+json', 'openapi+json-link', 'openapi-link', 'swagger-json', 'swagger-link-json', 'wadl-link-json', 'wadl-xml', 'wsdl' and 'wsdl-link'. ||
|   content_value (string): (REQUIRED) The Content from which the API Definition should be imported. When a 'content_format' of '*-link-*' is specified this must be a URL, otherwise this must be defined inline. ||
|   wsdl_selector (block): A 'wsdl_selector' block, which allows you to limit the import of a WSDL to only a subset of the document. This can only be specified when 'content_format' is 'wsdl' or 'wsdl-link'. ||

| **var.license** | block | False | -  |  -  |  A `license` block. | | `license` block structure: || 
|   name (string): The name of the license . ||
|   url (string): Absolute URL of the license. ||

| **var.oauth2_authorization** | block | False | -  |  -  |  An `oauth2_authorization` block. | | `oauth2_authorization` block structure: || 
|   authorization_server_name (string): (REQUIRED) OAuth authorization server identifier. The name of an [OAuth2 Authorization Server](https://www.terraform.io/docs/providers/azurerm/r/api_management_authorization_server.html). ||
|   scope (string): Operations scope. ||

| **var.openid_authentication** | block | False | -  |  -  |  An `openid_authentication` block. | | `openid_authentication` block structure: || 
|   openid_provider_name (string): (REQUIRED) OpenID Connect provider identifier. The name of an [OpenID Connect Provider](https://www.terraform.io/docs/providers/azurerm/r/api_management_openid_connect_provider.html). ||
|   bearer_token_sending_methods (string): How to send token to the server. A list of zero or more methods. Valid values are 'authorizationHeader' and 'query'. ||

| **var.service_url** | string | False | -  |  -  |  Absolute URL of the backend service implementing this API. | 
| **var.soap_pass_through** | bool | False | `False`  |  -  |  Should this API expose a SOAP frontend, rather than a HTTP frontend? Defaults to `false`. | 
| **var.subscription_key_parameter_names** | block | False | -  |  -  |  A `subscription_key_parameter_names` block. | | `subscription_key_parameter_names` block structure: || 
|   header (string): (REQUIRED) The name of the HTTP Header which should be used for the Subscription Key. ||
|   query (string): (REQUIRED) The name of the QueryString parameter which should be used for the Subscription Key. ||

| **var.subscription_required** | bool | False | `True`  |  -  |  Should this API require a subscription key? Defaults to `true`. | 
| **var.terms_of_service_url** | string | False | -  |  -  |  Absolute URL of the Terms of Service for the API. | 
| **var.version** | int | False | -  |  -  |  The Version number of this API, if this API is versioned. | 
| **var.version_set_id** | string | False | -  |  -  |  The ID of the Version Set which this API is associated with. | 
| **var.revision_description** | string | False | -  |  -  |  The description of the API Revision of the API Management API. | 
| **var.version_description** | string | False | -  |  -  |  The description of the API Version of the API Management API. | 
| **var.source_api_id** | string | False | -  |  -  |  The API id of the source API, which could be in format `azurerm_api_management_api.example.id` or in format `azurerm_api_management_api.example.id;rev=1` | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management API. | 
| **is_current** | bool | No  | Is this the current API Revision? | 
| **is_online** | bool | No  | Is this API Revision online/accessible via the Gateway? | 
| **version** | int | No  | The Version number of this API, if this API is versioned. | 
| **version_set_id** | string | No  | The ID of the Version Set which this API is associated with. | 

Additionally, all variables are provided as outputs.
