# azurerm_cost_management_scheduled_action

Manages an Azure Cost Management Scheduled Action.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.display_name** | string | True | -  |  User visible input name of the Cost Management Scheduled Action. | 
| **var.email_address_sender** | string | True | -  |  Email address of the point of contact that should get the unsubscribe requests of Scheduled Action notification emails. | 
| **var.email_addresses** | string | True | -  |  Specifies a list of email addresses that will receive the Scheduled Action. | 
| **var.email_subject** | string | True | -  |  Subject of the email. Length is limited to 70 characters. | 
| **var.end_date** | datetime | True | -  |  The end date and time of the Scheduled Action (UTC). | 
| **var.frequency** | string | True | `Daily`, `Monthly`, `Weekly`  |  Frequency of the schedule. Possible values are `Daily`, `Monthly` and `Weekly`. Value `Monthly` requires either `weeks_of_month` and `days_of_week` or `day_of_month` to be specified. Value `Weekly` requires `days_of_week` to be specified. | 
| **var.name** | string | True | -  |  The name which should be used for this Azure Cost Management Scheduled Action. Changing this forces a new Azure Cost Management Scheduled Action to be created. | 
| **var.start_date** | datetime | True | -  |  The start date and time of the Scheduled Action (UTC). | 
| **var.view_id** | string | True | -  |  The ID of the Cost Management View that is used by the Scheduled Action. Changing this forces a new resource to be created. | 
| **var.day_of_month** | string | False | -  |  UTC day on which cost analysis data will be emailed. Must be between `1` and `31`. This property is applicable when `frequency` is `Monthly`. | 
| **var.days_of_week** | string | False | `Friday`, `Monday`, `Saturday`, `Sunday`, `Thursday`, `Tuesday`, `Wednesday`  |  Specifies a list of day names on which cost analysis data will be emailed. This property is applicable when frequency is `Weekly` or `Monthly`. Possible values are `Friday`, `Monday`, `Saturday`, `Sunday`, `Thursday`, `Tuesday` and `Wednesday`. | 
| **var.hour_of_day** | string | False | -  |  UTC time at which cost analysis data will be emailed. Must be between `0` and `23`. | 
| **var.message** | string | False | -  |  Message to be added in the email. Length is limited to 250 characters. | 
| **var.weeks_of_month** | string | False | `First`, `Fourth`, `Last`, `Second`, `Third`  |  Specifies a list of weeks in which cost analysis data will be emailed. This property is applicable when `frequency` is `Monthly` and used in combination with `days_of_week`. Possible values are `First`, `Fourth`, `Last`, `Second` and `Third`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **display_name** | string  | - | 
| **email_address_sender** | string  | - | 
| **email_addresses** | string  | - | 
| **email_subject** | string  | - | 
| **end_date** | datetime  | - | 
| **frequency** | string  | - | 
| **name** | string  | - | 
| **start_date** | datetime  | - | 
| **view_id** | string  | - | 
| **day_of_month** | string  | - | 
| **days_of_week** | string  | - | 
| **hour_of_day** | string  | - | 
| **message** | string  | - | 
| **weeks_of_month** | string  | - | 
| **id** | string  | The ID of the Azure Cost Management Scheduled Action. | 

## Example minimal hclt

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