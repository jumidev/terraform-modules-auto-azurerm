# azurerm_purview_account

Manages a Purview Account.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "purview/purview_account" 
}

inputs = {
   location = "${location}" 
   identity = "identity of purview_account" 
   name = "name of purview_account" 
   resource_group_name = "${resource_group}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.location** | string | True | -  |  The Azure Region where the Purview Account should exist. Changing this forces a new Purview Account to be created. | 
| **var.identity** | block | True | -  |  An `identity` block. | 
| **var.name** | string | True | -  |  The name which should be used for this Purview Account. Changing this forces a new Purview Account to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Purview Account should exist. Changing this forces a new Purview Account to be created. | 
| **var.public_network_enabled** | bool | False | `True`  |  Should the Purview Account be visible to the public network? Defaults to `true`. | 
| **var.managed_resource_group_name** | string | False | -  |  The name which should be used for the new Resource Group where Purview Account creates the managed resources. Changing this forces a new Purview Account to be created. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Purview Account. | 

### `identity` block structure

>`type` (string): (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Purview Account. Possible values are 'UserAssigned' and 'SystemAssigned'.
>`identity_ids` (string): Specifies a list of User Assigned Managed Identity IDs to be assigned to this Purview Account.



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
