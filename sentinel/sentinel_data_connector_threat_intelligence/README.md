# azurerm_sentinel_data_connector_threat_intelligence

Manages a Threat Intelligence Data Connector.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.log_analytics_workspace_id** | string | True | -  |  -  | The ID of the Log Analytics Workspace that this Threat Intelligence Data Connector resides in. Changing this forces a new Threat Intelligence Data Connector to be created. | 
| **var.name** | string | True | -  |  -  | The name which should be used for this Threat Intelligence Data Connector. Changing this forces a new Threat Intelligence Data Connector to be created. | 
| **var.lookback_date** | datetime | False | `1970-01-01T00:00:00Z`  |  -  | The lookback date for the this Threat Intelligence Data Connector in RFC3339. Defaults to `1970-01-01T00:00:00Z`. Changing this forces a new resource to be created. | 
| **var.tenant_id** | string | False | -  |  -  | The ID of the tenant that this Threat Intelligence Data Connector connects to. Changing this forces a new Threat Intelligence Data Connector to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **log_analytics_workspace_id** | string  | - | 
| **name** | string  | - | 
| **lookback_date** | datetime  | - | 
| **tenant_id** | string  | - | 
| **id** | string  | The ID of the Threat Intelligence Data Connector. | 