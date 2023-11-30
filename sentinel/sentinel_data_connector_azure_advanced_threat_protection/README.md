# azurerm_sentinel_data_connector_azure_advanced_threat_protection

Manages a Azure Advanced Threat Protection Data Connector.!> **NOTE:** This resource requires that [Enterprise Mobility + Security E5](https://www.microsoft.com/en-us/microsoft-365/enterprise-mobility-security) is enabled on the tenant being connected to.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "sentinel/sentinel_data_connector_azure_advanced_threat_protection" 
}

inputs = {
   log_analytics_workspace_id = "log_analytics_workspace_id of sentinel_data_connector_azure_advanced_threat_protection" 
   name = "name of sentinel_data_connector_azure_advanced_threat_protection" 
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
| **var.log_analytics_workspace_id** | string  The ID of the Log Analytics Workspace that this Azure Advanced Threat Protection Data Connector resides in. Changing this forces a new Azure Advanced Threat Protection Data Connector to be created. | 
| **var.name** | string  The name which should be used for this Azure Advanced Threat Protection Data Connector. Changing this forces a new Azure Advanced Threat Protection Data Connector to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.tenant_id** | string  The ID of the tenant that this Azure Advanced Threat Protection Data Connector connects to. Changing this forces a new Azure Advanced Threat Protection Data Connector to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Azure Advanced Threat Protection Data Connector. | 

Additionally, all variables are provided as outputs.
