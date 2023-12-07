# azurerm_vpn_server_configuration

Manages a VPN Server Configuration.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/vpn_server_configuration"   
}

inputs = {
   name = "The Name which should be used for this VPN Server Configuration..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   vpn_authentication_types = "A list of Authentication Types applicable for this VPN Server Configuration..."   
   azure_active_directory_authentication = {
      audience = "..."      
      issuer = "..."      
      tenant = "..."      
   }
   
   client_root_certificate = {
      this_client_root_certificate = {
         name = "..."         
         thumbprint = "..."         
      }
      
   }
   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The Name which should be used for this VPN Server Configuration. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The Name of the Resource Group in which this VPN Server Configuration should be created. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  The Azure location where this VPN Server Configuration should be created. Changing this forces a new resource to be created. | 
| **vpn_authentication_types** | string |  `AAD`, `Certificate`, `Radius`  |  A list of Authentication Types applicable for this VPN Server Configuration. Possible values are `AAD` (Azure Active Directory), `Certificate` and `Radius`. | 
| **azure_active_directory_authentication** | [block](#azure_active_directory_authentication-block-structure) |  -  |  A `azure_active_directory_authentication` block. | 
| **client_root_certificate** | [block](#client_root_certificate-block-structure) |  -  |  One or more `client_root_certificate` blocks. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **ipsec_policy** | [block](#ipsec_policy-block-structure) |  -  |  A `ipsec_policy` block. | 
| **vpn_protocols** | string |  `IkeV2`, `OpenVPN`  |  A list of VPN Protocols to use for this Server Configuration. Possible values are `IkeV2` and `OpenVPN`. | 
| **tags** | map |  -  |  A mapping of tags to assign to the resource. | 
| **client_revoked_certificate** | [block](#client_revoked_certificate-block-structure) |  -  |  One or more `client_revoked_certificate` blocks. | 
| **radius** | [block](#radius-block-structure) |  -  |  A `radius` block. | 

### `ipsec_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `dh_group` | string | Yes | - | The DH Group, used in IKE Phase 1. Possible values include 'DHGroup1', 'DHGroup2', 'DHGroup14', 'DHGroup24', 'DHGroup2048', 'ECP256', 'ECP384' and 'None'. |
| `ike_encryption` | string | Yes | - | The IKE encryption algorithm, used for IKE Phase 2. Possible values include 'AES128', 'AES192', 'AES256', 'DES', 'DES3', 'GCMAES128' and 'GCMAES256'. |
| `ike_integrity` | string | Yes | - | The IKE encryption integrity algorithm, used for IKE Phase 2. Possible values include 'GCMAES128', 'GCMAES256', 'MD5', 'SHA1', 'SHA256' and 'SHA384'. |
| `ipsec_encryption` | string | Yes | - | The IPSec encryption algorithm, used for IKE phase 1. Possible values include 'AES128', 'AES192', 'AES256', 'DES', 'DES3', 'GCMAES128', 'GCMAES192', 'GCMAES256' and 'None'. |
| `ipsec_integrity` | string | Yes | - | The IPSec integrity algorithm, used for IKE phase 1. Possible values include 'GCMAES128', 'GCMAES192', 'GCMAES256', 'MD5', 'SHA1' and 'SHA256'. |
| `pfs_group` | string | Yes | - | The Pfs Group, used in IKE Phase 2. Possible values include 'ECP256', 'ECP384', 'PFS1', 'PFS2', 'PFS14', 'PFS24', 'PFS2048', 'PFSMM' and 'None'. |
| `sa_lifetime_seconds` | int | Yes | - | The IPSec Security Association lifetime in seconds for a Site-to-Site VPN tunnel. |
| `sa_data_size_kilobytes` | string | Yes | - | The IPSec Security Association payload size in KB for a Site-to-Site VPN tunnel. |

### `client_root_certificate` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | A name used to uniquely identify this certificate. |
| `thumbprint` | string | Yes | - | The Thumbprint of the Certificate. |

### `radius` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | A name used to uniquely identify this certificate. |
| `thumbprint` | string | Yes | - | The Thumbprint of the Certificate. |

### `azure_active_directory_authentication` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `audience` | string | Yes | - | The Audience which should be used for authentication. |
| `issuer` | string | Yes | - | The Issuer which should be used for authentication. |
| `tenant` | string | Yes | - | The Tenant which should be used for authentication. |

### `client_revoked_certificate` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | A name used to uniquely identify this certificate. |
| `thumbprint` | string | Yes | - | The Thumbprint of the Certificate. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the VPN Server Configuration. | 

Additionally, all variables are provided as outputs.
