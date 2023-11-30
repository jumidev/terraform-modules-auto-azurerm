# azurerm_api_management_named_value

Manages an API Management Named Value.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the API Management Named Value. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group in which the API Management Named Value should exist. Changing this forces a new resource to be created. | 
| **var.api_management_name** | string | True | -  |  The name of the [API Management Service](api_management.html) in which the API Management Named Value should exist. Changing this forces a new resource to be created. | 
| **var.display_name** | string | True | -  |  The display name of this API Management Named Value. | 
| **var.value** | string | False | -  |  The value of this API Management Named Value. | 
| **var.value_from_key_vault** | block | False | -  |  A `value_from_key_vault` block. | 
| **var.secret** | string | False | `true`, `false`  |  Specifies whether the API Management Named Value is secret. Valid values are `true` or `false`. The default value is `false`. | 
| **var.tags** | map | False | -  |  A list of tags to be applied to the API Management Named Value. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **api_management_name** | string  | - | 
| **display_name** | string  | - | 
| **value** | string  | - | 
| **value_from_key_vault** | block  | - | 
| **secret** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the API Management Named Value. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_named_value" 
}

inputs = {
   name = "name of api_management_named_value" 
   resource_group_name = "${resource_group}" 
   api_management_name = "api_management_name of api_management_named_value" 
   display_name = "display_name of api_management_named_value" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```