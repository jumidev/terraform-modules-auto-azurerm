# azurerm_api_management_subscription

Manages a Subscription within a API Management Service.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "api_management/api_management_subscription"   
}

inputs = {
   # api_management_name → set in tfstate_inputs
   display_name = "display_name of api_management_subscription"   
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

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **api_management_name** | string |  The name of the API Management Service where this Subscription should be created. Changing this forces a new resource to be created. | 
| **display_name** | string |  The display name of this Subscription. | 
| **resource_group_name** | string |  The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **product_id** | string |  -  |  -  |  The ID of the Product which should be assigned to this Subscription. Changing this forces a new resource to be created. | 
| **user_id** | string |  -  |  -  |  The ID of the User which should be assigned to this Subscription. Changing this forces a new resource to be created. | 
| **api_id** | string |  -  |  -  |  The ID of the API which should be assigned to this Subscription. Changing this forces a new resource to be created. | 
| **primary_key** | string |  -  |  -  |  The primary subscription key to use for the subscription. | 
| **secondary_key** | string |  -  |  -  |  The secondary subscription key to use for the subscription. | 
| **state** | string |  `submitted`  |  `active`, `cancelled`, `expired`, `rejected`, `submitted`, `suspended`  |  The state of this Subscription. Possible values are `active`, `cancelled`, `expired`, `rejected`, `submitted` and `suspended`. Defaults to `submitted`. | 
| **subscription_id** | string |  -  |  -  |  An Identifier which should used as the ID of this Subscription. If not specified a new Subscription ID will be generated. Changing this forces a new resource to be created. | 
| **allow_tracing** | bool |  `True`  |  -  |  Determines whether tracing can be enabled. Defaults to `true`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Subscription. | 

Additionally, all variables are provided as outputs.
