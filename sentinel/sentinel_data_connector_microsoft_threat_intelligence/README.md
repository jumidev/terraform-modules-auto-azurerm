# azurerm_sentinel_data_connector_microsoft_threat_intelligence

Manages a Microsoft Threat Intelligence Data Connector.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "sentinel/sentinel_data_connector_microsoft_threat_intelligence" 
}

inputs = {
   name = "name of sentinel_data_connector_microsoft_threat_intelligence" 
   log_analytics_workspace_id = "log_analytics_workspace_id of sentinel_data_connector_microsoft_threat_intelligence" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Microsoft Threat Intelligence Data Connector. Changing this forces a new Microsoft Threat Intelligence Data Connector to be created. | 
| **var.log_analytics_workspace_id** | string | True | The ID of the Log Analytics Workspace. Changing this forces a new Data Connector to be created. | 
| **var.bing_safety_phishing_url_lookback_date** | datetime | False | The lookback date for the Bing Safety Phishing Url in RFC3339. Changing this forces a new Data Connector to be created. | 
| **var.microsoft_emerging_threat_feed_lookback_date** | datetime | False | The lookback date for the Microsoft Emerging Threat Feed in RFC3339. Changing this forces a new Data Connector to be created. | 
| **var.tenant_id** | string | False | The ID of the tenant that this Microsoft Threat Intelligence Data Connector connects to. Changing this forces a new Microsoft Threat Intelligence Data Connector to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the sentinel. | 

Additionally, all variables are provided as outputs.
