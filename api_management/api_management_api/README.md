# azurerm_api_management_api

Manages an API within an API Management Service.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "api_management/api_management_api"   
}

inputs = {
   name = "The name of the API Management API"   
   # api_management_name → set in tfstate_inputs
   resource_group_name = "${resource_group}"   
   revision = "The Revision which used for this API"   
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

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name of the API Management API. Changing this forces a new resource to be created. | 
| **api_management_name** | string |  The Name of the API Management Service where this API should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The Name of the Resource Group where the API Management API exists. Changing this forces a new resource to be created. | 
| **revision** | string |  The Revision which used for this API. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **api_type** | string |  `http`  |  `graphql`, `http`, `soap`, `websocket`  |  Type of API. Possible values are `graphql`, `http`, `soap`, and `websocket`. Defaults to `http`. | 
| **display_name** | string |  -  |  -  |  The display name of the API. | 
| **path** | string |  -  |  -  |  The Path for this API Management API, which is a relative URL which uniquely identifies this API and all of its resource paths within the API Management Service. | 
| **protocols** | string |  -  |  `http`, `https`, `ws`, `wss`  |  A list of protocols the operations in this API can be invoked. Possible values are `http`, `https`, `ws`, and `wss`. | 
| **contact** | [block](#contact-block-structure) |  -  |  -  |  A `contact` block. | 
| **description** | string |  -  |  -  |  A description of the API Management API, which may include HTML formatting tags. | 
| **import** | [block](#import-block-structure) |  -  |  -  |  A `import` block. | 
| **license** | [block](#license-block-structure) |  -  |  -  |  A `license` block. | 
| **oauth2_authorization** | [block](#oauth2_authorization-block-structure) |  -  |  -  |  An `oauth2_authorization` block. | 
| **openid_authentication** | [block](#openid_authentication-block-structure) |  -  |  -  |  An `openid_authentication` block. | 
| **service_url** | string |  -  |  -  |  Absolute URL of the backend service implementing this API. | 
| **soap_pass_through** | bool |  `False`  |  -  |  Should this API expose a SOAP frontend, rather than a HTTP frontend? Defaults to `false`. | 
| **subscription_key_parameter_names** | [block](#subscription_key_parameter_names-block-structure) |  -  |  -  |  A `subscription_key_parameter_names` block. | 
| **subscription_required** | bool |  `True`  |  -  |  Should this API require a subscription key? Defaults to `true`. | 
| **terms_of_service_url** | string |  -  |  -  |  Absolute URL of the Terms of Service for the API. | 
| **version** | number |  -  |  -  |  The Version number of this API, if this API is versioned. | 
| **version_set_id** | string |  -  |  -  |  The ID of the Version Set which this API is associated with. | 
| **revision_description** | string |  -  |  -  |  The description of the API Revision of the API Management API. | 
| **version_description** | string |  -  |  -  |  The description of the API Version of the API Management API. | 
| **source_api_id** | string |  -  |  -  |  The API id of the source API, which could be in format `azurerm_api_management_api.example.id` or in format `azurerm_api_management_api.example.id;rev=1` | 

### `import` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `content_format` | string | Yes | - | The format of the content from which the API Definition should be imported. Possible values are: 'openapi', 'openapi+json', 'openapi+json-link', 'openapi-link', 'swagger-json', 'swagger-link-json', 'wadl-link-json', 'wadl-xml', 'wsdl' and 'wsdl-link'. |
| `content_value` | string | Yes | - | The Content from which the API Definition should be imported. When a 'content_format' of '*-link-*' is specified this must be a URL, otherwise this must be defined inline. |
| `wsdl_selector` | [block](#wsdl_selector-block-structure) | No | - | A 'wsdl_selector' block, which allows you to limit the import of a WSDL to only a subset of the document. This can only be specified when 'content_format' is 'wsdl' or 'wsdl-link'. |

### `contact` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `email` | string | No | - | The email address of the contact person/organization. |
| `name` | string | No | - | The name of the contact person/organization. |
| `url` | string | No | - | Absolute URL of the contact information. |

### `license` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | No | - | The name of the license . |
| `url` | string | No | - | Absolute URL of the license. |

### `subscription_key_parameter_names` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `header` | string | Yes | - | The name of the HTTP Header which should be used for the Subscription Key. |
| `query` | string | Yes | - | The name of the QueryString parameter which should be used for the Subscription Key. |

### `openid_authentication` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `openid_provider_name` | string | Yes | - | OpenID Connect provider identifier. The name of an [OpenID Connect Provider](https://www.terraform.io/docs/providers/azurerm/r/api_management_openid_connect_provider.html). |
| `bearer_token_sending_methods` | string | No | - | How to send token to the server. A list of zero or more methods. Valid values are 'authorizationHeader' and 'query'. |

### `wsdl_selector` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `service_name` | string | Yes | - | The name of service to import from WSDL. |
| `endpoint_name` | string | Yes | - | The name of endpoint (port) to import from WSDL. |

### `oauth2_authorization` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `authorization_server_name` | string | Yes | - | OAuth authorization server identifier. The name of an [OAuth2 Authorization Server](https://www.terraform.io/docs/providers/azurerm/r/api_management_authorization_server.html). |
| `scope` | string | No | - | Operations scope. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management API. | 
| **is_current** | bool | No  | Is this the current API Revision? | 
| **is_online** | bool | No  | Is this API Revision online/accessible via the Gateway? | 
| **version** | number | No  | The Version number of this API, if this API is versioned. | 
| **version_set_id** | string | No  | The ID of the Version Set which this API is associated with. | 

Additionally, all variables are provided as outputs.
