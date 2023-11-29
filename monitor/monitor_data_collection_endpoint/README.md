# azurerm_monitor_data_collection_endpoint

Manages a Data Collection Endpoint.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.location** | string | True | -  |  -  | The Azure Region where the Data Collection Endpoint should exist. Changing this forces a new Data Collection Endpoint to be created. | 
| **var.name** | string | True | -  |  -  | The name which should be used for this Data Collection Endpoint. Changing this forces a new Data Collection Endpoint to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Data Collection Endpoint should exist. Changing this forces a new Data Collection Endpoint to be created. | 
| **var.description** | string | False | -  |  -  | Specifies a description for the Data Collection Endpoint. | 
| **var.kind** | string | False | -  |  `Linux`, `Windows`  | The kind of the Data Collection Endpoint. Possible values are `Linux` and `Windows`. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  `true`, `false`  | Whether network access from public internet to the Data Collection Endpoint are allowed. Possible values are `true` and `false`. Default to `true`. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Data Collection Endpoint. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **location** | string  | - | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **description** | string  | - | 
| **kind** | string  | - | 
| **public_network_access_enabled** | bool  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Data Collection Endpoint. | 
| **configuration_access_endpoint** | string  | The endpoint used for accessing configuration, e.g., `https://mydce-abcd.eastus-1.control.monitor.azure.com`. | 
| **logs_ingestion_endpoint** | string  | The endpoint used for ingesting logs, e.g., `https://mydce-abcd.eastus-1.ingest.monitor.azure.com`. | 