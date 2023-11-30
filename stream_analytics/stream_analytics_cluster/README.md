# azurerm_stream_analytics_cluster

Manages a Stream Analytics Cluster.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "stream_analytics/stream_analytics_cluster" 
}

inputs = {
   name = "name of stream_analytics_cluster" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   streaming_capacity = "streaming_capacity of stream_analytics_cluster" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Stream Analytics Cluster. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Stream Analytics Cluster should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | The Azure Region where the Stream Analytics Cluster should exist. Changing this forces a new resource to be created. | 
| **var.streaming_capacity** | int | True | The number of streaming units supported by the Cluster. Accepted values are multiples of `36` in the range of `36` to `216`. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Stream Analytics. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Stream Analytics. | 

Additionally, all variables are provided as outputs.
