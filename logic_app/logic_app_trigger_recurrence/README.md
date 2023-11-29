# azurerm_logic_app_trigger_recurrence

Manages a Recurrence Trigger within a Logic App Workflow

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Recurrence Triggers to be created within the Logic App Workflow. Changing this forces a new resource to be created. | 
| **logic_app_id** | string | True | -  |  -  | Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created. | 
| **frequency** | string | True | -  |  `Month`, `Week`, `Day`, `Hour`, `Minute`, `Second`  | Specifies the Frequency at which this Trigger should be run. Possible values include `Month`, `Week`, `Day`, `Hour`, `Minute` and `Second`. | 
| **interval** | string | True | -  |  -  | Specifies interval used for the Frequency, for example a value of `4` for `interval` and `hour` for `frequency` would run the Trigger every 4 hours. | 
| **start_time** | string | False | -  |  -  | Specifies the start date and time for this trigger in RFC3339 format: `2000-01-02T03:04:05Z`. | 
| **time_zone** | string | False | -  |  -  | Specifies the time zone for this trigger. Supported time zone options are listed [here](https://support.microsoft.com/en-us/help/973627/microsoft-time-zone-index-values) | 
| **schedule** | block | False | -  |  -  | A `schedule` block as specified below. | 

