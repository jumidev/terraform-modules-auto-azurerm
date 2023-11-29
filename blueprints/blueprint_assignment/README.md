# azurerm_blueprint_assignment

Manages a Blueprint Assignment resource~> **NOTE:** Azure Blueprints are in Preview and potentially subject to breaking change without notice.~> **NOTE:** Azure Blueprint Assignments can only be applied to Subscriptions.  Assignments to Management Groups is not currently supported by the service or by Terraform.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the Blueprint Assignment. Changing this forces a new resource to be created. | 
| **var.target_subscription_id** | string | True | -  |  -  | The Subscription ID the Blueprint Published Version is to be applied to. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | The Azure location of the Assignment. Changing this forces a new resource to be created. | 
| **var.identity** | block | True | -  |  -  | An `identity` block. | 
| **var.version_id** | string | True | -  |  -  | The ID of the Published Version of the blueprint to be assigned. | 
| **var.parameter_values** | string | False | -  |  -  | a JSON string to supply Blueprint Assignment parameter values. | 
| **var.resource_groups** | string | False | -  |  -  | a JSON string to supply the Blueprint Resource Group information. | 
| **var.lock_mode** | string | False | `None`  |  -  | The locking mode of the Blueprint Assignment. One of `None` (Default), `AllResourcesReadOnly`, or `AllResourcesDoNotDelete`. Defaults to `None`. | 
| **var.lock_exclude_principals** | list | False | -  |  -  | a list of up to 5 Principal IDs that are permitted to bypass the locks applied by the Blueprint. | 
| **var.lock_exclude_actions** | list | False | -  |  -  | a list of up to 200 actions that are permitted to bypass the locks applied by the Blueprint. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **target_subscription_id** | string  | - | 
| **location** | string  | - | 
| **identity** | block  | - | 
| **version_id** | string  | - | 
| **parameter_values** | string  | - | 
| **resource_groups** | string  | - | 
| **lock_mode** | string  | - | 
| **lock_exclude_principals** | list  | - | 
| **lock_exclude_actions** | list  | - | 
| **id** | string  | The ID of the Blueprint Assignment | 
| **description** | string  | The Description on the Blueprint | 
| **display_name** | string  | The display name of the blueprint | 
| **blueprint_name** | string  | The name of the blueprint assigned | 