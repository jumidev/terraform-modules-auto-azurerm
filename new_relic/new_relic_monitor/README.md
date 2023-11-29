# azurerm_new_relic_monitor

Manages an Azure Native New Relic Monitor.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name which should be used for this Azure Native New Relic Monitor. Changing this forces a new Azure Native New Relic Monitor to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group where the Azure Native New Relic Monitor should exist. Changing this forces a new Azure Native New Relic Monitor to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the Azure Region where the Azure Native New Relic Monitor should exist. Changing this forces a new Azure Native New Relic Monitor to be created. | 
| **var.plan** | block | True | -  |  -  | A `plan` block. Changing this forces a new Azure Native New Relic Monitor to be created. | 
| **var.user** | block | True | -  |  -  | A `user` block. Changing this forces a new Azure Native New Relic Monitor to be created. | 
| **var.account_creation_source** | string | False | `LIFTR`  |  `LIFTR`, `NEWRELIC`  | Specifies the source of account creation. Possible values are `LIFTR` and `NEWRELIC`. Defaults to `LIFTR`. Changing this forces a new Azure Native New Relic Monitor to be created. | 
| **var.account_id** | string | False | -  |  -  | Specifies the account id. Changing this forces a new Azure Native New Relic Monitor to be created. | 
| **var.ingestion_key** | string | False | -  |  -  | Specifies the ingestion key of account. Changing this forces a new Azure Native New Relic Monitor to be created. | 
| **var.organization_id** | string | False | -  |  -  | Specifies the organization id. Changing this forces a new Azure Native New Relic Monitor to be created. | 
| **var.org_creation_source** | string | False | `LIFTR`  |  `LIFTR`, `NEWRELIC`  | Specifies the source of org creation. Possible values are `LIFTR` and `NEWRELIC`. Defaults to `LIFTR`. Changing this forces a new Azure Native New Relic Monitor to be created. | 
| **var.user_id** | string | False | -  |  -  | Specifies the user id. Changing this forces a new Azure Native New Relic Monitor to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **plan** | block  | - | 
| **user** | block  | - | 
| **account_creation_source** | string  | - | 
| **account_id** | string  | - | 
| **ingestion_key** | string  | - | 
| **organization_id** | string  | - | 
| **org_creation_source** | string  | - | 
| **user_id** | string  | - | 
| **id** | string  | The ID of the Azure Native New Relic Monitor. | 