# azurerm_digital_twins_time_series_database_connection

Manages a Digital Twins Time Series Database Connection.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "digital_twins/digital_twins_time_series_database_connection" 
}

inputs = {
   name = "name of digital_twins_time_series_database_connection" 
   digital_twins_id = "digital_twins_id of digital_twins_time_series_database_connection" 
   eventhub_name = "eventhub_name of digital_twins_time_series_database_connection" 
   eventhub_namespace_endpoint_uri = "eventhub_namespace_endpoint_uri of digital_twins_time_series_database_connection" 
   eventhub_namespace_id = "eventhub_namespace_id of digital_twins_time_series_database_connection" 
   kusto_cluster_id = "kusto_cluster_id of digital_twins_time_series_database_connection" 
   kusto_cluster_uri = "kusto_cluster_uri of digital_twins_time_series_database_connection" 
   kusto_database_name = "kusto_database_name of digital_twins_time_series_database_connection" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Digital Twins Time Series Database Connection. Changing this forces a new resource to be created. | 
| **var.digital_twins_id** | string | True | -  |  The ID of the Digital Twins. Changing this forces a new resource to be created. | 
| **var.eventhub_name** | string | True | -  |  Name of the Event Hub. Changing this forces a new resource to be created. | 
| **var.eventhub_namespace_endpoint_uri** | string | True | -  |  URI of the Event Hub Namespace. Changing this forces a new resource to be created. | 
| **var.eventhub_namespace_id** | string | True | -  |  The ID of the Event Hub Namespace. Changing this forces a new resource to be created. | 
| **var.kusto_cluster_id** | string | True | -  |  The ID of the Kusto Cluster. Changing this forces a new resource to be created. | 
| **var.kusto_cluster_uri** | string | True | -  |  URI of the Kusto Cluster. Changing this forces a new resource to be created. | 
| **var.kusto_database_name** | string | True | -  |  Name of the Kusto Database. Changing this forces a new resource to be created. | 
| **var.eventhub_consumer_group_name** | string | False | `$Default`  |  Name of the Event Hub Consumer Group. Changing this forces a new resource to be created. Defaults to `$Default`. | 
| **var.kusto_table_name** | string | False | -  |  Name of the Kusto Table. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Digital Twins Time Series Database Connection. | 

Additionally, all variables are provided as outputs.
