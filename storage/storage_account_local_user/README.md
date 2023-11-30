# azurerm_storage_account_local_user

Manages a Storage Account Local User.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "storage/storage_account_local_user" 
}

inputs = {
   name = "name of storage_account_local_user" 
   storage_account_id = "storage_account_id of storage_account_local_user" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

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

### `permission_scope` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `permissions` | block | Yes | - | A 'permissions' block. |
| `resource_name` | string | Yes | - | The container name (when 'service' is set to 'blob') or the file share name (when 'service' is set to 'file'), used by the Storage Account Local User. |
| `service` | string | Yes | - | The storage service used by this Storage Account Local User. Possible values are 'blob' and 'file'. |

### `ssh_authorized_key` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key` | string | Yes | - | The public key value of this SSH authorized key. |
| `description` | string | No | - | The description of this SSH authorized key. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Storage Account Local User. | 
| **password** | string | No  | The value of the password, which is only available when `ssh_password_enabled` is set to `true`. | 
| **sid** | string | No  | The unique Security Identifier of this Storage Account Local User. | 

Additionally, all variables are provided as outputs.
