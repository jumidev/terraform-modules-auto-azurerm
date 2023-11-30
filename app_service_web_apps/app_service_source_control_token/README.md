# azurerm_app_service_source_control_token

Manages an App Service source control token.!> **NOTE:** This resource has been deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use [`azurerm_service_plan`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/service_plan) resource instead.~> **NOTE:** Source Control Tokens are configured at the subscription level, not on each App Service - as such this can only be configured Subscription-wide

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/app_service_source_control_token" 
}

inputs = {
   type = "type of app_service_source_control_token" 
   token = "token of app_service_source_control_token" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.type** | string |  `BitBucket`, `Dropbox`, `GitHub`, `OneDrive`  |  The source control type. Possible values are `BitBucket`, `Dropbox`, `GitHub` and `OneDrive`. | 
| **var.token** | string |  -  |  The OAuth access token. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.token_secret** | string |  The OAuth access token secret. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |

Additionally, all variables are provided as outputs.
