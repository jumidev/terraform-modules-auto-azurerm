# azurerm_netapp_account

Manages a NetApp Account.~> **NOTE:** Azure allows only one active directory can be joined to a single subscription at a time for NetApp Account.## NetApp Account Usage```hclresource "azurerm_resource_group" "example" {name     = "example-resources"location = "West Europe"}resource "azurerm_netapp_account" "example" {name                = "example-netapp"resource_group_name = azurerm_resource_group.example.namelocation            = azurerm_resource_group.example.locationactive_directory {username            = "aduser"password            = "aduserpwd"smb_server_name     = "SMBSERVER"dns_servers         = ["1.2.3.4"]domain              = "westcentralus.com"organizational_unit = "OU=FirstLevel"}}```

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "netapp/netapp_account" 
}

inputs = {
   name = "name of netapp_account" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the NetApp Account. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group where the NetApp Account should be created. Changing this forces a new resource to be created. | 
| **var.location** | string | True | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.active_directory** | block | False | A `active_directory` block. | 
| `active_directory` block structure: || 
|   dns_servers (list): (REQUIRED) A list of DNS server IP addresses for the Active Directory domain. Only allows 'IPv4' address. ||
|   domain (string): (REQUIRED) The name of the Active Directory domain. ||
|   smb_server_name (string): (REQUIRED) The NetBIOS name which should be used for the NetApp SMB Server, which will be registered as a computer account in the AD and used to mount volumes. ||
|   username (string): (REQUIRED) The Username of Active Directory Domain Administrator. ||
|   password (string): (REQUIRED) The password associated with the 'username'. ||
|   organizational_unit (string): The Organizational Unit (OU) within the Active Directory Domain. ||
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the NetApp Account. | 

Additionally, all variables are provided as outputs.
