# azurerm_api_management_api

Manages an API within an API Management Service.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the API Management API. Changing this forces a new resource to be created. | 
| **var.api_management_name** | string | True | -  |  -  | The Name of the API Management Service where this API should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The Name of the Resource Group where the API Management API exists. Changing this forces a new resource to be created. | 
| **var.revision** | string | True | -  |  -  | The Revision which used for this API. Changing this forces a new resource to be created. | 
| **var.api_type** | string | False | `http`  |  `graphql`, `http`, `soap`, `websocket`  | Type of API. Possible values are `graphql`, `http`, `soap`, and `websocket`. Defaults to `http`. | 
| **var.display_name** | string | False | -  |  -  | The display name of the API. | 
| **var.path** | string | False | -  |  -  | The Path for this API Management API, which is a relative URL which uniquely identifies this API and all of its resource paths within the API Management Service. | 
| **var.protocols** | string | False | -  |  `http`, `https`, `ws`, `wss`  | A list of protocols the operations in this API can be invoked. Possible values are `http`, `https`, `ws`, and `wss`. | 
| **var.contact** | block | False | -  |  -  | A `contact` block. | 
| **var.description** | string | False | -  |  -  | A description of the API Management API, which may include HTML formatting tags. | 
| **var.import** | block | False | -  |  -  | A `import` block. | 
| **var.license** | block | False | -  |  -  | A `license` block. | 
| **var.oauth2_authorization** | block | False | -  |  -  | An `oauth2_authorization` block. | 
| **var.openid_authentication** | block | False | -  |  -  | An `openid_authentication` block. | 
| **var.service_url** | string | False | -  |  -  | Absolute URL of the backend service implementing this API. | 
| **var.soap_pass_through** | bool | False | `False`  |  -  | Should this API expose a SOAP frontend, rather than a HTTP frontend? Defaults to `false`. | 
| **var.subscription_key_parameter_names** | block | False | -  |  -  | A `subscription_key_parameter_names` block. | 
| **var.subscription_required** | bool | False | `True`  |  -  | Should this API require a subscription key? Defaults to `true`. | 
| **var.terms_of_service_url** | string | False | -  |  -  | Absolute URL of the Terms of Service for the API. | 
| **var.version** | int | False | -  |  -  | The Version number of this API, if this API is versioned. | 
| **var.version_set_id** | string | False | -  |  -  | The ID of the Version Set which this API is associated with. | 
| **var.revision_description** | string | False | -  |  -  | The description of the API Revision of the API Management API. | 
| **var.version_description** | string | False | -  |  -  | The description of the API Version of the API Management API. | 
| **var.source_api_id** | string | False | -  |  -  | The API id of the source API, which could be in format `azurerm_api_management_api.example.id` or in format `azurerm_api_management_api.example.id;rev=1` | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **api_management_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **revision** | string  | - | 
| **api_type** | string  | - | 
| **display_name** | string  | - | 
| **path** | string  | - | 
| **protocols** | string  | - | 
| **contact** | block  | - | 
| **description** | string  | - | 
| **import** | block  | - | 
| **license** | block  | - | 
| **oauth2_authorization** | block  | - | 
| **openid_authentication** | block  | - | 
| **service_url** | string  | - | 
| **soap_pass_through** | bool  | - | 
| **subscription_key_parameter_names** | block  | - | 
| **subscription_required** | bool  | - | 
| **terms_of_service_url** | string  | - | 
| **version** | int  | - | 
| **version_set_id** | string  | - | 
| **revision_description** | string  | - | 
| **version_description** | string  | - | 
| **source_api_id** | string  | - | 
| **id** | string  | The ID of the API Management API. | 
| **is_current** | bool  | Is this the current API Revision? | 
| **is_online** | bool  | Is this API Revision online/accessible via the Gateway? | 
| **version** | int  | The Version number of this API, if this API is versioned. | 
| **version_set_id** | string  | The ID of the Version Set which this API is associated with. | 