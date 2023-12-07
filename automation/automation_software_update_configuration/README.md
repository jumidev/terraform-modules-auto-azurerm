# azurerm_automation_software_update_configuration

Manages an Automation Software Update Configuraion.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "automation/automation_software_update_configuration"   
}

inputs = {
   name = "The name which should be used for this Automation"   
   # automation_account_id → set in tfstate_inputs
   schedule = {
      this_schedule = {
         frequency = "Possible values: OneTime | Day | Hour | Week | Month"         
      }
      
   }
   
}

tfstate_inputs = {
   automation_account_id = "path/to/automation_account_component:id"   
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
| **name** | string |  The name which should be used for this Automation. Changing this forces a new Automation to be created. | 
| **automation_account_id** | string |  The ID of Automation Account to manage this Source Control. Changing this forces a new Automation Source Control to be created. | 
| **schedule** | [block](#schedule-block-structure) |  A `schedule` blocks. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **duration** | string |  `PT2H`  |  Maximum time allowed for the software update configuration run. using format `PT[n]H[n]M[n]S` as per ISO8601. Defaults to `PT2H`. | 
| **linux** | [block](#linux-block-structure) |  -  |  A `linux` block. | 
| **windows** | [block](#windows-block-structure) |  -  |  A `windows` block. | 
| **virtual_machine_ids** | string |  -  |  Specifies a list of Azure Resource IDs of azure virtual machines. | 
| **non_azure_computer_names** | string |  -  |  Specifies a list of names of non-Azure machines for the software update configuration. | 
| **target** | [block](#target-block-structure) |  -  |  A `target` blocks. | 
| **post_task** | [block](#post_task-block-structure) |  -  |  A `post_task` blocks. | 
| **pre_task** | [block](#pre_task-block-structure) |  -  |  A `pre_task` blocks. | 

### `schedule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `frequency` | string | Yes | - | The frequency of the schedule. - can be either 'OneTime', 'Day', 'Hour', 'Week', or 'Month'. |
| `is_enabled` | bool | No | True | Whether the schedule is enabled. Defaults to 'true'. |
| `description` | string | No | - | A description for this Schedule. |
| `interval` | int | No | - | The number of 'frequency's between runs. Only valid when frequency is 'Day', 'Hour', 'Week', or 'Month'. |
| `start_time` | string | No | - | Start time of the schedule. Must be at least five minutes in the future. Defaults to seven minutes in the future from the time the resource is created. |
| `expiry_time` | string | No | - | The end time of the schedule. |
| `time_zone` | string | No | Etc/UTC | The timezone of the start time. Defaults to 'Etc/UTC'. For possible values see: <https://docs.microsoft.com/en-us/rest/api/maps/timezone/gettimezoneenumwindows> |
| `advanced_week_days` | string | No | - | List of days of the week that the job should execute on. Only valid when frequency is 'Week'. Possible values include 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', and 'Sunday'. |
| `advanced_month_days` | int | No | - | List of days of the month that the job should execute on. Must be between '1' and '31'. '-1' for last day of the month. Only valid when frequency is 'Month'. |

### `windows` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `classifications_included` | string | No | - | Specifies the list of update classification. Possible values are 'Unclassified', 'Critical', 'Security', 'UpdateRollup', 'FeaturePack', 'ServicePack', 'Definition', 'Tools' and 'Updates'. |
| `excluded_knowledge_base_numbers` | string | No | - | Specifies a list of knowledge base numbers excluded. |
| `included_knowledge_base_numbers` | string | No | - | Specifies a list of knowledge base numbers included. |
| `reboot` | string | No | IfRequired | Specifies the reboot settings after software update, possible values are 'IfRequired', 'Never', 'RebootOnly' and 'Always'. Defaults to 'IfRequired'. |

### `pre_task` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `parameters` | string | No | - | Specifies a map of parameters for the task. |
| `source` | string | No | - | The name of the runbook for the pre task. |

### `post_task` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `parameters` | string | No | - | Specifies a map of parameters for the task. |
| `source` | string | No | - | The name of the runbook for the post task. |

### `target` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `azure_query` | list | No | - | One or more 'azure_query' blocks. |
| `non_azure_query` | list | No | - | One or more 'non_azure_query' blocks. |

### `linux` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `classifications_included` | string | No | - | Specifies the list of update classifications included in the Software Update Configuration. Possible values are 'Unclassified', 'Critical', 'Security' and 'Other'. |
| `excluded_packages` | string | No | - | Specifies a list of packages to excluded from the Software Update Configuration. |
| `included_packages` | string | No | - | Specifies a list of packages to included from the Software Update Configuration. |
| `reboot` | string | No | IfRequired | Specifies the reboot settings after software update, possible values are 'IfRequired', 'Never', 'RebootOnly' and 'Always'. Defaults to 'IfRequired'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Automation Software Update Configuration. | 
| **error_code** | string | No  | The Error code when failed. | 
| **error_meesage** | string | No  | The Error message indicating why the operation failed. | 

Additionally, all variables are provided as outputs.
