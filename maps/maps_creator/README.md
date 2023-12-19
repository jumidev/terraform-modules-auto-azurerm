# azurerm_maps_creator

Manages an Azure Maps Creator.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "maps/maps_creator"   
}

inputs = {
   name = "The name of the Azure Maps Creator"   
   # maps_account_id → set in component_inputs
   location = "${location}"   
   storage_units = "The storage units to be allocated"   
}

component_inputs = {
   maps_account_id = "path/to/maps_account_component:id"   
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
| **name** | string |  The name of the Azure Maps Creator. Changing this forces a new resource to be created. | 
| **maps_account_id** | string |  The ID of the Azure Maps Creator. Changing this forces a new resource to be created. | 
| **location** | string |  The Azure Region where the Azure Maps Creator should exist. Changing this forces a new resource to be created. | 
| **storage_units** | string |  The storage units to be allocated. Integer values from 1 to 100, inclusive. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags which should be assigned to the Azure Maps Creator. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Azure Maps Creator. | 

Additionally, all variables are provided as outputs.
