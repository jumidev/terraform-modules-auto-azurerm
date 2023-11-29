# azurerm_api_management_subscription

Manages a Subscription within a API Management Service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **api_management_name** | string | True | -  |  -  | The name of the API Management Service where this Subscription should be created. Changing this forces a new resource to be created. | 
| **display_name** | string | True | -  |  -  | The display name of this Subscription. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 
| **product_id** | string | False | -  |  -  | The ID of the Product which should be assigned to this Subscription. Changing this forces a new resource to be created. | 
| **user_id** | string | False | -  |  -  | The ID of the User which should be assigned to this Subscription. Changing this forces a new resource to be created. | 
| **api_id** | string | False | -  |  -  | The ID of the API which should be assigned to this Subscription. Changing this forces a new resource to be created. | 
| **primary_key** | string | False | -  |  -  | The primary subscription key to use for the subscription. | 
| **secondary_key** | string | False | -  |  -  | The secondary subscription key to use for the subscription. | 
| **state** | string | False | `submitted`  |  `active`, `cancelled`, `expired`, `rejected`, `submitted`, `suspended`  | The state of this Subscription. Possible values are `active`, `cancelled`, `expired`, `rejected`, `submitted` and `suspended`. Defaults to `submitted`. | 
| **subscription_id** | string | False | -  |  -  | An Identifier which should used as the ID of this Subscription. If not specified a new Subscription ID will be generated. Changing this forces a new resource to be created. | 
| **allow_tracing** | bool | False | `True`  |  -  | Determines whether tracing can be enabled. Defaults to `true`. | 

