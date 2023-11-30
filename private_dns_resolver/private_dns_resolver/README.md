# azurerm_private_dns_resolver

Manages a Private DNS Resolver.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "private_dns_resolver/private_dns_resolver" 
}

inputs = {
   name = "name of private_dns_resolver" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   virtual_network_id = "virtual_network_id of private_dns_resolver" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name which should be used for this Private DNS Resolver. Changing this forces a new Private DNS Resolver to be created. | 
| **var.resource_group_name** | string | True | Specifies the name of the Resource Group where the Private DNS Resolver should exist. Changing this forces a new Private DNS Resolver to be created. | 
| **var.location** | string | True | Specifies the Azure Region where the Private DNS Resolver should exist. Changing this forces a new Private DNS Resolver to be created. | 
| **var.virtual_network_id** | string | True | The ID of the Virtual Network that is linked to the Private DNS Resolver. Changing this forces a new Private DNS Resolver to be created. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Private DNS Resolver. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the DNS Resolver. | 

Additionally, all variables are provided as outputs.
