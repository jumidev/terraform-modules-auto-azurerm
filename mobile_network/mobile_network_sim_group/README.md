# azurerm_mobile_network_sim_group

Manages a Mobile Network Sim Group.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "mobile_network/mobile_network_sim_group"   
}

inputs = {
   name = "Specifies the name which should be used for this Mobile Network Sim Groups..."   
   location = "${location}"   
   # mobile_network_id → set in tfstate_inputs
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
| **name** | string |  Specifies the name which should be used for this Mobile Network Sim Groups. Changing this forces a new Mobile Network Sim Group to be created. | 
| **location** | string |  Specifies the Azure Region where the Mobile Network Sim Groups should exist. Changing this forces a new Mobile Network Sim Group to be created. | 
| **mobile_network_id** | string |  The ID of Mobile Network which the Mobile Network Sim Group belongs to. Changing this forces a new Mobile Network Slice to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **encryption_key_url** | string |  A key to encrypt the SIM data that belongs to this SIM group. | 
| **identity** | [block](#identity-block-structure) |  An `identity` block. | 
| **tags** | map |  A mapping of tags which should be assigned to the Mobile Network Sim Groups. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity. Possible value is 'UserAssigned'. |
| `identity_ids` | list | Yes | - | A list of IDs for User Assigned Managed Identity resources to be assigned. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Mobile Network Sim Groups. | 

Additionally, all variables are provided as outputs.
