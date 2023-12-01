# azurerm_private_dns_resolver_outbound_endpoint

Manages a Private DNS Resolver Outbound Endpoint.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "private_dns_resolver/private_dns_resolver_outbound_endpoint" 
}

inputs = {
   name = "name of private_dns_resolver_outbound_endpoint" 
   private_dns_resolver_id = "private_dns_resolver_id of private_dns_resolver_outbound_endpoint" 
   location = "${location}" 
   subnet_id = "subnet_id of private_dns_resolver_outbound_endpoint" 
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
| **name** | string |  Specifies the name which should be used for this Private DNS Resolver Outbound Endpoint. Changing this forces a new Private DNS Resolver Outbound Endpoint to be created. | 
| **private_dns_resolver_id** | string |  Specifies the ID of the Private DNS Resolver Outbound Endpoint. Changing this forces a new Private DNS Resolver Outbound Endpoint to be created. | 
| **location** | string |  Specifies the Azure Region where the Private DNS Resolver Outbound Endpoint should exist. Changing this forces a new Private DNS Resolver Outbound Endpoint to be created. | 
| **subnet_id** | string |  The ID of the Subnet that is linked to the Private DNS Resolver Outbound Endpoint. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags which should be assigned to the Private DNS Resolver Outbound Endpoint. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Private DNS Resolver Outbound Endpoint. | 

Additionally, all variables are provided as outputs.
