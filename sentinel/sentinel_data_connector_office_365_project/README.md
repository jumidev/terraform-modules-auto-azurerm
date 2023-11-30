# azurerm_sentinel_data_connector_office_365_project

Manages an Office 365 Project Data Connector.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "sentinel/sentinel_data_connector_office_365_project" 
}

inputs = {
   log_analytics_workspace_id = "log_analytics_workspace_id of sentinel_data_connector_office_365_project" 
   name = "name of sentinel_data_connector_office_365_project" 
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
| **var.log_analytics_workspace_id** | string | True | The ID of the Log Analytics Workspace that this Office 365 Project Data Connector resides in. Changing this forces a new Office 365 Project Data Connector to be created. | 
| **var.name** | string | True | The name which should be used for this Office 365 Project Data Connector. Changing this forces a new Office 365 Project Data Connector to be created. | 
| **var.tenant_id** | string | False | The ID of the tenant that this Office 365 Project Data Connector connects to. Changing this forces a new Office 365 Project Data Connector to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Office 365 Project Data Connector. | 

Additionally, all variables are provided as outputs.
