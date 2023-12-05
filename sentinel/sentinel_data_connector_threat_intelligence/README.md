# azurerm_sentinel_data_connector_threat_intelligence

Manages a Threat Intelligence Data Connector.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "sentinel/sentinel_data_connector_threat_intelligence"   
}

inputs = {
   # log_analytics_workspace_id → set in tfstate_inputs
   name = "name of sentinel_data_connector_threat_intelligence"   
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
| **log_analytics_workspace_id** | string |  The ID of the Log Analytics Workspace that this Threat Intelligence Data Connector resides in. Changing this forces a new Threat Intelligence Data Connector to be created. | 
| **name** | string |  The name which should be used for this Threat Intelligence Data Connector. Changing this forces a new Threat Intelligence Data Connector to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **lookback_date** | datetime |  `1970-01-01T00:00:00Z`  |  The lookback date for the this Threat Intelligence Data Connector in RFC3339. Defaults to `1970-01-01T00:00:00Z`. Changing this forces a new resource to be created. | 
| **tenant_id** | string |  -  |  The ID of the tenant that this Threat Intelligence Data Connector connects to. Changing this forces a new Threat Intelligence Data Connector to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Threat Intelligence Data Connector. | 

Additionally, all variables are provided as outputs.
