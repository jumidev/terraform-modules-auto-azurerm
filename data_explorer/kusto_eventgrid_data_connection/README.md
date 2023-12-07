# azurerm_kusto_eventgrid_data_connection

Manages a Kusto (also known as Azure Data Explorer) Event Grid Data Connection

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "data_explorer/kusto_eventgrid_data_connection"   
}

inputs = {
   name = "The name of the Kusto Event Grid Data Connection to create..."   
   location = "${location}"   
   resource_group_name = "${resource_group}"   
   cluster_name = "Specifies the name of the Kusto Cluster this data connection will be added to..."   
   database_name = "Specifies the name of the Kusto Database this data connection will be added to..."   
   # storage_account_id → set in tfstate_inputs
   # eventhub_id → set in tfstate_inputs
   # eventhub_consumer_group_name → set in tfstate_inputs
}

tfstate_inputs = {
   storage_account_id = "path/to/storage_account_component:id"   
   eventhub_id = "path/to/eventhub_component:id"   
   eventhub_consumer_group_name = "path/to/eventhub_consumer_group_component:name"   
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
| **name** | string |  The name of the Kusto Event Grid Data Connection to create. Changing this forces a new resource to be created. | 
| **location** | string |  The location where the Kusto Database should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created. | 
| **cluster_name** | string |  Specifies the name of the Kusto Cluster this data connection will be added to. Changing this forces a new resource to be created. | 
| **database_name** | string |  Specifies the name of the Kusto Database this data connection will be added to. Changing this forces a new resource to be created. | 
| **storage_account_id** | string |  Specifies the resource id of the Storage Account this data connection will use for ingestion. Changing this forces a new resource to be created. | 
| **eventhub_id** | string |  Specifies the resource id of the Event Hub this data connection will use for ingestion. Changing this forces a new resource to be created. | 
| **eventhub_consumer_group_name** | string |  Specifies the Event Hub consumer group this data connection will use for ingestion. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **blob_storage_event_type** | string |  `Microsoft.Storage.BlobCreated`  |  `Microsoft.Storage.BlobCreated`, `Microsoft.Storage.BlobRenamed`  |  Specifies the blob storage event type that needs to be processed. Possible Values are `Microsoft.Storage.BlobCreated` and `Microsoft.Storage.BlobRenamed`. Defaults to `Microsoft.Storage.BlobCreated`. | 
| **data_format** | string |  -  |  `APACHEAVRO`, `AVRO`, `CSV`, `JSON`, `MULTIJSON`, `ORC`, `PARQUET`, `PSV`, `RAW`, `SCSV`, `SINGLEJSON`, `SOHSV`, `TSV`, `TSVE`, `TXT`, `W3CLOGFILE`  |  Specifies the data format of the EventHub messages. Allowed values: `APACHEAVRO`, `AVRO`, `CSV`, `JSON`, `MULTIJSON`, `ORC`, `PARQUET`, `PSV`, `RAW`, `SCSV`, `SINGLEJSON`, `SOHSV`, `TSV`, `TSVE`, `TXT` and `W3CLOGFILE`. | 
| **database_routing_type** | string |  `Single`  |  -  |  Indication for database routing information from the data connection, by default only database routing information is allowed. Allowed values: `Single`, `Multi`. Changing this forces a new resource to be created. Defaults to `Single`. | 
| **eventgrid_resource_id** | string |  -  |  -  |  The resource ID of the event grid that is subscribed to the storage account events. | 
| **managed_identity_resource_id** | string |  -  |  -  |  Empty for non-managed identity based data connection. For system assigned identity, provide cluster resource Id. For user assigned identity (UAI) provide the UAI resource Id. | 
| **mapping_rule_name** | string |  -  |  -  |  Specifies the mapping rule used for the message ingestion. Mapping rule must exist before resource is created. | 
| **table_name** | string |  -  |  -  |  Specifies the target table name used for the message ingestion. Table must exist before resource is created. | 
| **skip_first_record** | bool |  `False`  |  -  |  is the first record of every file ignored? Defaults to `false`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Kusto Event Grid Data Connection. | 

Additionally, all variables are provided as outputs.
