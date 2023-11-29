# azurerm_kusto_cosmosdb_data_connection

Manages a Kusto / Cosmos Database Data Connection.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.cosmosdb_container_id** | string | True | The name of an existing container in the Cosmos DB database. Changing this forces a new Kusto Cosmos DB Connection to be created. | 
| **var.kusto_database_id** | string | True | The name of the database in the Kusto cluster. Changing this forces a new Kusto Cosmos DB Connection to be created. | 
| **var.location** | string | True | The Azure Region where the Data Explorer should exist. Changing this forces a new Kusto Cosmos DB Connection to be created. | 
| **var.managed_identity_id** | string | True | The resource ID of a managed system or user-assigned identity. The identity is used to authenticate with Cosmos DB. Changing this forces a new Kusto Cosmos DB Connection to be created. | 
| **var.name** | string | True | The name of the data connection. Changing this forces a new Kusto Cosmos DB Connection to be created. | 
| **var.table_name** | string | True | The case-sensitive name of the existing target table in your cluster. Retrieved data is ingested into this table. Changing this forces a new Kusto Cosmos DB Connection to be created. | 
| **var.mapping_rule_name** | string | False | The name of an existing mapping rule to use when ingesting the retrieved data. Changing this forces a new Kusto Cosmos DB Connection to be created. | 
| **var.retrieval_start_date** | datetime | False | If defined, the data connection retrieves Cosmos DB documents created or updated after the specified retrieval start date. Changing this forces a new Kusto Cosmos DB Connection to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **cosmosdb_container_id** | string  | - | 
| **kusto_database_id** | string  | - | 
| **location** | string  | - | 
| **managed_identity_id** | string  | - | 
| **name** | string  | - | 
| **table_name** | string  | - | 
| **mapping_rule_name** | string  | - | 
| **retrieval_start_date** | datetime  | - | 
| **id** | string  | The ID of the Data Explorer. | 