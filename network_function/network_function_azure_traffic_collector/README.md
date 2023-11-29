# azurerm_network_function_azure_traffic_collector

Manages a Network Function Azure Traffic Collector.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this Network Function Azure Traffic Collector. Changing this forces a new Network Function Azure Traffic Collector to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group where the Network Function Azure Traffic Collector should exist. Changing this forces a new Network Function Azure Traffic Collector to be created. | 
| **location** | string | True | -  |  -  | Specifies the Azure Region where the Network Function Azure Traffic Collector should exist. Changing this forces a new Network Function Azure Traffic Collector to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Network Function Azure Traffic Collector. | 

