# azurerm_cosmosdb_cassandra_keyspace

Manages a Cassandra KeySpace within a Cosmos DB Account.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cosmosdb_documentdb/cosmosdb_cassandra_keyspace" 
}

inputs = {
   name = "name of cosmosdb_cassandra_keyspace" 
   resource_group_name = "${resource_group}" 
   account_name = "account_name of cosmosdb_cassandra_keyspace" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Cosmos DB Cassandra KeySpace. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which the Cosmos DB Cassandra KeySpace is created. Changing this forces a new resource to be created. | 
| **var.account_name** | string | True | The name of the Cosmos DB Cassandra KeySpace to create the table within. Changing this forces a new resource to be created. | 
| **var.throughput** | string | False | The throughput of Cassandra KeySpace (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. | 
| **var.autoscale_settings** | block | False | An `autoscale_settings` block. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. | 

### `autoscale_settings` block structure

> `max_throughput` (string): The maximum throughput of the Cassandra KeySpace (RU/s). Must be between '1,000' and '1,000,000'. Must be set in increments of '1,000'. Conflicts with 'throughput'.\



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | the ID of the CosmosDB Cassandra KeySpace. | 

Additionally, all variables are provided as outputs.
