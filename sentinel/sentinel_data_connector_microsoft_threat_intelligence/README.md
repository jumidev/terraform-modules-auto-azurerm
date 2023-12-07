# azurerm_sentinel_data_connector_microsoft_threat_intelligence

Manages a Microsoft Threat Intelligence Data Connector.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "sentinel/sentinel_data_connector_microsoft_threat_intelligence"   
}

inputs = {
   name = "The name which should be used for this Microsoft Threat Intelligence Data Connec..."   
   # log_analytics_workspace_id → set in tfstate_inputs
}

tfstate_inputs = {
   log_analytics_workspace_id = "path/to/log_analytics_workspace_component:id"   
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
| **name** | string |  The name which should be used for this Microsoft Threat Intelligence Data Connector. Changing this forces a new Microsoft Threat Intelligence Data Connector to be created. | 
| **log_analytics_workspace_id** | string |  The ID of the Log Analytics Workspace. Changing this forces a new Data Connector to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **bing_safety_phishing_url_lookback_date** | string |  The lookback date for the Bing Safety Phishing Url in RFC3339. Changing this forces a new Data Connector to be created. | 
| **microsoft_emerging_threat_feed_lookback_date** | string |  The lookback date for the Microsoft Emerging Threat Feed in RFC3339. Changing this forces a new Data Connector to be created. | 
| **tenant_id** | string |  The ID of the tenant that this Microsoft Threat Intelligence Data Connector connects to. Changing this forces a new Microsoft Threat Intelligence Data Connector to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the sentinel. | 

Additionally, all variables are provided as outputs.
