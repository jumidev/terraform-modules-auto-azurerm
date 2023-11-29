# azurerm_sentinel_data_connector_dynamics_365

Manages a Dynamics 365 Data Connector.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **log_analytics_workspace_id** | string | True | -  |  -  | The ID of the Log Analytics Workspace that this Dynamics 365 Data Connector resides in. Changing this forces a new Dynamics 365 Data Connector to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Dynamics 365 Data Connector. Changing this forces a new Dynamics 365 Data Connector to be created. | 
| **tenant_id** | string | False | -  |  -  | The ID of the tenant that this Dynamics 365 Data Connector connects to. Changing this forces a new Dynamics 365 Data Connector to be created. | 

