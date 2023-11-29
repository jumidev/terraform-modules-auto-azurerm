# azurerm_private_dns_resolver_virtual_network_link

Manages a Private DNS Resolver Virtual Network Link.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name which should be used for this Private DNS Resolver Virtual Network Link. Changing this forces a new Private DNS Resolver Virtual Network Link to be created. | 
| **var.dns_forwarding_ruleset_id** | string | True | Specifies the ID of the Private DNS Resolver DNS Forwarding Ruleset. Changing this forces a new Private DNS Resolver Virtual Network Link to be created. | 
| **var.virtual_network_id** | string | True | The ID of the Virtual Network that is linked to the Private DNS Resolver Virtual Network Link. Changing this forces a new resource to be created. | 
| **var.metadata** | string | False | Metadata attached to the Private DNS Resolver Virtual Network Link. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **dns_forwarding_ruleset_id** | string  | - | 
| **virtual_network_id** | string  | - | 
| **metadata** | string  | - | 
| **id** | string  | The ID of the Private DNS Resolver Virtual Network Link. | 