# azurerm_sentinel_data_connector_azure_active_directory

Manages a Azure Active Directory Data Connector.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "sentinel/sentinel_data_connector_azure_active_directory" 
}

inputs = {
   log_analytics_workspace_id = "log_analytics_workspace_id of sentinel_data_connector_azure_active_directory" 
   name = "name of sentinel_data_connector_azure_active_directory" 
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
| **var.log_analytics_workspace_id** | string |  The ID of the Log Analytics Workspace that this Azure Active Directory Data Connector resides in. Changing this forces a new Azure Active Directory Data Connector to be created. | 
| **var.name** | string |  The name which should be used for this Azure Active Directory Data Connector. Changing this forces a new Azure Active Directory Data Connector to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.tenant_id** | string |  The ID of the tenant that this Azure Active Directory Data Connector connects to. Changing this forces a new Azure Active Directory Data Connector to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Azure Active Directory Data Connector. | 

Additionally, all variables are provided as outputs.
