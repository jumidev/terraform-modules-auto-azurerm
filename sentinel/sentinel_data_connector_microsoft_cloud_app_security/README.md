# azurerm_sentinel_data_connector_microsoft_cloud_app_security

Manages a Microsoft Cloud App Security Data Connector.!> **NOTE:** This resource requires that [Enterprise Mobility + Security E5](https://www.microsoft.com/en-us/microsoft-365/enterprise-mobility-security) is enabled on the tenant being connected to.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "sentinel/sentinel_data_connector_microsoft_cloud_app_security"   
}

inputs = {
   # log_analytics_workspace_id → set in tfstate_inputs
   name = "The name which should be used for this Microsoft Cloud App Security Data Connect..."   
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
| **log_analytics_workspace_id** | string |  The ID of the Log Analytics Workspace that this Microsoft Cloud App Security Data Connector resides in. Changing this forces a new Microsoft Cloud App Security Data Connector to be created. | 
| **name** | string |  The name which should be used for this Microsoft Cloud App Security Data Connector. Changing this forces a new Microsoft Cloud App Security Data Connector to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **alerts_enabled** | bool |  `True`  |  Should the alerts be enabled? Defaults to `true`. | 
| **discovery_logs_enabled** | bool |  `True`  |  Should the Discovery Logs be enabled? Defaults to `true`. | 
| **tenant_id** | string |  -  |  The ID of the Tenant that this Microsoft Cloud App Security Data Connector connects to. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Microsoft Cloud App Security Data Connector. | 

Additionally, all variables are provided as outputs.
