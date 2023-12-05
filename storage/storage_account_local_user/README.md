# azurerm_storage_account_local_user

Manages a Storage Account Local User.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "storage/storage_account_local_user"   
}

inputs = {
   name = "name of storage_account_local_user"   
   # storage_account_id → set in tfstate_inputs
}

tfstate_inputs = {
   storage_account_id = "path/to/storage_account_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name which should be used for this Storage Account Local User. Changing this forces a new Storage Account Local User to be created. | 
| **storage_account_id** | string |  The ID of the Storage Account that this Storage Account Local User resides in. Changing this forces a new Storage Account Local User to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **home_directory** | string |  -  |  The home directory of the Storage Account Local User. | 
| **permission_scope** | [block](#permission_scope-block-structure) |  -  |  One or more `permission_scope` blocks. | 
| **ssh_authorized_key** | [block](#ssh_authorized_key-block-structure) |  -  |  One or more `ssh_authorized_key` blocks. | 
| **ssh_key_enabled** | bool |  `False`  |  Specifies whether SSH Key Authentication is enabled. Defaults to `false`. | 
| **ssh_password_enabled** | bool |  `False`  |  Specifies whether SSH Password Authentication is enabled. Defaults to `false`. | 

### `permission_scope` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `permissions` | [block](#permission_scope-block-structure) | Yes | - | A 'permissions' block. |
| `resource_name` | string | Yes | - | The container name (when 'service' is set to 'blob') or the file share name (when 'service' is set to 'file'), used by the Storage Account Local User. |
| `service` | string | Yes | - | The storage service used by this Storage Account Local User. Possible values are 'blob' and 'file'. |

### `permissions` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `create` | bool | No | False | Specifies if the Local User has the create permission for this scope. Defaults to 'false'. |
| `delete` | bool | No | False | Specifies if the Local User has the delete permission for this scope. Defaults to 'false'. |
| `list` | bool | No | False | Specifies if the Local User has the list permission for this scope. Defaults to 'false'. |
| `read` | bool | No | False | Specifies if the Local User has the read permission for this scope. Defaults to 'false'. |
| `write` | bool | No | False | Specifies if the Local User has the write permission for this scope. Defaults to 'false'. |

### `ssh_authorized_key` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key` | string | Yes | - | The public key value of this SSH authorized key. |
| `description` | string | No | - | The description of this SSH authorized key. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Storage Account Local User. | 
| **password** | string | Yes  | The value of the password, which is only available when `ssh_password_enabled` is set to `true`. | 
| **sid** | string | No  | The unique Security Identifier of this Storage Account Local User. | 

Additionally, all variables are provided as outputs.
