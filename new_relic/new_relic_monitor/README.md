# azurerm_new_relic_monitor

Manages an Azure Native New Relic Monitor.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name which should be used for this Azure Native New Relic Monitor. Changing this forces a new Azure Native New Relic Monitor to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group where the Azure Native New Relic Monitor should exist. Changing this forces a new Azure Native New Relic Monitor to be created. | 
| **location** | string | True | -  |  -  | Specifies the Azure Region where the Azure Native New Relic Monitor should exist. Changing this forces a new Azure Native New Relic Monitor to be created. | 
| **plan** | block | True | -  |  -  | A `plan` block. Changing this forces a new Azure Native New Relic Monitor to be created. | 
| **user** | block | True | -  |  -  | A `user` block. Changing this forces a new Azure Native New Relic Monitor to be created. | 
| **account_creation_source** | string | False | `LIFTR`  |  `LIFTR`, `NEWRELIC`  | Specifies the source of account creation. Possible values are `LIFTR` and `NEWRELIC`. Defaults to `LIFTR`. Changing this forces a new Azure Native New Relic Monitor to be created. | 
| **account_id** | string | False | -  |  -  | Specifies the account id. Changing this forces a new Azure Native New Relic Monitor to be created. | 
| **ingestion_key** | string | False | -  |  -  | Specifies the ingestion key of account. Changing this forces a new Azure Native New Relic Monitor to be created. | 
| **organization_id** | string | False | -  |  -  | Specifies the organization id. Changing this forces a new Azure Native New Relic Monitor to be created. | 
| **org_creation_source** | string | False | `LIFTR`  |  `LIFTR`, `NEWRELIC`  | Specifies the source of org creation. Possible values are `LIFTR` and `NEWRELIC`. Defaults to `LIFTR`. Changing this forces a new Azure Native New Relic Monitor to be created. | 
| **user_id** | string | False | -  |  -  | Specifies the user id. Changing this forces a new Azure Native New Relic Monitor to be created. | 

