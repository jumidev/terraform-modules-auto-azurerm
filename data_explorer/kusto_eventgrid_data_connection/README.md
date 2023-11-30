# azurerm_kusto_eventgrid_data_connection

Manages a Kusto (also known as Azure Data Explorer) Event Grid Data Connection

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_explorer/kusto_eventgrid_data_connection" 
}

inputs = {
   name = "name of kusto_eventgrid_data_connection" 
   location = "${location}" 
   resource_group_name = "${resource_group}" 
   cluster_name = "cluster_name of kusto_eventgrid_data_connection" 
   database_name = "database_name of kusto_eventgrid_data_connection" 
   storage_account_id = "storage_account_id of kusto_eventgrid_data_connection" 
   eventhub_id = "eventhub_id of kusto_eventgrid_data_connection" 
   eventhub_consumer_group_name = "eventhub_consumer_group_name of kusto_eventgrid_data_connection" 
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
| **var.name** | string |  The name of the Kusto Event Grid Data Connection to create. Changing this forces a new resource to be created. | 
| **var.location** | string |  The location where the Kusto Database should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created. | 
| **var.cluster_name** | string |  Specifies the name of the Kusto Cluster this data connection will be added to. Changing this forces a new resource to be created. | 
| **var.database_name** | string |  Specifies the name of the Kusto Database this data connection will be added to. Changing this forces a new resource to be created. | 
| **var.storage_account_id** | string |  Specifies the resource id of the Storage Account this data connection will use for ingestion. Changing this forces a new resource to be created. | 
| **var.eventhub_id** | string |  Specifies the resource id of the Event Hub this data connection will use for ingestion. Changing this forces a new resource to be created. | 
| **var.eventhub_consumer_group_name** | string |  Specifies the Event Hub consumer group this data connection will use for ingestion. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.blob_storage_event_type** | string |  `Microsoft.Storage.BlobCreated`  |  Specifies the blob storage event type that needs to be processed. Possible Values are `Microsoft.Storage.BlobCreated` and `Microsoft.Storage.BlobRenamed`. Defaults to `Microsoft.Storage.BlobCreated`. | 
| **var.data_format** | string |  -  |  Specifies the data format of the EventHub messages. Allowed values: `APACHEAVRO`, `AVRO`, `CSV`, `JSON`, `MULTIJSON`, `ORC`, `PARQUET`, `PSV`, `RAW`, `SCSV`, `SINGLEJSON`, `SOHSV`, `TSV`, `TSVE`, `TXT` and `W3CLOGFILE`. | 
| **var.database_routing_type** | string |  `Single`  |  Indication for database routing information from the data connection, by default only database routing information is allowed. Allowed values: `Single`, `Multi`. Changing this forces a new resource to be created. Defaults to `Single`. | 
| **var.eventgrid_resource_id** | string |  -  |  The resource ID of the event grid that is subscribed to the storage account events. | 
| **var.managed_identity_resource_id** | string |  -  |  Empty for non-managed identity based data connection. For system assigned identity, provide cluster resource Id. For user assigned identity (UAI) provide the UAI resource Id. | 
| **var.mapping_rule_name** | string |  -  |  Specifies the mapping rule used for the message ingestion. Mapping rule must exist before resource is created. | 
| **var.table_name** | string |  -  |  Specifies the target table name used for the message ingestion. Table must exist before resource is created. | 
| **var.skip_first_record** | bool |  `False`  |  is the first record of every file ignored? Defaults to `false`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Kusto Event Grid Data Connection. | 

Additionally, all variables are provided as outputs.
