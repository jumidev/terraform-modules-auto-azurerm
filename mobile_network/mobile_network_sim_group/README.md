# azurerm_mobile_network_sim_group

Manages a Mobile Network Sim Group.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name which should be used for this Mobile Network Sim Groups. Changing this forces a new Mobile Network Sim Group to be created. | 
| **var.location** | string | True | Specifies the Azure Region where the Mobile Network Sim Groups should exist. Changing this forces a new Mobile Network Sim Group to be created. | 
| **var.mobile_network_id** | string | True | The ID of Mobile Network which the Mobile Network Sim Group belongs to. Changing this forces a new Mobile Network Slice to be created. | 
| **var.encryption_key_url** | string | False | A key to encrypt the SIM data that belongs to this SIM group. | 
| **var.identity** | block | False | An `identity` block. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Mobile Network Sim Groups. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **location** | string  | - | 
| **mobile_network_id** | string  | - | 
| **encryption_key_url** | string  | - | 
| **identity** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Mobile Network Sim Groups. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "mobile_network/mobile_network_sim_group" 
}

inputs = {
   name = "name of mobile_network_sim_group" 
   location = "${location}" 
   mobile_network_id = "mobile_network_id of mobile_network_sim_group" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```