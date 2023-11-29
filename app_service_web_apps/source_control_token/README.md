# azurerm_source_control_token

Manages an App Service Source Control Token.~> **NOTE:** This resource can only manage the token for the user currently running Terraform. Managing tokens for another user is not supported by the service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **type** | string | True | -  |  `Bitbucket`, `Dropbox`, `Github`, `OneDrive`  | The Token type. Possible values include `Bitbucket`, `Dropbox`, `Github`, and `OneDrive`. | 
| **token** | string | True | -  |  -  | The Access Token. | 
| **token_secret** | string | False | -  |  -  | The Access Token Secret. | 

