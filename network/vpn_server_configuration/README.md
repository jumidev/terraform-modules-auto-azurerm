# azurerm_vpn_server_configuration

Manages a VPN Server Configuration.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The Name which should be used for this VPN Server Configuration. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The Name of the Resource Group in which this VPN Server Configuration should be created. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The Azure location where this VPN Server Configuration should be created. Changing this forces a new resource to be created. | 
| **vpn_authentication_types** | string | True | -  |  `AAD`, `Certificate`, `Radius`  | A list of Authentication Types applicable for this VPN Server Configuration. Possible values are `AAD` (Azure Active Directory), `Certificate` and `Radius`. | 
| **ipsec_policy** | block | False | -  |  -  | A `ipsec_policy` block. | 
| **vpn_protocols** | string | False | -  |  `IkeV2`, `OpenVPN`  | A list of VPN Protocols to use for this Server Configuration. Possible values are `IkeV2` and `OpenVPN`. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 
| **azure_active_directory_authentication** | block | True | -  |  -  | A `azure_active_directory_authentication` block. | 
| **client_root_certificate** | block | True | -  |  -  | One or more `client_root_certificate` blocks. | 
| **client_revoked_certificate** | block | False | -  |  -  | One or more `client_revoked_certificate` blocks. | 
| **radius** | block | False | -  |  -  | A `radius` block. | 

