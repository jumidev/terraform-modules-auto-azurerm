# azurerm_blueprint_assignment

Manages a Blueprint Assignment resource~> **NOTE:** Azure Blueprints are in Preview and potentially subject to breaking change without notice.~> **NOTE:** Azure Blueprint Assignments can only be applied to Subscriptions.  Assignments to Management Groups is not currently supported by the service or by Terraform.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "blueprints/blueprint_assignment" 
}

inputs = {
   name = "name of blueprint_assignment" 
   target_subscription_id = "target_subscription_id of blueprint_assignment" 
   location = "${location}" 
   identity = {
      example_identity = {
         type = "..."   
      }
  
   }
 
   version_id = "version_id of blueprint_assignment" 
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
| **name** | string |  The name of the Blueprint Assignment. Changing this forces a new resource to be created. | 
| **target_subscription_id** | string |  The Subscription ID the Blueprint Published Version is to be applied to. Changing this forces a new resource to be created. | 
| **location** | string |  The Azure location of the Assignment. Changing this forces a new resource to be created. | 
| **identity** | [block](#identity-block-structure) |  An `identity` block. | 
| **version_id** | string |  The ID of the Published Version of the blueprint to be assigned. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **parameter_values** | string |  -  |  a JSON string to supply Blueprint Assignment parameter values. | 
| **resource_groups** | string |  -  |  a JSON string to supply the Blueprint Resource Group information. | 
| **lock_mode** | string |  `None`  |  The locking mode of the Blueprint Assignment. One of `None` (Default), `AllResourcesReadOnly`, or `AllResourcesDoNotDelete`. Defaults to `None`. | 
| **lock_exclude_principals** | list |  -  |  a list of up to 5 Principal IDs that are permitted to bypass the locks applied by the Blueprint. | 
| **lock_exclude_actions** | list |  -  |  a list of up to 200 actions that are permitted to bypass the locks applied by the Blueprint. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Blueprint. Possible values are 'SystemAssigned' and 'UserAssigned'. |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Blueprint. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Blueprint Assignment | 
| **description** | string | No  | The Description on the Blueprint | 
| **display_name** | string | No  | The display name of the blueprint | 
| **blueprint_name** | string | No  | The name of the blueprint assigned | 

Additionally, all variables are provided as outputs.
