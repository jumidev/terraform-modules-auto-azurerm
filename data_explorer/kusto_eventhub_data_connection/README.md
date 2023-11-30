# azurerm_kusto_eventhub_data_connection

Manages a Kusto (also known as Azure Data Explorer) EventHub Data Connection

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_explorer/kusto_eventhub_data_connection" 
}

inputs = {
   name = "name of kusto_eventhub_data_connection" 
   location = "${location}" 
   resource_group_name = "${resource_group}" 
   cluster_name = "cluster_name of kusto_eventhub_data_connection" 
   database_name = "database_name of kusto_eventhub_data_connection" 
   eventhub_id = "eventhub_id of kusto_eventhub_data_connection" 
   consumer_group = "consumer_group of kusto_eventhub_data_connection" 
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
| **var.name** | string  The name of the Kusto EventHub Data Connection to create. Changing this forces a new resource to be created. | 
| **var.location** | string  The location where the Kusto Database should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created. | 
| **var.cluster_name** | string  Specifies the name of the Kusto Cluster this data connection will be added to. Changing this forces a new resource to be created. | 
| **var.database_name** | string  Specifies the name of the Kusto Database this data connection will be added to. Changing this forces a new resource to be created. | 
| **var.eventhub_id** | string  Specifies the resource id of the EventHub this data connection will use for ingestion. Changing this forces a new resource to be created. | 
| **var.consumer_group** | string  Specifies the EventHub consumer group this data connection will use for ingestion. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.compression** | string  `None`  |  Specifies compression type for the connection. Allowed values: `GZip` and `None`. Defaults to `None`. Changing this forces a new resource to be created. | 
| **var.event_system_properties** | string  -  |  Specifies a list of system properties for the Event Hub. | 
| **var.table_name** | string  -  |  Specifies the target table name used for the message ingestion. Table must exist before resource is created. | 
| **var.identity_id** | string  -  |  The resource ID of a managed identity (system or user assigned) to be used to authenticate with event hub. | 
| **var.mapping_rule_name** | string  -  |  Specifies the mapping rule used for the message ingestion. Mapping rule must exist before resource is created. | 
| **var.data_format** | string  -  |  Specifies the data format of the EventHub messages. Allowed values: `APACHEAVRO`, `AVRO`, `CSV`, `JSON`, `MULTIJSON`, `ORC`, `PARQUET`, `PSV`, `RAW`, `SCSV`, `SINGLEJSON`, `SOHSV`, `TSVE`, `TSV`, `TXT`, and `W3CLOGFILE`. | 
| **var.database_routing_type** | string  `Single`  |  Indication for database routing information from the data connection, by default only database routing information is allowed. Allowed values: `Single`, `Multi`. Changing this forces a new resource to be created. Defaults to `Single`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Kusto EventHub Data Connection. | 

Additionally, all variables are provided as outputs.
