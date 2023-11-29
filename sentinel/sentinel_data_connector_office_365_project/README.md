# azurerm_sentinel_data_connector_office_365_project

Manages an Office 365 Project Data Connector.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.log_analytics_workspace_id** | string | True | -  |  -  | The ID of the Log Analytics Workspace that this Office 365 Project Data Connector resides in. Changing this forces a new Office 365 Project Data Connector to be created. | 
| **var.name** | string | True | -  |  -  | The name which should be used for this Office 365 Project Data Connector. Changing this forces a new Office 365 Project Data Connector to be created. | 
| **var.tenant_id** | string | False | -  |  -  | The ID of the tenant that this Office 365 Project Data Connector connects to. Changing this forces a new Office 365 Project Data Connector to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **log_analytics_workspace_id** | string  | - | 
| **name** | string  | - | 
| **tenant_id** | string  | - | 
| **id** | string  | The ID of the Office 365 Project Data Connector. | 