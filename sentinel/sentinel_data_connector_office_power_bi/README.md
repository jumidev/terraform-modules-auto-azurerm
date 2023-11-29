# azurerm_sentinel_data_connector_office_power_bi

Manages an Office Power BI Data Connector.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **log_analytics_workspace_id** | string | True | -  |  -  | The ID of the Log Analytics Workspace that this Office Power BI Data Connector resides in. Changing this forces a new Office Power BI Data Connector to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Office Power BI Data Connector. Changing this forces a new Office Power BI Data Connector to be created. | 
| **tenant_id** | string | False | -  |  -  | The ID of the tenant that this Office Power BI Data Connector connects to. Changing this forces a new Office Power BI Data Connector to be created. | 

