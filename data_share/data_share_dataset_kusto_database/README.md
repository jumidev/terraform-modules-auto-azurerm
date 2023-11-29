# azurerm_data_share_dataset_kusto_database

Manages a Data Share Kusto Database Dataset.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Data Share Kusto Database Dataset. Changing this forces a new Data Share Kusto Database Dataset to be created. | 
| **var.share_id** | string | True | -  |  -  | The resource ID of the Data Share where this Data Share Kusto Database Dataset should be created. Changing this forces a new Data Share Kusto Database Dataset to be created. | 
| **var.kusto_database_id** | string | True | -  |  -  | The resource ID of the Kusto Cluster Database to be shared with the receiver. Changing this forces a new Data Share Kusto Database Dataset to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **share_id** | string  | - | 
| **kusto_database_id** | string  | - | 
| **id** | string  | The resource ID of the Data Share Kusto Database Dataset. | 
| **display_name** | string  | The name of the Data Share Dataset. | 
| **kusto_cluster_location** | string  | The location of the Kusto Cluster. | 