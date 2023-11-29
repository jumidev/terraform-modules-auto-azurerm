# azurerm_graph_account

Manages a Microsoft Graph Services Account.!> **NOTE:** This resource has been deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use [`azurerm_graph_services_account`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/graph_services_account) resource instead.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of this Account. Changing this forces a new Account to be created. | 
| **var.resource_group_name** | string | True | Specifies the name of the Resource Group within which this Account should exist. Changing this forces a new Account to be created. | 
| **var.application_id** | string | True | Customer owned application ID. Changing this forces a new Account to be created. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Account. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **application_id** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Account. | 
| **billing_plan_id** | string  | Billing Plan Id. | 