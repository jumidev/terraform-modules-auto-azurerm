# azurerm_sentinel_data_connector_office_365

Manages a Office 365 Data Connector.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **log_analytics_workspace_id** | string | True | -  |  -  | The ID of the Log Analytics Workspace that this Office 365 Data Connector resides in. Changing this forces a new Office 365 Data Connector to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Office 365 Data Connector. Changing this forces a new Office 365 Data Connector to be created. | 
| **exchange_enabled** | bool | False | `True`  |  -  | Should the Exchange data connector be enabled? Defaults to `true`. | 
| **sharepoint_enabled** | bool | False | `True`  |  -  | Should the SharePoint data connector be enabled? Defaults to `true`. | 
| **teams_enabled** | bool | False | `True`  |  -  | Should the Microsoft Teams data connector be enabled? Defaults to `true`. | 
| **tenant_id** | string | False | -  |  -  | The ID of the Tenant that this Office 365 Data Connector connects to. Changing this forces a new Office 365 Data Connector to be created. | 

