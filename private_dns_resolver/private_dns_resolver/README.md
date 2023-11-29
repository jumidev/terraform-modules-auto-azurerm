# azurerm_private_dns_resolver

Manages a Private DNS Resolver.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this Private DNS Resolver. Changing this forces a new Private DNS Resolver to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group where the Private DNS Resolver should exist. Changing this forces a new Private DNS Resolver to be created. | 
| **location** | string | True | -  |  -  | Specifies the Azure Region where the Private DNS Resolver should exist. Changing this forces a new Private DNS Resolver to be created. | 
| **virtual_network_id** | string | True | -  |  -  | The ID of the Virtual Network that is linked to the Private DNS Resolver. Changing this forces a new Private DNS Resolver to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Private DNS Resolver. | 

