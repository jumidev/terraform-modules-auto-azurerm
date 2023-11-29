# azurerm_mobile_network_sim_group

Manages a Mobile Network Sim Group.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this Mobile Network Sim Groups. Changing this forces a new Mobile Network Sim Group to be created. | 
| **location** | string | True | -  |  -  | Specifies the Azure Region where the Mobile Network Sim Groups should exist. Changing this forces a new Mobile Network Sim Group to be created. | 
| **mobile_network_id** | string | True | -  |  -  | The ID of Mobile Network which the Mobile Network Sim Group belongs to. Changing this forces a new Mobile Network Slice to be created. | 
| **encryption_key_url** | string | False | -  |  -  | A key to encrypt the SIM data that belongs to this SIM group. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Mobile Network Sim Groups. | 

