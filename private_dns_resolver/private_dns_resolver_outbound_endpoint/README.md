# azurerm_private_dns_resolver_outbound_endpoint

Manages a Private DNS Resolver Outbound Endpoint.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this Private DNS Resolver Outbound Endpoint. Changing this forces a new Private DNS Resolver Outbound Endpoint to be created. | 
| **private_dns_resolver_id** | string | True | -  |  -  | Specifies the ID of the Private DNS Resolver Outbound Endpoint. Changing this forces a new Private DNS Resolver Outbound Endpoint to be created. | 
| **location** | string | True | -  |  -  | Specifies the Azure Region where the Private DNS Resolver Outbound Endpoint should exist. Changing this forces a new Private DNS Resolver Outbound Endpoint to be created. | 
| **subnet_id** | string | True | -  |  -  | The ID of the Subnet that is linked to the Private DNS Resolver Outbound Endpoint. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Private DNS Resolver Outbound Endpoint. | 

