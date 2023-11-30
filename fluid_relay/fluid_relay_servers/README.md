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

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.location** | string | True | -  |  The Azure Region where the Fluid Relay Server should exist. Changing this forces a new Fluid Relay Server to be created. | 
| **var.name** | string | True | -  |  The name which should be used for this Fluid Relay Server. Changing this forces a new Fluid Relay Server to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Fluid Relay Server should exist. Changing this forces a new Fluid Relay Server to be created. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Fluid Relay Server. | 
| **var.identity** | block | False | -  |  An `identity` block. | 
| **var.storage_sku** | string | False | `standard`, `basic`  |  Sku of the storage associated with the resource, Possible values are `standard` and `basic`. Changing this forces a new Fluid Relay Server to be created. | 

### `identity` block structure

> `type` (string): (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Fluid Relay Service. Possible values are 'SystemAssigned','UserAssigned' and 'SystemAssigned, UserAssigned'.\
> `identity_ids` (string): Specifies a list of User Assigned Managed Identity IDs to be assigned to this Fluid Relay Service.\



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
