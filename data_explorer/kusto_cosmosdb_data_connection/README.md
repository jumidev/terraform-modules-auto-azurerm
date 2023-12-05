# azurerm_kusto_cosmosdb_data_connection

Manages a Kusto / Cosmos Database Data Connection.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "data_explorer/kusto_cosmosdb_data_connection"   
}

inputs = {
   cosmosdb_container_id = "cosmosdb_container_id of kusto_cosmosdb_data_connection"   
   # kusto_database_id → set in tfstate_inputs
   location = "${location}"   
   managed_identity_id = "managed_identity_id of kusto_cosmosdb_data_connection"   
   name = "name of kusto_cosmosdb_data_connection"   
   table_name = "table_name of kusto_cosmosdb_data_connection"   
}

tfstate_inputs = {
   kusto_database_id = "path/to/kusto_database_component:id"   
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
| **cosmosdb_container_id** | string |  The name of an existing container in the Cosmos DB database. Changing this forces a new Kusto Cosmos DB Connection to be created. | 
| **kusto_database_id** | string |  The name of the database in the Kusto cluster. Changing this forces a new Kusto Cosmos DB Connection to be created. | 
| **location** | string |  The Azure Region where the Data Explorer should exist. Changing this forces a new Kusto Cosmos DB Connection to be created. | 
| **managed_identity_id** | string |  The resource ID of a managed system or user-assigned identity. The identity is used to authenticate with Cosmos DB. Changing this forces a new Kusto Cosmos DB Connection to be created. | 
| **name** | string |  The name of the data connection. Changing this forces a new Kusto Cosmos DB Connection to be created. | 
| **table_name** | string |  The case-sensitive name of the existing target table in your cluster. Retrieved data is ingested into this table. Changing this forces a new Kusto Cosmos DB Connection to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **mapping_rule_name** | string |  The name of an existing mapping rule to use when ingesting the retrieved data. Changing this forces a new Kusto Cosmos DB Connection to be created. | 
| **retrieval_start_date** | datetime |  If defined, the data connection retrieves Cosmos DB documents created or updated after the specified retrieval start date. Changing this forces a new Kusto Cosmos DB Connection to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Explorer. | 

Additionally, all variables are provided as outputs.
