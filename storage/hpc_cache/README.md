# azurerm_hpc_cache

Manages a HPC Cache.~> **Note:** By request of the service team the provider no longer automatically registering the `Microsoft.StorageCache` Resource Provider for this resource. To register it you can run `az provider register --namespace 'Microsoft.StorageCache'`.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "storage/hpc_cache"   
}

inputs = {
   name = "The name of the HPC Cache"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   cache_size_in_gb = "The size of the HPC Cache, in GB"   
   # subnet_id → set in tfstate_inputs
   sku_name = "The SKU of HPC Cache to use"   
}

tfstate_inputs = {
   subnet_id = "path/to/subnet_component:id"   
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
| **name** | string |  -  |  The name of the HPC Cache. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group in which to create the HPC Cache. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specifies the supported Azure Region where the HPC Cache should be created. Changing this forces a new resource to be created. | 
| **cache_size_in_gb** | string |  `3072`, `6144`, `12288`, `21623`, `24576`, `43246`, `49152`, `86491`  |  The size of the HPC Cache, in GB. Possible values are `3072`, `6144`, `12288`, `21623`, `24576`, `43246`, `49152` and `86491`. Changing this forces a new resource to be created. | 
| **subnet_id** | string |  -  |  The ID of the Subnet for the HPC Cache. Changing this forces a new resource to be created. | 
| **sku_name** | string |  `Standard_2G`, `Standard_4G`, `Standard_8G`, `Standard_L4_5G`, `Standard_L9G`, `Standard_L16G`  |  The SKU of HPC Cache to use. Possible values are (ReadWrite) - `Standard_2G`, `Standard_4G` `Standard_8G` or (ReadOnly) - `Standard_L4_5G`, `Standard_L9G`, and `Standard_L16G`. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **mtu** | string |  `1500`  |  The IPv4 maximum transmission unit configured for the subnet of the HPC Cache. Possible values range from 576 - 1500. Defaults to `1500`. | 
| **default_access_policy** | [block](#default_access_policy-block-structure) |  -  |  A `default_access_policy` block. | 
| **ntp_server** | string |  `time.windows.com`  |  The NTP server IP Address or FQDN for the HPC Cache. Defaults to `time.windows.com`. | 
| **dns** | [block](#dns-block-structure) |  -  |  A `dns` block. | 
| **directory_active_directory** | [block](#directory_active_directory-block-structure) |  -  |  A `directory_active_directory` block. | 
| **directory_flat_file** | [block](#directory_flat_file-block-structure) |  -  |  A `directory_flat_file` block. | 
| **directory_ldap** | [block](#directory_ldap-block-structure) |  -  |  A `directory_ldap` block. | 
| **identity** | [block](#identity-block-structure) |  -  |  An `identity` block. Changing this forces a new resource to be created. | 
| **key_vault_key_id** | string |  -  |  The ID of the Key Vault Key which should be used to encrypt the data in this HPC Cache. | 
| **automatically_rotate_key_to_latest_enabled** | bool |  -  |  Specifies whether the HPC Cache automatically rotates Encryption Key to the latest version. | 
| **tags** | map |  -  |  A mapping of tags to assign to the HPC Cache. | 

### `directory_ldap` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `server` | string | Yes | - | The FQDN or IP address of the LDAP server. |
| `base_dn` | string | Yes | - | The base distinguished name (DN) for the LDAP domain. |
| `encrypted` | bool | No | - | Whether the LDAP connection should be encrypted? |
| `certificate_validation_uri` | string | No | - | The URI of the CA certificate to validate the LDAP secure connection. |
| `download_certificate_automatically` | string | No | - | Whether the certificate should be automatically downloaded. This can be set to 'true' only when 'certificate_validation_uri' is provided. |
| `bind` | [block](#bind-block-structure) | No | - | A 'bind' block. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this HPC Cache. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). Changing this forces a new resource to be created. |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this HPC Cache. Changing this forces a new resource to be created. |

### `directory_flat_file` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `group_file_uri` | string | Yes | - | The URI of the file containing group information ('/etc/group' file format in Unix-like OS). |
| `password_file_uri` | string | Yes | - | The URI of the file containing user information ('/etc/passwd' file format in Unix-like OS). |

### `directory_active_directory` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `dns_primary_ip` | string | Yes | - | The primary DNS IP address used to resolve the Active Directory domain controller's FQDN. |
| `domain_name` | string | Yes | - | The fully qualified domain name of the Active Directory domain controller. |
| `cache_netbios_name` | string | Yes | - | The NetBIOS name to assign to the HPC Cache when it joins the Active Directory domain as a server. |
| `domain_netbios_name` | string | Yes | - | The Active Directory domain's NetBIOS name. |
| `username` | string | Yes | - | The username of the Active Directory domain administrator. |
| `password` | string | Yes | - | The password of the Active Directory domain administrator. |
| `dns_secondary_ip` | string | No | - | The secondary DNS IP address used to resolve the Active Directory domain controller's FQDN. |

### `default_access_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `access_rule` | list | Yes | - | One or more 'access_rule' blocks (up to three). |

### `dns` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `servers` | list | Yes | - | A list of DNS servers for the HPC Cache. At most three IP(s) are allowed to set. |
| `search_domain` | string | No | - | The DNS search domain for the HPC Cache. |

### `bind` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `password` | string | Yes | - | The Bind password to be used in the secure LDAP connection. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The `id` of the HPC Cache. | 
| **identity** | block | No  | An `identity` block. | 
| **mount_addresses** | string | No  | A list of IP Addresses where the HPC Cache can be mounted. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
