# azurerm_sentinel_data_connector_azure_advanced_threat_protection

Manages a Azure Advanced Threat Protection Data Connector.!> **NOTE:** This resource requires that [Enterprise Mobility + Security E5](https://www.microsoft.com/en-us/microsoft-365/enterprise-mobility-security) is enabled on the tenant being connected to.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.log_analytics_workspace_id** | string | True | -  |  -  | The ID of the Log Analytics Workspace that this Azure Advanced Threat Protection Data Connector resides in. Changing this forces a new Azure Advanced Threat Protection Data Connector to be created. | 
| **var.name** | string | True | -  |  -  | The name which should be used for this Azure Advanced Threat Protection Data Connector. Changing this forces a new Azure Advanced Threat Protection Data Connector to be created. | 
| **var.tenant_id** | string | False | -  |  -  | The ID of the tenant that this Azure Advanced Threat Protection Data Connector connects to. Changing this forces a new Azure Advanced Threat Protection Data Connector to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **log_analytics_workspace_id** | string  | - | 
| **name** | string  | - | 
| **tenant_id** | string  | - | 
| **id** | string  | The ID of the Azure Advanced Threat Protection Data Connector. | 