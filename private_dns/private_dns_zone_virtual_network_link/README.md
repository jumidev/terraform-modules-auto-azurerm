# azurerm_private_dns_zone_virtual_network_link

Enables you to manage Private DNS zone Virtual Network Links. These Links enable DNS resolution and registration inside Azure Virtual Networks using Azure Private DNS.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the Private DNS Zone Virtual Network Link. Changing this forces a new resource to be created. | 
| **var.private_dns_zone_name** | string | True | -  |  -  | The name of the Private DNS zone (without a terminating dot). Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | Specifies the resource group where the Private DNS Zone exists. Changing this forces a new resource to be created. | 
| **var.virtual_network_id** | string | True | -  |  -  | The ID of the Virtual Network that should be linked to the DNS Zone. Changing this forces a new resource to be created. | 
| **var.registration_enabled** | bool | False | `False`  |  -  | Is auto-registration of virtual machine records in the virtual network in the Private DNS zone enabled? Defaults to `false`. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **private_dns_zone_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **virtual_network_id** | string  | - | 
| **registration_enabled** | bool  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Private DNS Zone Virtual Network Link. | 