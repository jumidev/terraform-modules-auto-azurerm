# azurerm_maps_creator

Manages an Azure Maps Creator.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "maps/maps_creator" 
}

inputs = {
   name = "name of maps_creator" 
   maps_account_id = "maps_account_id of maps_creator" 
   location = "${location}" 
   storage_units = "storage_units of maps_creator" 
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
| **var.name** | string  The name of the Azure Maps Creator. Changing this forces a new resource to be created. | 
| **var.maps_account_id** | string  The ID of the Azure Maps Creator. Changing this forces a new resource to be created. | 
| **var.location** | string  The Azure Region where the Azure Maps Creator should exist. Changing this forces a new resource to be created. | 
| **var.storage_units** | string  The storage units to be allocated. Integer values from 1 to 100, inclusive. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.tags** | map  A mapping of tags which should be assigned to the Azure Maps Creator. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Azure Maps Creator. | 

Additionally, all variables are provided as outputs.
