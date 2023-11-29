# azurerm_virtual_hub_security_partner_provider

Manages a Security Partner Provider which could be associated to virtual hub.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Security Partner Provider. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Security Partner Provider should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  The Azure Region where the Security Partner Provider should exist. Changing this forces a new resource to be created. | 
| **var.security_provider_name** | string | True | `ZScaler`, `IBoss`, `Checkpoint`  |  The security provider name. Possible values are `ZScaler`, `IBoss` and `Checkpoint` is allowed. Changing this forces a new resource to be created. | 
| **var.virtual_hub_id** | string | False | -  |  The ID of the Virtual Hub within which this Security Partner Provider should be created. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Security Partner Provider. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **security_provider_name** | string  | - | 
| **virtual_hub_id** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Security Partner Provider. | 