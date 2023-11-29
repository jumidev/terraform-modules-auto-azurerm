# azurerm_kusto_eventgrid_data_connection

Manages a Kusto (also known as Azure Data Explorer) Event Grid Data Connection

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the Kusto Event Grid Data Connection to create. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | The location where the Kusto Database should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created. | 
| **var.cluster_name** | string | True | -  |  -  | Specifies the name of the Kusto Cluster this data connection will be added to. Changing this forces a new resource to be created. | 
| **var.database_name** | string | True | -  |  -  | Specifies the name of the Kusto Database this data connection will be added to. Changing this forces a new resource to be created. | 
| **var.storage_account_id** | string | True | -  |  -  | Specifies the resource id of the Storage Account this data connection will use for ingestion. Changing this forces a new resource to be created. | 
| **var.eventhub_id** | string | True | -  |  -  | Specifies the resource id of the Event Hub this data connection will use for ingestion. Changing this forces a new resource to be created. | 
| **var.eventhub_consumer_group_name** | string | True | -  |  -  | Specifies the Event Hub consumer group this data connection will use for ingestion. Changing this forces a new resource to be created. | 
| **var.blob_storage_event_type** | string | False | `Microsoft.Storage.BlobCreated`  |  -  | Specifies the blob storage event type that needs to be processed. Possible Values are `Microsoft.Storage.BlobCreated` and `Microsoft.Storage.BlobRenamed`. Defaults to `Microsoft.Storage.BlobCreated`. | 
| **var.data_format** | string | False | -  |  -  | Specifies the data format of the EventHub messages. Allowed values: `APACHEAVRO`, `AVRO`, `CSV`, `JSON`, `MULTIJSON`, `ORC`, `PARQUET`, `PSV`, `RAW`, `SCSV`, `SINGLEJSON`, `SOHSV`, `TSV`, `TSVE`, `TXT` and `W3CLOGFILE`. | 
| **var.database_routing_type** | string | False | `Single`  |  -  | Indication for database routing information from the data connection, by default only database routing information is allowed. Allowed values: `Single`, `Multi`. Changing this forces a new resource to be created. Defaults to `Single`. | 
| **var.eventgrid_resource_id** | string | False | -  |  -  | The resource ID of the event grid that is subscribed to the storage account events. | 
| **var.managed_identity_resource_id** | string | False | -  |  -  | Empty for non-managed identity based data connection. For system assigned identity, provide cluster resource Id. For user assigned identity (UAI) provide the UAI resource Id. | 
| **var.mapping_rule_name** | string | False | -  |  -  | Specifies the mapping rule used for the message ingestion. Mapping rule must exist before resource is created. | 
| **var.table_name** | string | False | -  |  -  | Specifies the target table name used for the message ingestion. Table must exist before resource is created. | 
| **var.skip_first_record** | bool | False | `False`  |  -  | is the first record of every file ignored? Defaults to `false`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **location** | string  | - | 
| **resource_group_name** | string  | - | 
| **cluster_name** | string  | - | 
| **database_name** | string  | - | 
| **storage_account_id** | string  | - | 
| **eventhub_id** | string  | - | 
| **eventhub_consumer_group_name** | string  | - | 
| **blob_storage_event_type** | string  | - | 
| **data_format** | string  | - | 
| **database_routing_type** | string  | - | 
| **eventgrid_resource_id** | string  | - | 
| **managed_identity_resource_id** | string  | - | 
| **mapping_rule_name** | string  | - | 
| **table_name** | string  | - | 
| **skip_first_record** | bool  | - | 
| **id** | string  | The ID of the Kusto Event Grid Data Connection. | 