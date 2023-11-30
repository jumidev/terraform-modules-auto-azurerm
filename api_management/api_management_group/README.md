# azurerm_api_management_group

Manages an API Management Group.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the API Management Group. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group in which the API Management Group should exist. Changing this forces a new resource to be created. | 
| **var.api_management_name** | string | True | -  |  -  |  The name of the [API Management Service](api_management.html) in which the API Management Group should exist. Changing this forces a new resource to be created. | 
| **var.display_name** | string | True | -  |  -  |  The display name of this API Management Group. | 
| **var.description** | string | False | -  |  -  |  The description of this API Management Group. | 
| **var.external_id** | string | False | -  |  -  |  The identifier of the external Group. For example, an Azure Active Directory group `aad://<tenant id>/groups/<group object id>`. Changing this forces a new resource to be created. | 
| **var.type** | string | False | `custom`  |  `custom`, `external`, `system`  |  The type of this API Management Group. Possible values are `custom`, `external` and `system`. Default is `custom`. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **api_management_name** | string  | - | 
| **display_name** | string  | - | 
| **description** | string  | - | 
| **external_id** | string  | - | 
| **type** | string  | - | 
| **id** | string  | The ID of the API Management Group. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_group" 
}

inputs = {
   name = "name of api_management_group" 
   resource_group_name = "${resource_group}" 
   api_management_name = "api_management_name of api_management_group" 
   display_name = "display_name of api_management_group" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```