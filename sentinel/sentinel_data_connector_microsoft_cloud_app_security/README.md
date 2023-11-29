# azurerm_sentinel_data_connector_microsoft_cloud_app_security

Manages a Microsoft Cloud App Security Data Connector.!> **NOTE:** This resource requires that [Enterprise Mobility + Security E5](https://www.microsoft.com/en-us/microsoft-365/enterprise-mobility-security) is enabled on the tenant being connected to.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **log_analytics_workspace_id** | string | True | -  |  -  | The ID of the Log Analytics Workspace that this Microsoft Cloud App Security Data Connector resides in. Changing this forces a new Microsoft Cloud App Security Data Connector to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Microsoft Cloud App Security Data Connector. Changing this forces a new Microsoft Cloud App Security Data Connector to be created. | 
| **alerts_enabled** | bool | False | `True`  |  -  | Should the alerts be enabled? Defaults to `true`. | 
| **discovery_logs_enabled** | bool | False | `True`  |  -  | Should the Discovery Logs be enabled? Defaults to `true`. | 
| **tenant_id** | string | False | -  |  -  | The ID of the Tenant that this Microsoft Cloud App Security Data Connector connects to. | 

