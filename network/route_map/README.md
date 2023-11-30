# azurerm_route_map

Manages a Route Map.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Route Map. Changing this forces a new resource to be created. | 
| **var.virtual_hub_id** | string | True | The resource ID of the Virtual Hub. Changing this forces a new resource to be created. | 
| **var.rule** | block | False | A `rule` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **virtual_hub_id** | string  | - | 
| **rule** | block  | - | 
| **id** | string  | The ID of the Route Map. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/route_map" 
}

inputs = {
   name = "name of route_map" 
   virtual_hub_id = "virtual_hub_id of route_map" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```