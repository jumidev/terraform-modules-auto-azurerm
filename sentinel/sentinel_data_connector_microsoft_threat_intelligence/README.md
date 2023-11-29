# azurerm_sentinel_data_connector_microsoft_threat_intelligence

Manages a Microsoft Threat Intelligence Data Connector.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Microsoft Threat Intelligence Data Connector. Changing this forces a new Microsoft Threat Intelligence Data Connector to be created. | 
| **log_analytics_workspace_id** | string | True | -  |  -  | The ID of the Log Analytics Workspace. Changing this forces a new Data Connector to be created. | 
| **bing_safety_phishing_url_lookback_date** | datetime | False | -  |  -  | The lookback date for the Bing Safety Phishing Url in RFC3339. Changing this forces a new Data Connector to be created. | 
| **microsoft_emerging_threat_feed_lookback_date** | datetime | False | -  |  -  | The lookback date for the Microsoft Emerging Threat Feed in RFC3339. Changing this forces a new Data Connector to be created. | 
| **tenant_id** | string | False | -  |  -  | The ID of the tenant that this Microsoft Threat Intelligence Data Connector connects to. Changing this forces a new Microsoft Threat Intelligence Data Connector to be created. | 

