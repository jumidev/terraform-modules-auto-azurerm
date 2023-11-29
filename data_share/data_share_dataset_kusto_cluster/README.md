# azurerm_data_share_dataset_kusto_cluster

Manages a Data Share Kusto Cluster Dataset.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Data Share Kusto Cluster Dataset. Changing this forces a new Data Share Kusto Cluster Dataset to be created. | 
| **var.share_id** | string | True | The resource ID of the Data Share where this Data Share Kusto Cluster Dataset should be created. Changing this forces a new Data Share Kusto Cluster Dataset to be created. | 
| **var.kusto_cluster_id** | string | True | The resource ID of the Kusto Cluster to be shared with the receiver. Changing this forces a new Data Share Kusto Cluster Dataset to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **share_id** | string  | - | 
| **kusto_cluster_id** | string  | - | 
| **id** | string  | The resource ID of the Data Share Kusto Cluster Dataset. | 
| **display_name** | string  | The name of the Data Share Dataset. | 
| **kusto_cluster_location** | string  | The location of the Kusto Cluster. | 