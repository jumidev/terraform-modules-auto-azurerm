# azurerm_new_relic_monitor

Manages an Azure Native New Relic Monitor.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "new_relic/new_relic_monitor" 
}

inputs = {
   name = "name of new_relic_monitor" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   plan = {
      example_plan = {
         effective_date = "..."   
      }
  
   }
 
   user = {
      example_user = {
         email = "..."   
         first_name = "..."   
         last_name = "..."   
         phone_number = "..."   
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

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name which should be used for this Azure Native New Relic Monitor. Changing this forces a new Azure Native New Relic Monitor to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  Specifies the name of the Resource Group where the Azure Native New Relic Monitor should exist. Changing this forces a new Azure Native New Relic Monitor to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the Azure Region where the Azure Native New Relic Monitor should exist. Changing this forces a new Azure Native New Relic Monitor to be created. | 
| **var.plan** | block | True | -  |  -  |  A `plan` block. Changing this forces a new Azure Native New Relic Monitor to be created. | 
| **var.user** | block | True | -  |  -  |  A `user` block. Changing this forces a new Azure Native New Relic Monitor to be created. | 
| **var.account_creation_source** | string | False | `LIFTR`  |  `LIFTR`, `NEWRELIC`  |  Specifies the source of account creation. Possible values are `LIFTR` and `NEWRELIC`. Defaults to `LIFTR`. Changing this forces a new Azure Native New Relic Monitor to be created. | 
| **var.account_id** | string | False | -  |  -  |  Specifies the account id. Changing this forces a new Azure Native New Relic Monitor to be created. | 
| **var.ingestion_key** | string | False | -  |  -  |  Specifies the ingestion key of account. Changing this forces a new Azure Native New Relic Monitor to be created. | 
| **var.organization_id** | string | False | -  |  -  |  Specifies the organization id. Changing this forces a new Azure Native New Relic Monitor to be created. | 
| **var.org_creation_source** | string | False | `LIFTR`  |  `LIFTR`, `NEWRELIC`  |  Specifies the source of org creation. Possible values are `LIFTR` and `NEWRELIC`. Defaults to `LIFTR`. Changing this forces a new Azure Native New Relic Monitor to be created. | 
| **var.user_id** | string | False | -  |  -  |  Specifies the user id. Changing this forces a new Azure Native New Relic Monitor to be created. | 

### `plan` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `effective_date` | datetime | Yes | - | Specifies the date when plan was applied. Changing this forces a new Azure Native New Relic Monitor to be created. |
| `billing_cycle` | string | No | MONTHLY | Specifies the billing cycles. Possible values are 'MONTHLY', 'WEEKLY' and 'YEARLY'. Defaults to 'MONTHLY'. Changing this forces a new Azure Native New Relic Monitor to be created. |
| `plan_id` | string | No | newrelic-pay-as-you-go-free-live | Specifies the plan id published by NewRelic. The only possible value is 'newrelic-pay-as-you-go-free-live'. Defaults to 'newrelic-pay-as-you-go-free-live'. Changing this forces a new Azure Native New Relic Monitor to be created. |
| `usage_type` | string | No | PAYG | Specifies the usage type. Possible values are 'COMMITTED' and 'PAYG'. Defaults to 'PAYG'. Changing this forces a new Azure Native New Relic Monitor to be created. |

### `user` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `email` | string | Yes | - | Specifies the user Email. Changing this forces a new Azure Native New Relic Monitor to be created. |
| `first_name` | string | Yes | - | Specifies the first name. Changing this forces a new Azure Native New Relic Monitor to be created. |
| `last_name` | string | Yes | - | Specifies the last name. Changing this forces a new Azure Native New Relic Monitor to be created. |
| `phone_number` | string | Yes | - | Specifies the contact phone number. Changing this forces a new Azure Native New Relic Monitor to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Azure Native New Relic Monitor. | 

Additionally, all variables are provided as outputs.
