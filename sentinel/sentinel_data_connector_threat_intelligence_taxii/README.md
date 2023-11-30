# azurerm_sentinel_data_connector_threat_intelligence_taxii

Manages an Threat Intelligence TAXII Data Connector.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "sentinel/sentinel_data_connector_threat_intelligence_taxii" 
}

inputs = {
   log_analytics_workspace_id = "log_analytics_workspace_id of sentinel_data_connector_threat_intelligence_taxii" 
   name = "name of sentinel_data_connector_threat_intelligence_taxii" 
   display_name = "display_name of sentinel_data_connector_threat_intelligence_taxii" 
   api_root_url = "api_root_url of sentinel_data_connector_threat_intelligence_taxii" 
   collection_id = "collection_id of sentinel_data_connector_threat_intelligence_taxii" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.log_analytics_workspace_id** | string |  The ID of the Log Analytics Workspace that this Threat Intelligence TAXII Data Connector resides in. Changing this forces a new Threat Intelligence TAXII Data Connector to be created. | 
| **var.name** | string |  The name which should be used for this Threat Intelligence TAXII Data Connector. Changing this forces a new Threat Intelligence TAXII Data Connector to be created. | 
| **var.display_name** | string |  The friendly name which should be used for this Threat Intelligence TAXII Data Connector. | 
| **var.api_root_url** | string |  The API root URI of the TAXII server. | 
| **var.collection_id** | string |  The collection ID of the TAXII server. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.user_name** | string |  -  |  -  |  The user name for the TAXII server. | 
| **var.password** | string |  -  |  -  |  The password for the TAXII server. | 
| **var.polling_frequency** | string |  `OnceAnHour`  |  `OnceAMinute`, `OnceAnHour`, `OnceADay`  |  The polling frequency for the TAXII server. Possible values are `OnceAMinute`, `OnceAnHour` and `OnceADay`. Defaults to `OnceAnHour`. | 
| **var.lookback_date** | datetime |  `1970-01-01T00:00:00Z`  |  -  |  The lookback date for the TAXII server in RFC3339. Defaults to `1970-01-01T00:00:00Z`. | 
| **var.tenant_id** | string |  -  |  -  |  The ID of the tenant that this Threat Intelligence TAXII Data Connector connects to. Changing this forces a new Threat Intelligence TAXII Data Connector to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Threat Intelligence TAXII Data Connector. | 

Additionally, all variables are provided as outputs.
