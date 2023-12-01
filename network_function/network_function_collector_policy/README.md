# azurerm_network_function_collector_policy

Manages a Network Function Collector Policy.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network_function/network_function_collector_policy" 
}

inputs = {
   name = "name of network_function_collector_policy" 
   traffic_collector_id = "traffic_collector_id of network_function_collector_policy" 
   location = "${location}" 
   ipfx_emission = {
      example_ipfx_emission = {
         destination_types = "..."   
      }
  
   }
 
   ipfx_ingestion = {
      example_ipfx_ingestion = {
         source_resource_ids = "..."   
      }
  
   }
 
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
| **var.name** | string |  Specifies the name which should be used for this Network Function Collector Policy. Changing this forces a new Network Function Collector Policy to be created. | 
| **var.traffic_collector_id** | string |  Specifies the Azure Traffic Collector ID of the Network Function Collector Policy. Changing this forces a new Network Function Collector Policy to be created. | 
| **var.location** | string |  Specifies the Azure Region where the Network Function Collector Policy should exist. Changing this forces a new Network Function Collector Policy to be created. | 
| **var.ipfx_emission** | [block](#ipfx_emission-block-structure) |  An `ipfx_emission` block. Changing this forces a new Network Function Collector Policy to be created. | 
| **var.ipfx_ingestion** | [block](#ipfx_ingestion-block-structure) |  An `ipfx_ingestion` block. Changing this forces a new Network Function Collector Policy to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.tags** | map |  A mapping of tags which should be assigned to the Network Function Collector Policy. | 

### `ipfx_emission` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `destination_types` | list | Yes | - | A list of emission destination types. The only possible value is 'AzureMonitor'. Changing this forces a new Network Function Collector Policy to be created. |

### `ipfx_ingestion` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `source_resource_ids` | list | Yes | - | A list of ingestion source resource IDs. Changing this forces a new Network Function Collector Policy to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Network Function Collector Policy. | 

Additionally, all variables are provided as outputs.
