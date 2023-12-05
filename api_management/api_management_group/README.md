# azurerm_api_management_group

Manages an API Management Group.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "api_management/api_management_group"   
}

inputs = {
   name = "The name of the API Management Group"   
   resource_group_name = "${resource_group}"   
   # api_management_name → set in tfstate_inputs
   display_name = "The display name of this API Management Group"   
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
| **name** | string |  The name of the API Management Group. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group in which the API Management Group should exist. Changing this forces a new resource to be created. | 
| **api_management_name** | string |  The name of the [API Management Service](api_management.html) in which the API Management Group should exist. Changing this forces a new resource to be created. | 
| **display_name** | string |  The display name of this API Management Group. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **description** | string |  -  |  -  |  The description of this API Management Group. | 
| **external_id** | string |  -  |  -  |  The identifier of the external Group. For example, an Azure Active Directory group `aad://<tenant id>/groups/<group object id>`. Changing this forces a new resource to be created. | 
| **type** | string |  `custom`  |  `custom`, `external`, `system`  |  The type of this API Management Group. Possible values are `custom`, `external` and `system`. Default is `custom`. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Group. | 

Additionally, all variables are provided as outputs.
