# azurerm_storage_account_local_user

Manages a Storage Account Local User.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Storage Account Local User. Changing this forces a new Storage Account Local User to be created. | 
| **storage_account_id** | string | True | -  |  -  | The ID of the Storage Account that this Storage Account Local User resides in. Changing this forces a new Storage Account Local User to be created. | 
| **home_directory** | string | False | -  |  -  | The home directory of the Storage Account Local User. | 
| **permission_scope** | block | False | -  |  -  | One or more `permission_scope` blocks. | 
| **ssh_authorized_key** | block | False | -  |  -  | One or more `ssh_authorized_key` blocks. | 
| **ssh_key_enabled** | bool | False | `False`  |  -  | Specifies whether SSH Key Authentication is enabled. Defaults to `false`. | 
| **ssh_password_enabled** | bool | False | `False`  |  -  | Specifies whether SSH Password Authentication is enabled. Defaults to `false`. | 

