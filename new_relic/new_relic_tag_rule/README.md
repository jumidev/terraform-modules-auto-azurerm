# azurerm_new_relic_tag_rule

Manages an Azure Native New Relic Tag Rule.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.monitor_id** | string | True | -  |  Specifies the ID of the New Relic Monitor this Tag Rule should be created within. Changing this forces a new Azure Native New Relic Tag Rule to be created. | 
| **var.azure_active_directory_log_enabled** | bool | False | `False`  |  Whether Azure Active Directory logs should be sent for the Monitor resource. Defaults to `false`. | 
| **var.activity_log_enabled** | bool | False | `False`  |  Whether activity logs from Azure resources should be sent for the Monitor resource. Defaults to `false`. | 
| **var.log_tag_filter** | block | False | -  |  A `log_tag_filter` block. | 
| **var.metric_enabled** | bool | False | `False`  |  Whether metrics should be sent for the Monitor resource. Defaults to `false`. | 
| **var.metric_tag_filter** | block | False | -  |  A `metric_tag_filter` block. | 
| **var.subscription_log_enabled** | bool | False | `False`  |  Whether subscription logs should be sent for the Monitor resource. Defaults to `false`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **monitor_id** | string  | - | 
| **azure_active_directory_log_enabled** | bool  | - | 
| **activity_log_enabled** | bool  | - | 
| **log_tag_filter** | block  | - | 
| **metric_enabled** | bool  | - | 
| **metric_tag_filter** | block  | - | 
| **subscription_log_enabled** | bool  | - | 
| **id** | string  | The ID of the Azure Native New Relic Tag Rule. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "new_relic/new_relic_tag_rule" 
}

inputs = {
   monitor_id = "monitor_id of new_relic_tag_rule" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```