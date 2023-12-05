# azurerm_automation_schedule

Manages a Automation Schedule.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "automation/automation_schedule"   
}

inputs = {
   name = "name of automation_schedule"   
   resource_group_name = "${resource_group}"   
   # automation_account_name → set in tfstate_inputs
   frequency = "frequency of automation_schedule"   
}

tfstate_inputs = {
   automation_account_name = "path/to/automation_account_component:name"   
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
| **name** | string |  Specifies the name of the Schedule. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the Schedule is created. Changing this forces a new resource to be created. | 
| **automation_account_name** | string |  The name of the automation account in which the Schedule is created. Changing this forces a new resource to be created. | 
| **frequency** | string |  The frequency of the schedule. - can be either `OneTime`, `Day`, `Hour`, `Week`, or `Month`. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **description** | string |  -  |  -  |  A description for this Schedule. | 
| **interval** | int |  `1`  |  -  |  The number of `frequency`s between runs. Only valid when frequency is `Day`, `Hour`, `Week`, or `Month` and defaults to `1`. | 
| **start_time** | string |  -  |  -  |  Start time of the schedule. Must be at least five minutes in the future. Defaults to seven minutes in the future from the time the resource is created. | 
| **expiry_time** | string |  -  |  -  |  The end time of the schedule. | 
| **timezone** | string |  `Etc/UTC`  |  -  |  The timezone of the start time. Defaults to `Etc/UTC`. For possible values see: <https://docs.microsoft.com/en-us/rest/api/maps/timezone/gettimezoneenumwindows> | 
| **week_days** | string |  -  |  `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`  |  List of days of the week that the job should execute on. Only valid when frequency is `Week`. Possible values are `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday` and `Sunday`. | 
| **month_days** | int |  -  |  -  |  List of days of the month that the job should execute on. Must be between `1` and `31`. `-1` for last day of the month. Only valid when frequency is `Month`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Automation Schedule ID. | 

Additionally, all variables are provided as outputs.
