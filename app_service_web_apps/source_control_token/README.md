# azurerm_source_control_token

Manages an App Service Source Control Token.~> **NOTE:** This resource can only manage the token for the user currently running Terraform. Managing tokens for another user is not supported by the service.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/source_control_token" 
}

inputs = {
   type = "type of source_control_token" 
   token = "token of source_control_token" 
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
| **type** | string |  `Bitbucket`, `Dropbox`, `Github`, `OneDrive`  |  The Token type. Possible values include `Bitbucket`, `Dropbox`, `Github`, and `OneDrive`. | 
| **token** | string |  -  |  The Access Token. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **token_secret** | string |  The Access Token Secret. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the App Service Source GitHub Token. | 

Additionally, all variables are provided as outputs.
