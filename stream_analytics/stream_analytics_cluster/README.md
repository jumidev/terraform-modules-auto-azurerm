# azurerm_stream_analytics_cluster

Manages a Stream Analytics Cluster.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Stream Analytics Cluster. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Stream Analytics Cluster should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | The Azure Region where the Stream Analytics Cluster should exist. Changing this forces a new resource to be created. | 
| **var.streaming_capacity** | int | True | The number of streaming units supported by the Cluster. Accepted values are multiples of `36` in the range of `36` to `216`. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Stream Analytics. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **streaming_capacity** | int  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Stream Analytics. | 