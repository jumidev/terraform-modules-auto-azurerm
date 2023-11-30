# azurerm_route_filter

Manages a Route Filter.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.location** | string | True | The Azure Region where the Route Filter should exist. Changing this forces a new Route Filter to be created. | 
| **var.name** | string | True | The Name which should be used for this Route Filter. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Route Filter should exist. Changing this forces a new Route Filter to be created. | 
| **var.rule** | block | False | A `rule` block. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Route Filter. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **location** | string  | - | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **rule** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Route Filter. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/route_filter" 
}

inputs = {
   location = "${location}" 
   name = "name of route_filter" 
   resource_group_name = "${resource_group}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```