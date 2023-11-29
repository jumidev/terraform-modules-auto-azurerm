# azurerm_sentinel_data_connector_iot

Manages an Iot Data Connector.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **log_analytics_workspace_id** | string | True | -  |  -  | The ID of the Log Analytics Workspace that this Iot Data Connector resides in. Changing this forces a new Iot Data Connector to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Iot Data Connector. Changing this forces a new Iot Data Connector to be created. | 
| **subscription_id** | string | False | -  |  -  | The ID of the subscription that this Iot Data Connector connects to. Changing this forces a new Iot Data Connector to be created. | 

