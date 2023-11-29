# azurerm_sentinel_data_connector_threat_intelligence_taxii

Manages an Threat Intelligence TAXII Data Connector.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **log_analytics_workspace_id** | string | True | -  |  -  | The ID of the Log Analytics Workspace that this Threat Intelligence TAXII Data Connector resides in. Changing this forces a new Threat Intelligence TAXII Data Connector to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Threat Intelligence TAXII Data Connector. Changing this forces a new Threat Intelligence TAXII Data Connector to be created. | 
| **display_name** | string | True | -  |  -  | The friendly name which should be used for this Threat Intelligence TAXII Data Connector. | 
| **api_root_url** | string | True | -  |  -  | The API root URI of the TAXII server. | 
| **collection_id** | string | True | -  |  -  | The collection ID of the TAXII server. | 
| **user_name** | string | False | -  |  -  | The user name for the TAXII server. | 
| **password** | string | False | -  |  -  | The password for the TAXII server. | 
| **polling_frequency** | string | False | `OnceAnHour`  |  `OnceAMinute`, `OnceAnHour`, `OnceADay`  | The polling frequency for the TAXII server. Possible values are `OnceAMinute`, `OnceAnHour` and `OnceADay`. Defaults to `OnceAnHour`. | 
| **lookback_date** | datetime | False | `1970-01-01T00:00:00Z`  |  -  | The lookback date for the TAXII server in RFC3339. Defaults to `1970-01-01T00:00:00Z`. | 
| **tenant_id** | string | False | -  |  -  | The ID of the tenant that this Threat Intelligence TAXII Data Connector connects to. Changing this forces a new Threat Intelligence TAXII Data Connector to be created. | 

