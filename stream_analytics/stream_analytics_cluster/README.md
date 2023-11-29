# azurerm_stream_analytics_cluster

Manages a Stream Analytics Cluster.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Stream Analytics Cluster. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Stream Analytics Cluster should exist. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Stream Analytics Cluster should exist. Changing this forces a new resource to be created. | 
| **streaming_capacity** | int | True | -  |  -  | The number of streaming units supported by the Cluster. Accepted values are multiples of `36` in the range of `36` to `216`. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Stream Analytics. | 

