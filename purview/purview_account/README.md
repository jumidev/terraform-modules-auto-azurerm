# azurerm_purview_account

Manages a Purview Account.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "purview/purview_account"   
}

inputs = {
   location = "${location}"   
   identity = {
      type = "..."      
   }
   
   name = "The name which should be used for this Purview Account..."   
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
| **location** | string |  The Azure Region where the Purview Account should exist. Changing this forces a new Purview Account to be created. | 
| **identity** | [block](#identity-block-structure) |  An `identity` block. | 
| **name** | string |  The name which should be used for this Purview Account. Changing this forces a new Purview Account to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Purview Account should exist. Changing this forces a new Purview Account to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **public_network_enabled** | bool |  `True`  |  Should the Purview Account be visible to the public network? Defaults to `true`. | 
| **managed_resource_group_name** | string |  -  |  The name which should be used for the new Resource Group where Purview Account creates the managed resources. Changing this forces a new Purview Account to be created. | 
| **tags** | map |  -  |  A mapping of tags which should be assigned to the Purview Account. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Purview Account. Possible values are 'UserAssigned' and 'SystemAssigned'. |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Purview Account. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Purview Account. | 
| **atlas_kafka_endpoint_primary_connection_string** | string | No  | Atlas Kafka endpoint primary connection string. | 
| **atlas_kafka_endpoint_secondary_connection_string** | string | No  | Atlas Kafka endpoint secondary connection string. | 
| **catalog_endpoint** | string | No  | Catalog endpoint. | 
| **guardian_endpoint** | string | No  | Guardian endpoint. | 
| **scan_endpoint** | string | No  | Scan endpoint. | 
| **identity** | block | No  | A `identity` block. | 
| **managed_resources** | block | No  | A `managed_resources` block. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 
| **event_hub_namespace_id** | string | No  | The ID of the managed event hub namespace. | 
| **resource_group_id** | string | No  | The ID of the managed resource group. | 
| **storage_account_id** | string | No  | The ID of the managed storage account. | 

Additionally, all variables are provided as outputs.
