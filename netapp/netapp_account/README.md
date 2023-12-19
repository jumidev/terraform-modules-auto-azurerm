# azurerm_netapp_account

Manages a NetApp Account.~> **NOTE:** Azure allows only one active directory can be joined to a single subscription at a time for NetApp Account.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "netapp/netapp_account"   
}

inputs = {
   name = "The name of the NetApp Account"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
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
| **name** | string |  The name of the NetApp Account. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group where the NetApp Account should be created. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **active_directory** | [block](#active_directory-block-structure) |  A `active_directory` block. | 
| **tags** | map |  A mapping of tags to assign to the resource. | 

### `active_directory` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `dns_servers` | list | Yes | - | A list of DNS server IP addresses for the Active Directory domain. Only allows 'IPv4' address. |
| `domain` | string | Yes | - | The name of the Active Directory domain. |
| `smb_server_name` | string | Yes | - | The NetBIOS name which should be used for the NetApp SMB Server, which will be registered as a computer account in the AD and used to mount volumes. |
| `username` | string | Yes | - | The Username of Active Directory Domain Administrator. |
| `password` | string | Yes | - | The password associated with the 'username'. |
| `organizational_unit` | string | No | - | The Organizational Unit (OU) within the Active Directory Domain. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the NetApp Account. | 

Additionally, all variables are provided as outputs.
