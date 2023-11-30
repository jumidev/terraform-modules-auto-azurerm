# azurerm_logic_app_trigger_recurrence

Manages a Recurrence Trigger within a Logic App Workflow

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "logic_app/logic_app_trigger_recurrence" 
}

inputs = {
   name = "name of logic_app_trigger_recurrence" 
   logic_app_id = "logic_app_id of logic_app_trigger_recurrence" 
   frequency = "frequency of logic_app_trigger_recurrence" 
   interval = "interval of logic_app_trigger_recurrence" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Recurrence Triggers to be created within the Logic App Workflow. Changing this forces a new resource to be created. | 
| **var.logic_app_id** | string | True | -  |  Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created. | 
| **var.frequency** | string | True | `Month`, `Week`, `Day`, `Hour`, `Minute`, `Second`  |  Specifies the Frequency at which this Trigger should be run. Possible values include `Month`, `Week`, `Day`, `Hour`, `Minute` and `Second`. | 
| **var.interval** | string | True | -  |  Specifies interval used for the Frequency, for example a value of `4` for `interval` and `hour` for `frequency` would run the Trigger every 4 hours. | 
| **var.start_time** | string | False | -  |  Specifies the start date and time for this trigger in RFC3339 format: `2000-01-02T03:04:05Z`. | 
| **var.time_zone** | string | False | -  |  Specifies the time zone for this trigger. Supported time zone options are listed [here](https://support.microsoft.com/en-us/help/973627/microsoft-time-zone-index-values) | 
| **var.schedule** | block | False | -  |  A `schedule` block as specified below. | 

### `schedule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `at_these_minutes` | string | No | - | Specifies a list of minutes when the trigger should run. Valid values are between 0 and 59. |
| `at_these_hours` | string | No | - | Specifies a list of hours when the trigger should run. Valid values are between 0 and 23. |
| `on_these_days` | string | No | - | Specifies a list of days when the trigger should run. Valid values include 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', and 'Sunday'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Recurrence Trigger within the Logic App Workflow. | 

Additionally, all variables are provided as outputs.
