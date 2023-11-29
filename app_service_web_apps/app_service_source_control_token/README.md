# azurerm_app_service_source_control_token

Manages an App Service source control token.!> **NOTE:** This resource has been deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use [`azurerm_service_plan`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/service_plan) resource instead.~> **NOTE:** Source Control Tokens are configured at the subscription level, not on each App Service - as such this can only be configured Subscription-wide

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.type** | string | True | `BitBucket`, `Dropbox`, `GitHub`, `OneDrive`  |  The source control type. Possible values are `BitBucket`, `Dropbox`, `GitHub` and `OneDrive`. | 
| **var.token** | string | True | -  |  The OAuth access token. | 
| **var.token_secret** | string | False | -  |  The OAuth access token secret. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **type** | string  | - | 
| **token** | string  | - | 
| **token_secret** | string  | - | 