# azurerm_sentinel_data_connector_iot

Manages an Iot Data Connector.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.log_analytics_workspace_id** | string | True | The ID of the Log Analytics Workspace that this Iot Data Connector resides in. Changing this forces a new Iot Data Connector to be created. | 
| **var.name** | string | True | The name which should be used for this Iot Data Connector. Changing this forces a new Iot Data Connector to be created. | 
| **var.subscription_id** | string | False | The ID of the subscription that this Iot Data Connector connects to. Changing this forces a new Iot Data Connector to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **log_analytics_workspace_id** | string  | - | 
| **name** | string  | - | 
| **subscription_id** | string  | - | 
| **id** | string  | The ID of the Iot Data Connector. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "sentinel/sentinel_data_connector_iot" 
}

inputs = {
   log_analytics_workspace_id = "log_analytics_workspace_id of sentinel_data_connector_iot" 
   name = "name of sentinel_data_connector_iot" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```