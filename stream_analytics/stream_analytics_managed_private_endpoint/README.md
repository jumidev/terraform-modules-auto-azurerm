# azurerm_stream_analytics_managed_private_endpoint

Manages a Stream Analytics Managed Private Endpoint.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Stream Analytics Managed Private Endpoint. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Stream Analytics Managed Private Endpoint should exist. Changing this forces a new resource to be created. | 
| **var.stream_analytics_cluster_name** | string | True | -  |  -  | The name of the Stream Analytics Cluster where the Managed Private Endpoint should be created. Changing this forces a new resource to be created. | 
| **var.target_resource_id** | string | True | -  |  -  | The ID of the Private Link Enabled Remote Resource which this Stream Analytics Private endpoint should be connected to. Changing this forces a new resource to be created. | 
| **var.subresource_name** | string | True | -  |  -  | Specifies the sub resource name which the Stream Analytics Private Endpoint is able to connect to. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **stream_analytics_cluster_name** | string  | - | 
| **target_resource_id** | string  | - | 
| **subresource_name** | string  | - | 
| **id** | string  | The ID of the Stream Analytics. | 