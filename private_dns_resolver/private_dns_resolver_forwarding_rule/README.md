# azurerm_private_dns_resolver_forwarding_rule

Manages a Private DNS Resolver Forwarding Rule.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name which should be used for this Private DNS Resolver Forwarding Rule. Changing this forces a new Private DNS Resolver Forwarding Rule to be created. | 
| **var.dns_forwarding_ruleset_id** | string | True | -  |  -  | Specifies the ID of the Private DNS Resolver Forwarding Ruleset. Changing this forces a new Private DNS Resolver Forwarding Rule to be created. | 
| **var.domain_name** | string | True | -  |  -  | Specifies the domain name for the Private DNS Resolver Forwarding Rule. Changing this forces a new Private DNS Resolver Forwarding Rule to be created. | 
| **var.target_dns_servers** | block | True | -  |  -  | Can be specified multiple times to define multiple target DNS servers. Each `target_dns_servers` block. | 
| **var.enabled** | bool | False | `True`  |  -  | Specifies the state of the Private DNS Resolver Forwarding Rule. Defaults to `true`. | 
| **var.metadata** | string | False | -  |  -  | Metadata attached to the Private DNS Resolver Forwarding Rule. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **dns_forwarding_ruleset_id** | string  | - | 
| **domain_name** | string  | - | 
| **target_dns_servers** | block  | - | 
| **enabled** | bool  | - | 
| **metadata** | string  | - | 
| **id** | string  | The ID of the Private DNS Resolver Forwarding Rule. | 