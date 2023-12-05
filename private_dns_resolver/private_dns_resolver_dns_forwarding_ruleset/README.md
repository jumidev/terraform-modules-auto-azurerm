# azurerm_private_dns_resolver_dns_forwarding_ruleset

Manages a Private DNS Resolver Dns Forwarding Ruleset.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "private_dns_resolver/private_dns_resolver_dns_forwarding_ruleset"   
}

inputs = {
   name = "name of private_dns_resolver_dns_forwarding_ruleset"   
   resource_group_name = "${resource_group}"   
   # private_dns_resolver_outbound_endpoint_ids → set in tfstate_inputs
   location = "${location}"   
}

tfstate_inputs = {
   private_dns_resolver_outbound_endpoint_ids = "path/to/private_dns_resolver_outbound_endpoint_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  Specifies the name which should be used for this Private DNS Resolver Dns Forwarding Ruleset. Changing this forces a new Private DNS Resolver Dns Forwarding Ruleset to be created. | 
| **resource_group_name** | string |  Specifies the name of the Resource Group where the Private DNS Resolver Dns Forwarding Ruleset should exist. Changing this forces a new Private DNS Resolver Dns Forwarding Ruleset to be created. | 
| **private_dns_resolver_outbound_endpoint_ids** | string |  The list of IDs of the Private DNS Resolver Outbound Endpoint that is linked to the Private DNS Resolver Dns Forwarding Ruleset. | 
| **location** | string |  Specifies the Azure Region where the Private DNS Resolver Dns Forwarding Ruleset should exist. Changing this forces a new Private DNS Resolver Dns Forwarding Ruleset to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags to assign to the Private DNS Resolver Dns Forwarding Ruleset. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Private DNS Resolver Dns Forwarding Ruleset. | 

Additionally, all variables are provided as outputs.
