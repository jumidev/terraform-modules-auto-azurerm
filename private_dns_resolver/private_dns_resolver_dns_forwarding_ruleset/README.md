# azurerm_private_dns_resolver_dns_forwarding_ruleset

Manages a Private DNS Resolver Dns Forwarding Ruleset.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name which should be used for this Private DNS Resolver Dns Forwarding Ruleset. Changing this forces a new Private DNS Resolver Dns Forwarding Ruleset to be created. | 
| **var.resource_group_name** | string | True | Specifies the name of the Resource Group where the Private DNS Resolver Dns Forwarding Ruleset should exist. Changing this forces a new Private DNS Resolver Dns Forwarding Ruleset to be created. | 
| **var.private_dns_resolver_outbound_endpoint_ids** | string | True | The list of IDs of the Private DNS Resolver Outbound Endpoint that is linked to the Private DNS Resolver Dns Forwarding Ruleset. | 
| **var.location** | string | True | Specifies the Azure Region where the Private DNS Resolver Dns Forwarding Ruleset should exist. Changing this forces a new Private DNS Resolver Dns Forwarding Ruleset to be created. | 
| **var.tags** | map | False | A mapping of tags to assign to the Private DNS Resolver Dns Forwarding Ruleset. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **private_dns_resolver_outbound_endpoint_ids** | string  | - | 
| **location** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Private DNS Resolver Dns Forwarding Ruleset. | 