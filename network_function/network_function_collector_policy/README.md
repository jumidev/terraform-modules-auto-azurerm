# azurerm_network_function_collector_policy

Manages a Network Function Collector Policy.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name which should be used for this Network Function Collector Policy. Changing this forces a new Network Function Collector Policy to be created. | 
| **var.traffic_collector_id** | string | True | Specifies the Azure Traffic Collector ID of the Network Function Collector Policy. Changing this forces a new Network Function Collector Policy to be created. | 
| **var.location** | string | True | Specifies the Azure Region where the Network Function Collector Policy should exist. Changing this forces a new Network Function Collector Policy to be created. | 
| **var.ipfx_emission** | block | True | An `ipfx_emission` block. Changing this forces a new Network Function Collector Policy to be created. | 
| **var.ipfx_ingestion** | block | True | An `ipfx_ingestion` block. Changing this forces a new Network Function Collector Policy to be created. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Network Function Collector Policy. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **traffic_collector_id** | string  | - | 
| **location** | string  | - | 
| **ipfx_emission** | block  | - | 
| **ipfx_ingestion** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Network Function Collector Policy. | 