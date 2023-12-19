# azurerm_private_dns_resolver

Manages a Private DNS Resolver.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "private_dns_resolver/private_dns_resolver"   
}

inputs = {
   name = "Specifies the name which should be used for this Private DNS Resolver..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   # virtual_network_id → set in component_inputs
}

component_inputs = {
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
| **name** | string |  Specifies the name which should be used for this Private DNS Resolver. Changing this forces a new Private DNS Resolver to be created. | 
| **resource_group_name** | string |  Specifies the name of the Resource Group where the Private DNS Resolver should exist. Changing this forces a new Private DNS Resolver to be created. | 
| **location** | string |  Specifies the Azure Region where the Private DNS Resolver should exist. Changing this forces a new Private DNS Resolver to be created. | 
| **virtual_network_id** | string |  The ID of the Virtual Network that is linked to the Private DNS Resolver. Changing this forces a new Private DNS Resolver to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags which should be assigned to the Private DNS Resolver. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the DNS Resolver. | 

Additionally, all variables are provided as outputs.
