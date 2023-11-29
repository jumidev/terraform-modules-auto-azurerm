# azurerm_fluid_relay_servers

Manages a Fluid Relay Server.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.location** | string | True | -  |  The Azure Region where the Fluid Relay Server should exist. Changing this forces a new Fluid Relay Server to be created. | 
| **var.name** | string | True | -  |  The name which should be used for this Fluid Relay Server. Changing this forces a new Fluid Relay Server to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Fluid Relay Server should exist. Changing this forces a new Fluid Relay Server to be created. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Fluid Relay Server. | 
| **var.identity** | block | False | -  |  An `identity` block. | 
| **var.storage_sku** | string | False | `standard`, `basic`  |  Sku of the storage associated with the resource, Possible values are `standard` and `basic`. Changing this forces a new Fluid Relay Server to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **location** | string  | - | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **tags** | map  | - | 
| **identity** | block  | - | 
| **storage_sku** | string  | - | 
| **id** | string  | The ID of the Fluid Relay Server. | 
| **frs_tenant_id** | string  | The Fluid tenantId for this server. | 
| **primary_key** | string  | The primary key for this server. | 
| **secondary_key** | string  | The secondary key for this server. | 
| **orderer_endpoints** | string  | An array of the Fluid Relay Orderer endpoints. This will be deprecated in future version of fluid relay server and will always be empty, [more details](https://learn.microsoft.com/en-us/azure/azure-fluid-relay/concepts/version-compatibility). | 
| **storage_endpoints** | string  | An array of storage endpoints for this Fluid Relay Server. This will be deprecated in future version of fluid relay server and will always be empty, [more details](https://learn.microsoft.com/en-us/azure/azure-fluid-relay/concepts/version-compatibility). | 
| **service_endpoints** | string  | An array of service endpoints for this Fluid Relay Server. | 
| **principal_id** | string  | The Principal ID for the Service Principal associated with the Identity of this Fluid Relay Server. | 
| **tenant_id** | string  | The Tenant ID for the Service Principal associated with the Identity of this Fluid Relay Server. | 