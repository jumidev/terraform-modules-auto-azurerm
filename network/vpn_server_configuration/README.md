# azurerm_vpn_server_configuration

Manages a VPN Server Configuration.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "network/vpn_server_configuration" 
}

inputs = {
   name = "name of vpn_server_configuration" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   vpn_authentication_types = "vpn_authentication_types of vpn_server_configuration" 
   azure_active_directory_authentication = "azure_active_directory_authentication of vpn_server_configuration" 
   client_root_certificate = "client_root_certificate of vpn_server_configuration" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The Name which should be used for this VPN Server Configuration. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The Name of the Resource Group in which this VPN Server Configuration should be created. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  The Azure location where this VPN Server Configuration should be created. Changing this forces a new resource to be created. | 
| **var.vpn_authentication_types** | string | True | `AAD`, `Certificate`, `Radius`  |  A list of Authentication Types applicable for this VPN Server Configuration. Possible values are `AAD` (Azure Active Directory), `Certificate` and `Radius`. | 
| **var.ipsec_policy** | block | False | -  |  A `ipsec_policy` block. | 
| **var.vpn_protocols** | string | False | `IkeV2`, `OpenVPN`  |  A list of VPN Protocols to use for this Server Configuration. Possible values are `IkeV2` and `OpenVPN`. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 
| **var.azure_active_directory_authentication** | block | True | -  |  A `azure_active_directory_authentication` block. | 
| **var.client_root_certificate** | block | True | -  |  One or more `client_root_certificate` blocks. | 
| **var.client_revoked_certificate** | block | False | -  |  One or more `client_revoked_certificate` blocks. | 
| **var.radius** | block | False | -  |  A `radius` block. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the VPN Server Configuration. | 

Additionally, all variables are provided as outputs.
