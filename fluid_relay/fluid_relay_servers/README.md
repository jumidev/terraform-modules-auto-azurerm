# azurerm_fluid_relay_servers

Manages a Fluid Relay Server.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "fluid_relay/fluid_relay_servers" 
}

inputs = {
   location = "${location}" 
   name = "name of fluid_relay_servers" 
   resource_group_name = "${resource_group}" 
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
| **var.location** | string  The Azure Region where the Fluid Relay Server should exist. Changing this forces a new Fluid Relay Server to be created. | 
| **var.name** | string  The name which should be used for this Fluid Relay Server. Changing this forces a new Fluid Relay Server to be created. | 
| **var.resource_group_name** | string  The name of the Resource Group where the Fluid Relay Server should exist. Changing this forces a new Fluid Relay Server to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.tags** | map  -  |  A mapping of tags which should be assigned to the Fluid Relay Server. | 
| **var.identity** | block  -  |  An `identity` block. | 
| **var.storage_sku** | string  `standard`, `basic`  |  Sku of the storage associated with the resource, Possible values are `standard` and `basic`. Changing this forces a new Fluid Relay Server to be created. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Fluid Relay Service. Possible values are 'SystemAssigned','UserAssigned' and 'SystemAssigned, UserAssigned'. |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Fluid Relay Service. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Fluid Relay Server. | 
| **frs_tenant_id** | string | No  | The Fluid tenantId for this server. | 
| **primary_key** | string | No  | The primary key for this server. | 
| **secondary_key** | string | No  | The secondary key for this server. | 
| **orderer_endpoints** | string | No  | An array of the Fluid Relay Orderer endpoints. This will be deprecated in future version of fluid relay server and will always be empty, [more details](https://learn.microsoft.com/en-us/azure/azure-fluid-relay/concepts/version-compatibility). | 
| **storage_endpoints** | string | No  | An array of storage endpoints for this Fluid Relay Server. This will be deprecated in future version of fluid relay server and will always be empty, [more details](https://learn.microsoft.com/en-us/azure/azure-fluid-relay/concepts/version-compatibility). | 
| **service_endpoints** | string | No  | An array of service endpoints for this Fluid Relay Server. | 
| **principal_id** | string | No  | The Principal ID for the Service Principal associated with the Identity of this Fluid Relay Server. | 
| **tenant_id** | string | No  | The Tenant ID for the Service Principal associated with the Identity of this Fluid Relay Server. | 

Additionally, all variables are provided as outputs.
