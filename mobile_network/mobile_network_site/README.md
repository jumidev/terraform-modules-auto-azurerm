# azurerm_mobile_network_site

Manages a Mobile Network Site.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "mobile_network/mobile_network_site" 
}

inputs = {
   name = "name of mobile_network_site" 
   mobile_network_id = "mobile_network_id of mobile_network_site" 
   location = "${location}" 
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
| **name** | string |  The name which should be used for this Mobile Network Site. Changing this forces a new Mobile Network Site to be created. | 
| **mobile_network_id** | string |  the ID of the Mobile Network which the Mobile Network Site belongs to. Changing this forces a new Mobile Network Site to be created. | 
| **location** | string |  The Azure Region where the Mobile Network Site should exist. Changing this forces a new Mobile Network Site to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags which should be assigned to the Mobile Network Site. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Mobile Network Site. | 
| **network_function_ids** | string | No  | An array of Id of Network Functions deployed on the site. | 

Additionally, all variables are provided as outputs.
