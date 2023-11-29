# azurerm_private_dns_zone_virtual_network_link

Enables you to manage Private DNS zone Virtual Network Links. These Links enable DNS resolution and registration inside Azure Virtual Networks using Azure Private DNS.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Private DNS Zone Virtual Network Link. Changing this forces a new resource to be created. | 
| **private_dns_zone_name** | string | True | -  |  -  | The name of the Private DNS zone (without a terminating dot). Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the resource group where the Private DNS Zone exists. Changing this forces a new resource to be created. | 
| **virtual_network_id** | string | True | -  |  -  | The ID of the Virtual Network that should be linked to the DNS Zone. Changing this forces a new resource to be created. | 
| **registration_enabled** | bool | False | `False`  |  -  | Is auto-registration of virtual machine records in the virtual network in the Private DNS zone enabled? Defaults to `false`. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

