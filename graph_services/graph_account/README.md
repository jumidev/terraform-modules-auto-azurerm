# azurerm_graph_account

Manages a Microsoft Graph Services Account.!> **NOTE:** This resource has been deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use [`azurerm_graph_services_account`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/graph_services_account) resource instead.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "graph_services/graph_account" 
}

inputs = {
   name = "name of graph_account" 
   resource_group_name = "${resource_group}" 
   application_id = "application_id of graph_account" 
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
| **name** | string |  Specifies the name of this Account. Changing this forces a new Account to be created. | 
| **resource_group_name** | string |  Specifies the name of the Resource Group within which this Account should exist. Changing this forces a new Account to be created. | 
| **application_id** | string |  Customer owned application ID. Changing this forces a new Account to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags which should be assigned to the Account. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Account. | 
| **billing_plan_id** | string | No  | Billing Plan Id. | 

Additionally, all variables are provided as outputs.
