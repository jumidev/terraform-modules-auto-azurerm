# azurerm_logic_app_trigger_recurrence

Manages a Recurrence Trigger within a Logic App Workflow

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Recurrence Triggers to be created within the Logic App Workflow. Changing this forces a new resource to be created. | 
| **var.logic_app_id** | string | True | -  |  -  | Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created. | 
| **var.frequency** | string | True | -  |  `Month`, `Week`, `Day`, `Hour`, `Minute`, `Second`  | Specifies the Frequency at which this Trigger should be run. Possible values include `Month`, `Week`, `Day`, `Hour`, `Minute` and `Second`. | 
| **var.interval** | string | True | -  |  -  | Specifies interval used for the Frequency, for example a value of `4` for `interval` and `hour` for `frequency` would run the Trigger every 4 hours. | 
| **var.start_time** | string | False | -  |  -  | Specifies the start date and time for this trigger in RFC3339 format: `2000-01-02T03:04:05Z`. | 
| **var.time_zone** | string | False | -  |  -  | Specifies the time zone for this trigger. Supported time zone options are listed [here](https://support.microsoft.com/en-us/help/973627/microsoft-time-zone-index-values) | 
| **var.schedule** | block | False | -  |  -  | A `schedule` block as specified below. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **logic_app_id** | string  | - | 
| **frequency** | string  | - | 
| **interval** | string  | - | 
| **start_time** | string  | - | 
| **time_zone** | string  | - | 
| **schedule** | block  | - | 
| **id** | string  | The ID of the Recurrence Trigger within the Logic App Workflow. | 