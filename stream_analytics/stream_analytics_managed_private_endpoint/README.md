# azurerm_stream_analytics_managed_private_endpoint

Manages a Stream Analytics Managed Private Endpoint.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "stream_analytics/stream_analytics_managed_private_endpoint" 
}

inputs = {
   name = "name of stream_analytics_managed_private_endpoint" 
   resource_group_name = "${resource_group}" 
   stream_analytics_cluster_name = "stream_analytics_cluster_name of stream_analytics_managed_private_endpoint" 
   target_resource_id = "target_resource_id of stream_analytics_managed_private_endpoint" 
   subresource_name = "subresource_name of stream_analytics_managed_private_endpoint" 
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
| **name** | string |  The name which should be used for this Stream Analytics Managed Private Endpoint. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Stream Analytics Managed Private Endpoint should exist. Changing this forces a new resource to be created. | 
| **stream_analytics_cluster_name** | string |  The name of the Stream Analytics Cluster where the Managed Private Endpoint should be created. Changing this forces a new resource to be created. | 
| **target_resource_id** | string |  The ID of the Private Link Enabled Remote Resource which this Stream Analytics Private endpoint should be connected to. Changing this forces a new resource to be created. | 
| **subresource_name** | string |  Specifies the sub resource name which the Stream Analytics Private Endpoint is able to connect to. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Stream Analytics. | 

Additionally, all variables are provided as outputs.
