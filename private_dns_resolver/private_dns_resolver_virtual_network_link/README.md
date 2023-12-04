# azurerm_private_dns_resolver_virtual_network_link

Manages a Private DNS Resolver Virtual Network Link.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "private_dns_resolver/private_dns_resolver_virtual_network_link" 
}

inputs = {
   name = "name of private_dns_resolver_virtual_network_link" 
   dns_forwarding_ruleset_id = "dns_forwarding_ruleset_id of private_dns_resolver_virtual_network_link" 
   # virtual_network_id → set in tfstate_inputs
}

tfstate_inputs = {
   virtual_network_id = "path/to/virtual_network_component:id" 
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
| **name** | string |  Specifies the name which should be used for this Private DNS Resolver Virtual Network Link. Changing this forces a new Private DNS Resolver Virtual Network Link to be created. | 
| **dns_forwarding_ruleset_id** | string |  Specifies the ID of the Private DNS Resolver DNS Forwarding Ruleset. Changing this forces a new Private DNS Resolver Virtual Network Link to be created. | 
| **virtual_network_id** | string |  The ID of the Virtual Network that is linked to the Private DNS Resolver Virtual Network Link. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **metadata** | string |  Metadata attached to the Private DNS Resolver Virtual Network Link. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Private DNS Resolver Virtual Network Link. | 

Additionally, all variables are provided as outputs.
