# azurerm_sentinel_data_connector_threat_intelligence_taxii

Manages an Threat Intelligence TAXII Data Connector.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.log_analytics_workspace_id** | string | True | -  |  -  | The ID of the Log Analytics Workspace that this Threat Intelligence TAXII Data Connector resides in. Changing this forces a new Threat Intelligence TAXII Data Connector to be created. | 
| **var.name** | string | True | -  |  -  | The name which should be used for this Threat Intelligence TAXII Data Connector. Changing this forces a new Threat Intelligence TAXII Data Connector to be created. | 
| **var.display_name** | string | True | -  |  -  | The friendly name which should be used for this Threat Intelligence TAXII Data Connector. | 
| **var.api_root_url** | string | True | -  |  -  | The API root URI of the TAXII server. | 
| **var.collection_id** | string | True | -  |  -  | The collection ID of the TAXII server. | 
| **var.user_name** | string | False | -  |  -  | The user name for the TAXII server. | 
| **var.password** | string | False | -  |  -  | The password for the TAXII server. | 
| **var.polling_frequency** | string | False | `OnceAnHour`  |  `OnceAMinute`, `OnceAnHour`, `OnceADay`  | The polling frequency for the TAXII server. Possible values are `OnceAMinute`, `OnceAnHour` and `OnceADay`. Defaults to `OnceAnHour`. | 
| **var.lookback_date** | datetime | False | `1970-01-01T00:00:00Z`  |  -  | The lookback date for the TAXII server in RFC3339. Defaults to `1970-01-01T00:00:00Z`. | 
| **var.tenant_id** | string | False | -  |  -  | The ID of the tenant that this Threat Intelligence TAXII Data Connector connects to. Changing this forces a new Threat Intelligence TAXII Data Connector to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **log_analytics_workspace_id** | string  | - | 
| **name** | string  | - | 
| **display_name** | string  | - | 
| **api_root_url** | string  | - | 
| **collection_id** | string  | - | 
| **user_name** | string  | - | 
| **password** | string  | - | 
| **polling_frequency** | string  | - | 
| **lookback_date** | datetime  | - | 
| **tenant_id** | string  | - | 
| **id** | string  | The ID of the Threat Intelligence TAXII Data Connector. | 