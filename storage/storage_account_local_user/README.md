# azurerm_storage_account_local_user

Manages a Storage Account Local User.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Storage Account Local User. Changing this forces a new Storage Account Local User to be created. | 
| **var.storage_account_id** | string | True | -  |  The ID of the Storage Account that this Storage Account Local User resides in. Changing this forces a new Storage Account Local User to be created. | 
| **var.home_directory** | string | False | -  |  The home directory of the Storage Account Local User. | 
| **var.permission_scope** | block | False | -  |  One or more `permission_scope` blocks. | 
| **var.ssh_authorized_key** | block | False | -  |  One or more `ssh_authorized_key` blocks. | 
| **var.ssh_key_enabled** | bool | False | `False`  |  Specifies whether SSH Key Authentication is enabled. Defaults to `false`. | 
| **var.ssh_password_enabled** | bool | False | `False`  |  Specifies whether SSH Password Authentication is enabled. Defaults to `false`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **storage_account_id** | string  | - | 
| **home_directory** | string  | - | 
| **permission_scope** | block  | - | 
| **ssh_authorized_key** | block  | - | 
| **ssh_key_enabled** | bool  | - | 
| **ssh_password_enabled** | bool  | - | 
| **id** | string  | The ID of the Storage Account Local User. | 
| **password** | string  | The value of the password, which is only available when `ssh_password_enabled` is set to `true`. | 
| **sid** | string  | The unique Security Identifier of this Storage Account Local User. | 