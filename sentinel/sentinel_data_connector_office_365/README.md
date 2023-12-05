# azurerm_sentinel_data_connector_office_365

Manages a Office 365 Data Connector.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "sentinel/sentinel_data_connector_office_365"   
}

inputs = {
   # log_analytics_workspace_id → set in tfstate_inputs
   name = "The name which should be used for this Office 365 Data Connector..."   
}

tfstate_inputs = {
   log_analytics_workspace_id = "path/to/log_analytics_workspace_component:id"   
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
| **log_analytics_workspace_id** | string |  The ID of the Log Analytics Workspace that this Office 365 Data Connector resides in. Changing this forces a new Office 365 Data Connector to be created. | 
| **name** | string |  The name which should be used for this Office 365 Data Connector. Changing this forces a new Office 365 Data Connector to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **exchange_enabled** | bool |  `True`  |  Should the Exchange data connector be enabled? Defaults to `true`. | 
| **sharepoint_enabled** | bool |  `True`  |  Should the SharePoint data connector be enabled? Defaults to `true`. | 
| **teams_enabled** | bool |  `True`  |  Should the Microsoft Teams data connector be enabled? Defaults to `true`. | 
| **tenant_id** | string |  -  |  The ID of the Tenant that this Office 365 Data Connector connects to. Changing this forces a new Office 365 Data Connector to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Office 365 Data Connector. | 

Additionally, all variables are provided as outputs.
