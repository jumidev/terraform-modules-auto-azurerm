# azurerm_monitor_log_profile

Manages a [Log Profile](https://docs.microsoft.com/azure/monitoring-and-diagnostics/monitoring-overview-activity-logs#export-the-activity-log-with-a-log-profile). A Log Profile configures how Activity Logs are exported.-> **NOTE:** It's only possible to configure one Log Profile per Subscription. If you are trying to create more than one Log Profile, an error with `StatusCode=409` will occur.!> **NOTE:** Azure Log Profiles will be retired on 30th September 2026 and will be removed in v4.0 of the AzureRM Provider. More information on the deprecation can be found [in the Azure documentation](https://learn.microsoft.com/azure/azure-monitor/essentials/activity-log?tabs=powershell#legacy-collection-methods).

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "monitor/monitor_log_profile" 
}

inputs = {
   name = "name of monitor_log_profile" 
   categories = "categories of monitor_log_profile" 
   locations = "locations of monitor_log_profile" 
   retention_policy = {
      example_retention_policy = {
         ...
      }
  
   }
 
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
| **var.name** | string | True | The name of the Log Profile. Changing this forces a new resource to be created. | 
| **var.categories** | string | True | List of categories of the logs. | 
| **var.locations** | string | True | List of regions for which Activity Log events are stored or streamed. | 
| **var.storage_account_id** | string | False | The resource ID of the storage account in which the Activity Log is stored. At least one of `storage_account_id` or `servicebus_rule_id` must be set. | 
| **var.servicebus_rule_id** | string | False | The service bus (or event hub) rule ID of the service bus (or event hub) namespace in which the Activity Log is streamed to. At least one of `storage_account_id` or `servicebus_rule_id` must be set. | 
| **var.retention_policy** | block | True | A `retention_policy` block. A retention policy for how long Activity Logs are retained in the storage account. | 

### `retention_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | Yes | - | A boolean value to indicate whether the retention policy is enabled. |
| `days` | int | No | 0 | The number of days for the retention policy. Defaults to '0'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Log Profile. | 

Additionally, all variables are provided as outputs.
