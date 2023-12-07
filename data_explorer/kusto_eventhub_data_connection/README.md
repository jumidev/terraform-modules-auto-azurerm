# azurerm_kusto_eventhub_data_connection

Manages a Kusto (also known as Azure Data Explorer) EventHub Data Connection

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "data_explorer/kusto_eventhub_data_connection"   
}

inputs = {
   name = "The name of the Kusto EventHub Data Connection to create..."   
   location = "${location}"   
   resource_group_name = "${resource_group}"   
   cluster_name = "Specifies the name of the Kusto Cluster this data connection will be added to..."   
   database_name = "Specifies the name of the Kusto Database this data connection will be added to..."   
   # eventhub_id → set in tfstate_inputs
   consumer_group = "Specifies the EventHub consumer group this data connection will use for ingestio..."   
}

tfstate_inputs = {
   eventhub_id = "path/to/eventhub_component:id"   
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
| **name** | string |  The name of the Kusto EventHub Data Connection to create. Changing this forces a new resource to be created. | 
| **location** | string |  The location where the Kusto Database should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created. | 
| **cluster_name** | string |  Specifies the name of the Kusto Cluster this data connection will be added to. Changing this forces a new resource to be created. | 
| **database_name** | string |  Specifies the name of the Kusto Database this data connection will be added to. Changing this forces a new resource to be created. | 
| **eventhub_id** | string |  Specifies the resource id of the EventHub this data connection will use for ingestion. Changing this forces a new resource to be created. | 
| **consumer_group** | string |  Specifies the EventHub consumer group this data connection will use for ingestion. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **compression** | string |  `None`  |  -  |  Specifies compression type for the connection. Allowed values: `GZip` and `None`. Defaults to `None`. Changing this forces a new resource to be created. | 
| **event_system_properties** | string |  -  |  -  |  Specifies a list of system properties for the Event Hub. | 
| **table_name** | string |  -  |  -  |  Specifies the target table name used for the message ingestion. Table must exist before resource is created. | 
| **identity_id** | string |  -  |  -  |  The resource ID of a managed identity (system or user assigned) to be used to authenticate with event hub. | 
| **mapping_rule_name** | string |  -  |  -  |  Specifies the mapping rule used for the message ingestion. Mapping rule must exist before resource is created. | 
| **data_format** | string |  -  |  `APACHEAVRO`, `AVRO`, `CSV`, `JSON`, `MULTIJSON`, `ORC`, `PARQUET`, `PSV`, `RAW`, `SCSV`, `SINGLEJSON`, `SOHSV`, `TSVE`, `TSV`, `TXT`, `W3CLOGFILE`  |  Specifies the data format of the EventHub messages. Allowed values: `APACHEAVRO`, `AVRO`, `CSV`, `JSON`, `MULTIJSON`, `ORC`, `PARQUET`, `PSV`, `RAW`, `SCSV`, `SINGLEJSON`, `SOHSV`, `TSVE`, `TSV`, `TXT`, and `W3CLOGFILE`. | 
| **database_routing_type** | string |  `Single`  |  -  |  Indication for database routing information from the data connection, by default only database routing information is allowed. Allowed values: `Single`, `Multi`. Changing this forces a new resource to be created. Defaults to `Single`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Kusto EventHub Data Connection. | 

Additionally, all variables are provided as outputs.
