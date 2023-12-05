# azurerm_mobile_network_data_network

Manages a Mobile Network Data Network.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "mobile_network/mobile_network_data_network"   
}

inputs = {
   name = "name of mobile_network_data_network"   
   # mobile_network_id → set in tfstate_inputs
   location = "${location}"   
}

tfstate_inputs = {
   mobile_network_id = "path/to/mobile_network_component:id"   
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
| **name** | string |  Specifies the name which should be used for this Mobile Network Data Network. Changing this forces a new Mobile Network Data Network to be created. | 
| **mobile_network_id** | string |  Specifies the ID of the Mobile Network. Changing this forces a new Mobile Network Data Network to be created. | 
| **location** | string |  Specifies the Azure Region where the Mobile Network Data Network should exist. Changing this forces a new Mobile Network Data Network to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **description** | string |  A description of this Mobile Network Data Network. | 
| **tags** | map |  A mapping of tags which should be assigned to the Mobile Network Data Network. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Mobile Network Data Network. | 

Additionally, all variables are provided as outputs.
