# azurerm_api_management_subscription

Manages a Subscription within a API Management Service.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.api_management_name** | string | True | -  |  -  |  The name of the API Management Service where this Subscription should be created. Changing this forces a new resource to be created. | 
| **var.display_name** | string | True | -  |  -  |  The display name of this Subscription. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.product_id** | string | False | -  |  -  |  The ID of the Product which should be assigned to this Subscription. Changing this forces a new resource to be created. | 
| **var.user_id** | string | False | -  |  -  |  The ID of the User which should be assigned to this Subscription. Changing this forces a new resource to be created. | 
| **var.api_id** | string | False | -  |  -  |  The ID of the API which should be assigned to this Subscription. Changing this forces a new resource to be created. | 
| **var.primary_key** | string | False | -  |  -  |  The primary subscription key to use for the subscription. | 
| **var.secondary_key** | string | False | -  |  -  |  The secondary subscription key to use for the subscription. | 
| **var.state** | string | False | `submitted`  |  `active`, `cancelled`, `expired`, `rejected`, `submitted`, `suspended`  |  The state of this Subscription. Possible values are `active`, `cancelled`, `expired`, `rejected`, `submitted` and `suspended`. Defaults to `submitted`. | 
| **var.subscription_id** | string | False | -  |  -  |  An Identifier which should used as the ID of this Subscription. If not specified a new Subscription ID will be generated. Changing this forces a new resource to be created. | 
| **var.allow_tracing** | bool | False | `True`  |  -  |  Determines whether tracing can be enabled. Defaults to `true`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **api_management_name** | string  | - | 
| **display_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **product_id** | string  | - | 
| **user_id** | string  | - | 
| **api_id** | string  | - | 
| **primary_key** | string  | - | 
| **secondary_key** | string  | - | 
| **state** | string  | - | 
| **subscription_id** | string  | - | 
| **allow_tracing** | bool  | - | 
| **id** | string  | The ID of the API Management Subscription. | 