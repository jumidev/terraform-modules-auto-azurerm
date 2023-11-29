# azurerm_api_management_api

Manages an API within an API Management Service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the API Management API. Changing this forces a new resource to be created. | 
| **api_management_name** | string | True | -  |  -  | The Name of the API Management Service where this API should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The Name of the Resource Group where the API Management API exists. Changing this forces a new resource to be created. | 
| **revision** | string | True | -  |  -  | The Revision which used for this API. Changing this forces a new resource to be created. | 
| **api_type** | string | False | `http`  |  `graphql`, `http`, `soap`, `websocket`  | Type of API. Possible values are `graphql`, `http`, `soap`, and `websocket`. Defaults to `http`. | 
| **display_name** | string | False | -  |  -  | The display name of the API. | 
| **path** | string | False | -  |  -  | The Path for this API Management API, which is a relative URL which uniquely identifies this API and all of its resource paths within the API Management Service. | 
| **protocols** | string | False | -  |  `http`, `https`, `ws`, `wss`  | A list of protocols the operations in this API can be invoked. Possible values are `http`, `https`, `ws`, and `wss`. | 
| **contact** | block | False | -  |  -  | A `contact` block. | 
| **description** | string | False | -  |  -  | A description of the API Management API, which may include HTML formatting tags. | 
| **import** | block | False | -  |  -  | A `import` block. | 
| **license** | block | False | -  |  -  | A `license` block. | 
| **oauth2_authorization** | block | False | -  |  -  | An `oauth2_authorization` block. | 
| **openid_authentication** | block | False | -  |  -  | An `openid_authentication` block. | 
| **service_url** | string | False | -  |  -  | Absolute URL of the backend service implementing this API. | 
| **soap_pass_through** | bool | False | `False`  |  -  | Should this API expose a SOAP frontend, rather than a HTTP frontend? Defaults to `false`. | 
| **subscription_key_parameter_names** | block | False | -  |  -  | A `subscription_key_parameter_names` block. | 
| **subscription_required** | bool | False | `True`  |  -  | Should this API require a subscription key? Defaults to `true`. | 
| **terms_of_service_url** | string | False | -  |  -  | Absolute URL of the Terms of Service for the API. | 
| **version** | int | False | -  |  -  | The Version number of this API, if this API is versioned. | 
| **version_set_id** | string | False | -  |  -  | The ID of the Version Set which this API is associated with. | 
| **revision_description** | string | False | -  |  -  | The description of the API Revision of the API Management API. | 
| **version_description** | string | False | -  |  -  | The description of the API Version of the API Management API. | 
| **source_api_id** | string | False | -  |  -  | The API id of the source API, which could be in format `azurerm_api_management_api.example.id` or in format `azurerm_api_management_api.example.id;rev=1` | 

