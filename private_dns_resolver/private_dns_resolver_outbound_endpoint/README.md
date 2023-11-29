# azurerm_private_dns_resolver_outbound_endpoint

Manages a Private DNS Resolver Outbound Endpoint.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name which should be used for this Private DNS Resolver Outbound Endpoint. Changing this forces a new Private DNS Resolver Outbound Endpoint to be created. | 
| **var.private_dns_resolver_id** | string | True | Specifies the ID of the Private DNS Resolver Outbound Endpoint. Changing this forces a new Private DNS Resolver Outbound Endpoint to be created. | 
| **var.location** | string | True | Specifies the Azure Region where the Private DNS Resolver Outbound Endpoint should exist. Changing this forces a new Private DNS Resolver Outbound Endpoint to be created. | 
| **var.subnet_id** | string | True | The ID of the Subnet that is linked to the Private DNS Resolver Outbound Endpoint. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Private DNS Resolver Outbound Endpoint. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **private_dns_resolver_id** | string  | - | 
| **location** | string  | - | 
| **subnet_id** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Private DNS Resolver Outbound Endpoint. | 