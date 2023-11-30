# azurerm_sentinel_data_connector_office_365

Manages a Office 365 Data Connector.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.log_analytics_workspace_id** | string | True | -  |  The ID of the Log Analytics Workspace that this Office 365 Data Connector resides in. Changing this forces a new Office 365 Data Connector to be created. | 
| **var.name** | string | True | -  |  The name which should be used for this Office 365 Data Connector. Changing this forces a new Office 365 Data Connector to be created. | 
| **var.exchange_enabled** | bool | False | `True`  |  Should the Exchange data connector be enabled? Defaults to `true`. | 
| **var.sharepoint_enabled** | bool | False | `True`  |  Should the SharePoint data connector be enabled? Defaults to `true`. | 
| **var.teams_enabled** | bool | False | `True`  |  Should the Microsoft Teams data connector be enabled? Defaults to `true`. | 
| **var.tenant_id** | string | False | -  |  The ID of the Tenant that this Office 365 Data Connector connects to. Changing this forces a new Office 365 Data Connector to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **log_analytics_workspace_id** | string  | - | 
| **name** | string  | - | 
| **exchange_enabled** | bool  | - | 
| **sharepoint_enabled** | bool  | - | 
| **teams_enabled** | bool  | - | 
| **tenant_id** | string  | - | 
| **id** | string  | The ID of the Office 365 Data Connector. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "sentinel/sentinel_data_connector_office_365" 
}

inputs = {
   log_analytics_workspace_id = "log_analytics_workspace_id of sentinel_data_connector_office_365" 
   name = "name of sentinel_data_connector_office_365" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```