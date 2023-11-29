# azurerm_container_registry_token_password

Manages a Container Registry Token Password.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **container_registry_token_id** | string | True | -  |  -  | The ID of the Container Registry Token that this Container Registry Token Password resides in. Changing this forces a new Container Registry Token Password to be created. | 
| **password1** | block | True | -  |  -  | One `password` block. | 
| **password2** | block | False | -  |  -  | One `password` block. | 

