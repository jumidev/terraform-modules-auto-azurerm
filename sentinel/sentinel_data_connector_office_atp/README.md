# azurerm_sentinel_data_connector_office_atp

Manages a Office ATP Data Connector.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "sentinel/sentinel_data_connector_office_atp"   
}

inputs = {
   # log_analytics_workspace_id → set in tfstate_inputs
   name = "name of sentinel_data_connector_office_atp"   
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
| **log_analytics_workspace_id** | string |  The ID of the Log Analytics Workspace that this Office ATP Data Connector resides in. Changing this forces a new Office ATP Data Connector to be created. | 
| **name** | string |  The name which should be used for this Office ATP Data Connector. Changing this forces a new Office ATP Data Connector to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tenant_id** | string |  The ID of the tenant that this Office ATP Data Connector connects to. Changing this forces a new Office ATP Data Connector to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Office ATP Data Connector. | 

Additionally, all variables are provided as outputs.
