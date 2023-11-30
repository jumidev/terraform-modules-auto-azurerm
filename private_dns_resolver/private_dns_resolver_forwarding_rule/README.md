# azurerm_private_dns_resolver_forwarding_rule

Manages a Private DNS Resolver Forwarding Rule.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "private_dns_resolver/private_dns_resolver_forwarding_rule" 
}

inputs = {
   name = "name of private_dns_resolver_forwarding_rule" 
   dns_forwarding_ruleset_id = "dns_forwarding_ruleset_id of private_dns_resolver_forwarding_rule" 
   domain_name = "domain_name of private_dns_resolver_forwarding_rule" 
   target_dns_servers = "target_dns_servers of private_dns_resolver_forwarding_rule" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name which should be used for this Private DNS Resolver Forwarding Rule. Changing this forces a new Private DNS Resolver Forwarding Rule to be created. | 
| **var.dns_forwarding_ruleset_id** | string | True | -  |  Specifies the ID of the Private DNS Resolver Forwarding Ruleset. Changing this forces a new Private DNS Resolver Forwarding Rule to be created. | 
| **var.domain_name** | string | True | -  |  Specifies the domain name for the Private DNS Resolver Forwarding Rule. Changing this forces a new Private DNS Resolver Forwarding Rule to be created. | 
| **var.target_dns_servers** | block | True | -  |  Can be specified multiple times to define multiple target DNS servers. Each `target_dns_servers` block. | 
| **var.enabled** | bool | False | `True`  |  Specifies the state of the Private DNS Resolver Forwarding Rule. Defaults to `true`. | 
| **var.metadata** | string | False | -  |  Metadata attached to the Private DNS Resolver Forwarding Rule. | 

### `target_dns_servers` block structure

> `ip_address` (string): (REQUIRED) DNS server IP address.\
> `port` (string): DNS server port.\



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Private DNS Resolver Forwarding Rule. | 

Additionally, all variables are provided as outputs.
