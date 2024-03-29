# azurerm_private_dns_resolver_forwarding_rule

Manages a Private DNS Resolver Forwarding Rule.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "private_dns_resolver/private_dns_resolver_forwarding_rule"   
}

inputs = {
   name = "Specifies the name which should be used for this Private DNS Resolver Forwarding..."   
   # dns_forwarding_ruleset_id → set in component_inputs
   domain_name = "Specifies the domain name for the Private DNS Resolver Forwarding Rule..."   
   target_dns_servers = {
      ip_address = "..."      
   }
   
}

component_inputs = {
   dns_forwarding_ruleset_id = "path/to/private_dns_resolver_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  Specifies the name which should be used for this Private DNS Resolver Forwarding Rule. Changing this forces a new Private DNS Resolver Forwarding Rule to be created. | 
| **dns_forwarding_ruleset_id** | string |  -  |  Specifies the ID of the Private DNS Resolver Forwarding Ruleset. Changing this forces a new Private DNS Resolver Forwarding Rule to be created. | 
| **domain_name** | string |  -  |  Specifies the domain name for the Private DNS Resolver Forwarding Rule. Changing this forces a new Private DNS Resolver Forwarding Rule to be created. | 
| **target_dns_servers** | [block](#target_dns_servers-block-structure) |  `target_dns_servers`  |  Can be specified multiple times to define multiple target DNS servers. Each `target_dns_servers` block. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **enabled** | bool |  `True`  |  Specifies the state of the Private DNS Resolver Forwarding Rule. Defaults to `true`. | 
| **metadata** | string |  -  |  Metadata attached to the Private DNS Resolver Forwarding Rule. | 

### `target_dns_servers` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `ip_address` | string | Yes | - | DNS server IP address. |
| `port` | string | No | - | DNS server port. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **port** | string | No  | DNS server port. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Private DNS Resolver Forwarding Rule. | 

Additionally, all variables are provided as outputs.
