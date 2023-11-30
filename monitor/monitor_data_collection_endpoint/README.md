# azurerm_monitor_data_collection_endpoint

Manages a Data Collection Endpoint.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "monitor/monitor_data_collection_endpoint" 
}

inputs = {
   location = "${location}" 
   name = "name of monitor_data_collection_endpoint" 
   resource_group_name = "${resource_group}" 
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
| **var.location** | string |  The Azure Region where the Data Collection Endpoint should exist. Changing this forces a new Data Collection Endpoint to be created. | 
| **var.name** | string |  The name which should be used for this Data Collection Endpoint. Changing this forces a new Data Collection Endpoint to be created. | 
| **var.resource_group_name** | string |  The name of the Resource Group where the Data Collection Endpoint should exist. Changing this forces a new Data Collection Endpoint to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.description** | string |  -  |  -  |  Specifies a description for the Data Collection Endpoint. | 
| **var.kind** | string |  -  |  `Linux`, `Windows`  |  The kind of the Data Collection Endpoint. Possible values are `Linux` and `Windows`. | 
| **var.public_network_access_enabled** | bool |  `True`  |  `true`, `false`  |  Whether network access from public internet to the Data Collection Endpoint are allowed. Possible values are `true` and `false`. Default to `true`. | 
| **var.tags** | map |  -  |  -  |  A mapping of tags which should be assigned to the Data Collection Endpoint. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Collection Endpoint. | 
| **configuration_access_endpoint** | string | No  | The endpoint used for accessing configuration, e.g., `https://mydce-abcd.eastus-1.control.monitor.azure.com`. | 
| **logs_ingestion_endpoint** | string | No  | The endpoint used for ingesting logs, e.g., `https://mydce-abcd.eastus-1.ingest.monitor.azure.com`. | 

Additionally, all variables are provided as outputs.
