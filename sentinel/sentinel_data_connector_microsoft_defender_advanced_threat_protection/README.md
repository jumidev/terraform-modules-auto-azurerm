# azurerm_sentinel_data_connector_microsoft_defender_advanced_threat_protection

Manages a Microsoft Defender Advanced Threat Protection Data Connector.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **log_analytics_workspace_id** | string | True | -  |  -  | The ID of the Log Analytics Workspace that this Microsoft Defender Advanced Threat Protection Data Connector resides in. Changing this forces a new Microsoft Defender Advanced Threat Protection Data Connector to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Microsoft Defender Advanced Threat Protection Data Connector. Changing this forces a new Microsoft Defender Advanced Threat Protection Data Connector to be created. | 
| **tenant_id** | string | False | -  |  -  | The ID of the tenant that this Microsoft Defender Advanced Threat Protection Data Connector connects to. Changing this forces a new Microsoft Defender Advanced Threat Protection Data Connector to be created. | 

