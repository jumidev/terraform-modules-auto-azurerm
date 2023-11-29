# azurerm_blueprint_assignment

Manages a Blueprint Assignment resource~> **NOTE:** Azure Blueprints are in Preview and potentially subject to breaking change without notice.~> **NOTE:** Azure Blueprint Assignments can only be applied to Subscriptions.  Assignments to Management Groups is not currently supported by the service or by Terraform.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Blueprint Assignment. Changing this forces a new resource to be created. | 
| **target_subscription_id** | string | True | -  |  -  | The Subscription ID the Blueprint Published Version is to be applied to. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The Azure location of the Assignment. Changing this forces a new resource to be created. | 
| **identity** | block | True | -  |  -  | An `identity` block. | 
| **version_id** | string | True | -  |  -  | The ID of the Published Version of the blueprint to be assigned. | 
| **parameter_values** | string | False | -  |  -  | a JSON string to supply Blueprint Assignment parameter values. | 
| **resource_groups** | string | False | -  |  -  | a JSON string to supply the Blueprint Resource Group information. | 
| **lock_mode** | string | False | `None`  |  -  | The locking mode of the Blueprint Assignment. One of `None` (Default), `AllResourcesReadOnly`, or `AllResourcesDoNotDelete`. Defaults to `None`. | 
| **lock_exclude_principals** | list | False | -  |  -  | a list of up to 5 Principal IDs that are permitted to bypass the locks applied by the Blueprint. | 
| **lock_exclude_actions** | list | False | -  |  -  | a list of up to 200 actions that are permitted to bypass the locks applied by the Blueprint. | 

