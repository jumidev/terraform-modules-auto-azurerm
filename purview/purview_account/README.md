# azurerm_purview_account

Manages a Purview Account.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.location** | string | True | -  |  -  | The Azure Region where the Purview Account should exist. Changing this forces a new Purview Account to be created. | 
| **var.identity** | block | True | -  |  -  | An `identity` block. | 
| **var.name** | string | True | -  |  -  | The name which should be used for this Purview Account. Changing this forces a new Purview Account to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Purview Account should exist. Changing this forces a new Purview Account to be created. | 
| **var.public_network_enabled** | bool | False | `True`  |  -  | Should the Purview Account be visible to the public network? Defaults to `true`. | 
| **var.managed_resource_group_name** | string | False | -  |  -  | The name which should be used for the new Resource Group where Purview Account creates the managed resources. Changing this forces a new Purview Account to be created. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Purview Account. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **location** | string  | - | 
| **identity** | block  | - | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **public_network_enabled** | bool  | - | 
| **managed_resource_group_name** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Purview Account. | 
| **atlas_kafka_endpoint_primary_connection_string** | string  | Atlas Kafka endpoint primary connection string. | 
| **atlas_kafka_endpoint_secondary_connection_string** | string  | Atlas Kafka endpoint secondary connection string. | 
| **catalog_endpoint** | string  | Catalog endpoint. | 
| **guardian_endpoint** | string  | Guardian endpoint. | 
| **scan_endpoint** | string  | Scan endpoint. | 
| **identity** | block  | A `identity` block. | 
| **managed_resources** | block  | A `managed_resources` block. | 
| **principal_id** | string  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string  | The Tenant ID associated with this Managed Service Identity. | 
| **event_hub_namespace_id** | string  | The ID of the managed event hub namespace. | 
| **resource_group_id** | string  | The ID of the managed resource group. | 
| **storage_account_id** | string  | The ID of the managed storage account. | 