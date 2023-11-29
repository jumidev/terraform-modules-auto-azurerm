# azurerm_source_control_token

Manages an App Service Source Control Token.~> **NOTE:** This resource can only manage the token for the user currently running Terraform. Managing tokens for another user is not supported by the service.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.type** | string | True | `Bitbucket`, `Dropbox`, `Github`, `OneDrive`  |  The Token type. Possible values include `Bitbucket`, `Dropbox`, `Github`, and `OneDrive`. | 
| **var.token** | string | True | -  |  The Access Token. | 
| **var.token_secret** | string | False | -  |  The Access Token Secret. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **type** | string  | - | 
| **token** | string  | - | 
| **token_secret** | string  | - | 
| **id** | string  | The ID of the App Service Source GitHub Token. | 