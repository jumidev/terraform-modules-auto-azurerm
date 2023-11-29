# azurerm_private_dns_resolver_inbound_endpoint

Manages a Private DNS Resolver Inbound Endpoint.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name which should be used for this Private DNS Resolver Inbound Endpoint. Changing this forces a new Private DNS Resolver Inbound Endpoint to be created. | 
| **var.private_dns_resolver_id** | string | True | -  |  -  | Specifies the ID of the Private DNS Resolver Inbound Endpoint. Changing this forces a new Private DNS Resolver Inbound Endpoint to be created. | 
| **var.ip_configurations** | block | True | -  |  -  | Can be specified multiple times to define multiple IP configurations. Each `ip_configurations` block. | 
| **var.location** | string | True | -  |  -  | Specifies the Azure Region where the Private DNS Resolver Inbound Endpoint should exist. Changing this forces a new Private DNS Resolver Inbound Endpoint to be created. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Private DNS Resolver Inbound Endpoint. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **private_dns_resolver_id** | string  | - | 
| **ip_configurations** | block  | - | 
| **location** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Private DNS Resolver Inbound Endpoint. | 
| **private_ip_address** | string  | Private IP address of the IP configuration. | 