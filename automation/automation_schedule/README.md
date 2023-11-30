# azurerm_automation_schedule

Manages a Automation Schedule.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "automation/automation_schedule" 
}

inputs = {
   name = "name of automation_schedule" 
   resource_group_name = "${resource_group}" 
   automation_account_name = "automation_account_name of automation_schedule" 
   frequency = "frequency of automation_schedule" 
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
| **var.name** | string |  Specifies the name of the Schedule. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the resource group in which the Schedule is created. Changing this forces a new resource to be created. | 
| **var.automation_account_name** | string |  The name of the automation account in which the Schedule is created. Changing this forces a new resource to be created. | 
| **var.frequency** | string |  The frequency of the schedule. - can be either `OneTime`, `Day`, `Hour`, `Week`, or `Month`. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.description** | string |  -  |  -  |  A description for this Schedule. | 
| **var.interval** | int |  `1`  |  -  |  The number of `frequency`s between runs. Only valid when frequency is `Day`, `Hour`, `Week`, or `Month` and defaults to `1`. | 
| **var.start_time** | string |  -  |  -  |  Start time of the schedule. Must be at least five minutes in the future. Defaults to seven minutes in the future from the time the resource is created. | 
| **var.expiry_time** | string |  -  |  -  |  The end time of the schedule. | 
| **var.timezone** | string |  `Etc/UTC`  |  -  |  The timezone of the start time. Defaults to `Etc/UTC`. For possible values see: <https://docs.microsoft.com/en-us/rest/api/maps/timezone/gettimezoneenumwindows> | 
| **var.week_days** | string |  -  |  `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`  |  List of days of the week that the job should execute on. Only valid when frequency is `Week`. Possible values are `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday` and `Sunday`. | 
| **var.month_days** | int |  -  |  -  |  List of days of the month that the job should execute on. Must be between `1` and `31`. `-1` for last day of the month. Only valid when frequency is `Month`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Automation Schedule ID. | 

Additionally, all variables are provided as outputs.
