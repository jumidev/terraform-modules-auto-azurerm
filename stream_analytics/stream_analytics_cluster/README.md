# azurerm_stream_analytics_cluster

Manages a Stream Analytics Cluster.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "stream_analytics/stream_analytics_cluster"   
}

inputs = {
   name = "The name which should be used for this Stream Analytics Cluster..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   streaming_capacity = "The number of streaming units supported by the Cluster..."   
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
| **name** | string |  The name which should be used for this Stream Analytics Cluster. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Stream Analytics Cluster should exist. Changing this forces a new resource to be created. | 
| **location** | string |  The Azure Region where the Stream Analytics Cluster should exist. Changing this forces a new resource to be created. | 
| **streaming_capacity** | number |  The number of streaming units supported by the Cluster. Accepted values are multiples of `36` in the range of `36` to `216`. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags which should be assigned to the Stream Analytics. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Stream Analytics. | 

Additionally, all variables are provided as outputs.
