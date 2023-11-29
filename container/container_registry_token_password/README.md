# azurerm_container_registry_token_password

Manages a Container Registry Token Password.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.container_registry_token_id** | string | True | The ID of the Container Registry Token that this Container Registry Token Password resides in. Changing this forces a new Container Registry Token Password to be created. | 
| **var.password1** | block | True | One `password` block. | 
| **var.password2** | block | False | One `password` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **container_registry_token_id** | string  | - | 
| **password1** | block  | - | 
| **password2** | block  | - | 
| **id** | string  | The ID of the Container Registry Token Password. | 
| **password1** | block  | One `password` block. | 
| **password2** | block  | One `password` block. | 
| **value** | string  | The value of the password (Sensitive). | 