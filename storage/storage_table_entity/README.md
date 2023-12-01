# azurerm_storage_table_entity

Manages an Entity within a Table in an Azure Storage Account.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "storage/storage_table_entity" 
}

inputs = {
   storage_account_name = "storage_account_name of storage_table_entity" 
   table_name = "table_name of storage_table_entity" 
   partition_key = "partition_key of storage_table_entity" 
   row_key = "row_key of storage_table_entity" 
   entity = "entity of storage_table_entity" 
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
| **storage_account_name** | string |  Specifies the storage account in which to create the storage table entity. Changing this forces a new resource to be created. | 
| **table_name** | string |  The name of the storage table in which to create the storage table entity. Changing this forces a new resource to be created. | 
| **partition_key** | string |  The key for the partition where the entity will be inserted/merged. Changing this forces a new resource. | 
| **row_key** | string |  The key for the row where the entity will be inserted/merged. Changing this forces a new resource. | 
| **entity** | string |  A map of key/value pairs that describe the entity to be inserted/merged in to the storage table. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Entity within the Table in the Storage Account. | 

Additionally, all variables are provided as outputs.
