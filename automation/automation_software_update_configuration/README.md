# azurerm_automation_software_update_configuration

Manages an Automation Software Update Configuraion.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "automation/automation_software_update_configuration" 
}

inputs = {
   name = "name of automation_software_update_configuration" 
   automation_account_id = "automation_account_id of automation_software_update_configuration" 
   schedule = "schedule of automation_software_update_configuration" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Automation. Changing this forces a new Automation to be created. | 
| **var.automation_account_id** | string | True | -  |  The ID of Automation Account to manage this Source Control. Changing this forces a new Automation Source Control to be created. | 
| **var.duration** | string | False | `PT2H`  |  Maximum time allowed for the software update configuration run. using format `PT[n]H[n]M[n]S` as per ISO8601. Defaults to `PT2H`. | 
| **var.linux** | block | False | -  |  A `linux` block. | 
| **var.windows** | block | False | -  |  A `windows` block. | 
| **var.virtual_machine_ids** | string | False | -  |  Specifies a list of Azure Resource IDs of azure virtual machines. | 
| **var.non_azure_computer_names** | string | False | -  |  Specifies a list of names of non-Azure machines for the software update configuration. | 
| **var.target** | block | False | -  |  A `target` blocks. | 
| **var.post_task** | block | False | -  |  A `post_task` blocks. | 
| **var.pre_task** | block | False | -  |  A `pre_task` blocks. | 
| **var.schedule** | block | True | -  |  A `schedule` blocks. | 

### `linux` block structure

> `classifications_included` (string): Specifies the list of update classifications included in the Software Update Configuration. Possible values are 'Unclassified', 'Critical', 'Security' and 'Other'.
> `excluded_packages` (string): Specifies a list of packages to excluded from the Software Update Configuration.
> `included_packages` (string): Specifies a list of packages to included from the Software Update Configuration.
> `reboot` (string): Specifies the reboot settings after software update, possible values are 'IfRequired', 'Never', 'RebootOnly' and 'Always'. Defaults to 'IfRequired'.

### `windows` block structure

> `classifications_included` (string): Specifies the list of update classification. Possible values are 'Unclassified', 'Critical', 'Security', 'UpdateRollup', 'FeaturePack', 'ServicePack', 'Definition', 'Tools' and 'Updates'.
> `excluded_knowledge_base_numbers` (string): Specifies a list of knowledge base numbers excluded.
> `included_knowledge_base_numbers` (string): Specifies a list of knowledge base numbers included.
> `reboot` (string): Specifies the reboot settings after software update, possible values are 'IfRequired', 'Never', 'RebootOnly' and 'Always'. Defaults to 'IfRequired'.

### `target` block structure

> `azure_query` (list): One or more 'azure_query' blocks.
> `non_azure_query` (list): One or more 'non_azure_query' blocks.

### `post_task` block structure

> `parameters` (string): Specifies a map of parameters for the task.
> `source` (string): The name of the runbook for the post task.

### `pre_task` block structure

> `parameters` (string): Specifies a map of parameters for the task.
> `source` (string): The name of the runbook for the pre task.

### `schedule` block structure

> `frequency` (string): (REQUIRED) The frequency of the schedule. - can be either 'OneTime', 'Day', 'Hour', 'Week', or 'Month'.
> `is_enabled` (bool): Whether the schedule is enabled. Defaults to 'true'.
> `description` (string): A description for this Schedule.
> `interval` (int): The number of 'frequency's between runs. Only valid when frequency is 'Day', 'Hour', 'Week', or 'Month'.
> `start_time` (string): Start time of the schedule. Must be at least five minutes in the future. Defaults to seven minutes in the future from the time the resource is created.
> `expiry_time` (string): The end time of the schedule.
> `time_zone` (string): The timezone of the start time. Defaults to 'Etc/UTC'. For possible values see: <https://docs.microsoft.com/en-us/rest/api/maps/timezone/gettimezoneenumwindows>
> `advanced_week_days` (string): List of days of the week that the job should execute on. Only valid when frequency is 'Week'. Possible values include 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', and 'Sunday'.
> `advanced_month_days` (int): List of days of the month that the job should execute on. Must be between '1' and '31'. '-1' for last day of the month. Only valid when frequency is 'Month'.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Automation Software Update Configuration. | 
| **error_code** | string | No  | The Error code when failed. | 
| **error_meesage** | string | No  | The Error message indicating why the operation failed. | 

Additionally, all variables are provided as outputs.
