# azurerm_sentinel_data_connector_office_atp

Manages a Office ATP Data Connector.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **log_analytics_workspace_id** | string | True | -  |  -  | The ID of the Log Analytics Workspace that this Office ATP Data Connector resides in. Changing this forces a new Office ATP Data Connector to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Office ATP Data Connector. Changing this forces a new Office ATP Data Connector to be created. | 
| **tenant_id** | string | False | -  |  -  | The ID of the tenant that this Office ATP Data Connector connects to. Changing this forces a new Office ATP Data Connector to be created. | 

