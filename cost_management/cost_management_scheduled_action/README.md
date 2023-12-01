# azurerm_cost_management_scheduled_action

Manages an Azure Cost Management Scheduled Action.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cost_management/cost_management_scheduled_action" 
}

inputs = {
   display_name = "display_name of cost_management_scheduled_action" 
   email_address_sender = "email_address_sender of cost_management_scheduled_action" 
   email_addresses = "email_addresses of cost_management_scheduled_action" 
   email_subject = "email_subject of cost_management_scheduled_action" 
   end_date = "end_date of cost_management_scheduled_action" 
   frequency = "frequency of cost_management_scheduled_action" 
   name = "name of cost_management_scheduled_action" 
   start_date = "start_date of cost_management_scheduled_action" 
   view_id = "view_id of cost_management_scheduled_action" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **display_name** | string |  -  |  User visible input name of the Cost Management Scheduled Action. | 
| **email_address_sender** | string |  -  |  Email address of the point of contact that should get the unsubscribe requests of Scheduled Action notification emails. | 
| **email_addresses** | string |  -  |  Specifies a list of email addresses that will receive the Scheduled Action. | 
| **email_subject** | string |  -  |  Subject of the email. Length is limited to 70 characters. | 
| **end_date** | datetime |  -  |  The end date and time of the Scheduled Action (UTC). | 
| **frequency** | string |  `Daily`, `Monthly`, `Weekly`  |  Frequency of the schedule. Possible values are `Daily`, `Monthly` and `Weekly`. Value `Monthly` requires either `weeks_of_month` and `days_of_week` or `day_of_month` to be specified. Value `Weekly` requires `days_of_week` to be specified. | 
| **name** | string |  -  |  The name which should be used for this Azure Cost Management Scheduled Action. Changing this forces a new Azure Cost Management Scheduled Action to be created. | 
| **start_date** | datetime |  -  |  The start date and time of the Scheduled Action (UTC). | 
| **view_id** | string |  -  |  The ID of the Cost Management View that is used by the Scheduled Action. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **day_of_month** | string |  -  |  UTC day on which cost analysis data will be emailed. Must be between `1` and `31`. This property is applicable when `frequency` is `Monthly`. | 
| **days_of_week** | string |  `Friday`, `Monday`, `Saturday`, `Sunday`, `Thursday`, `Tuesday`, `Wednesday`  |  Specifies a list of day names on which cost analysis data will be emailed. This property is applicable when frequency is `Weekly` or `Monthly`. Possible values are `Friday`, `Monday`, `Saturday`, `Sunday`, `Thursday`, `Tuesday` and `Wednesday`. | 
| **hour_of_day** | string |  -  |  UTC time at which cost analysis data will be emailed. Must be between `0` and `23`. | 
| **message** | string |  -  |  Message to be added in the email. Length is limited to 250 characters. | 
| **weeks_of_month** | string |  `First`, `Fourth`, `Last`, `Second`, `Third`  |  Specifies a list of weeks in which cost analysis data will be emailed. This property is applicable when `frequency` is `Monthly` and used in combination with `days_of_week`. Possible values are `First`, `Fourth`, `Last`, `Second` and `Third`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Azure Cost Management Scheduled Action. | 

Additionally, all variables are provided as outputs.
