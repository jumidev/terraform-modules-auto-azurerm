# azurerm_virtual_hub_security_partner_provider

Manages a Security Partner Provider which could be associated to virtual hub.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Security Partner Provider. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Security Partner Provider should exist. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Security Partner Provider should exist. Changing this forces a new resource to be created. | 
| **security_provider_name** | string | True | -  |  `ZScaler`, `IBoss`, `Checkpoint`  | The security provider name. Possible values are `ZScaler`, `IBoss` and `Checkpoint` is allowed. Changing this forces a new resource to be created. | 
| **virtual_hub_id** | string | False | -  |  -  | The ID of the Virtual Hub within which this Security Partner Provider should be created. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Security Partner Provider. | 

