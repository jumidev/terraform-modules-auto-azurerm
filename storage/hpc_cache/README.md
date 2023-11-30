# azurerm_hpc_cache

Manages a HPC Cache.~> **Note:** By request of the service team the provider no longer automatically registering the `Microsoft.StorageCache` Resource Provider for this resource. To register it you can run `az provider register --namespace 'Microsoft.StorageCache'`.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the HPC Cache. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group in which to create the HPC Cache. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure Region where the HPC Cache should be created. Changing this forces a new resource to be created. | 
| **var.cache_size_in_gb** | string | True | -  |  `3072`, `6144`, `12288`, `21623`, `24576`, `43246`, `49152`, `86491`  |  The size of the HPC Cache, in GB. Possible values are `3072`, `6144`, `12288`, `21623`, `24576`, `43246`, `49152` and `86491`. Changing this forces a new resource to be created. | 
| **var.subnet_id** | string | True | -  |  -  |  The ID of the Subnet for the HPC Cache. Changing this forces a new resource to be created. | 
| **var.sku_name** | string | True | -  |  `Standard_2G`, `Standard_4G`, `Standard_8G`, `Standard_L4_5G`, `Standard_L9G`, `Standard_L16G`  |  The SKU of HPC Cache to use. Possible values are (ReadWrite) - `Standard_2G`, `Standard_4G` `Standard_8G` or (ReadOnly) - `Standard_L4_5G`, `Standard_L9G`, and `Standard_L16G`. Changing this forces a new resource to be created. | 
| **var.mtu** | string | False | `1500`  |  -  |  The IPv4 maximum transmission unit configured for the subnet of the HPC Cache. Possible values range from 576 - 1500. Defaults to `1500`. | 
| **var.default_access_policy** | block | False | -  |  -  |  A `default_access_policy` block. | 
| **var.ntp_server** | string | False | `time.windows.com`  |  -  |  The NTP server IP Address or FQDN for the HPC Cache. Defaults to `time.windows.com`. | 
| **var.dns** | block | False | -  |  -  |  A `dns` block. | 
| **var.directory_active_directory** | block | False | -  |  -  |  A `directory_active_directory` block. | 
| **var.directory_flat_file** | block | False | -  |  -  |  A `directory_flat_file` block. | 
| **var.directory_ldap** | block | False | -  |  -  |  A `directory_ldap` block. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. Changing this forces a new resource to be created. | 
| **var.key_vault_key_id** | string | False | -  |  -  |  The ID of the Key Vault Key which should be used to encrypt the data in this HPC Cache. | 
| **var.automatically_rotate_key_to_latest_enabled** | bool | False | -  |  -  |  Specifies whether the HPC Cache automatically rotates Encryption Key to the latest version. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the HPC Cache. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **cache_size_in_gb** | string  | - | 
| **subnet_id** | string  | - | 
| **sku_name** | string  | - | 
| **mtu** | string  | - | 
| **default_access_policy** | block  | - | 
| **ntp_server** | string  | - | 
| **dns** | block  | - | 
| **directory_active_directory** | block  | - | 
| **directory_flat_file** | block  | - | 
| **directory_ldap** | block  | - | 
| **identity** | block  | - | 
| **key_vault_key_id** | string  | - | 
| **automatically_rotate_key_to_latest_enabled** | bool  | - | 
| **tags** | map  | - | 
| **id** | string  | The `id` of the HPC Cache. | 
| **identity** | block  | An `identity` block. | 
| **mount_addresses** | list  | A list of IP Addresses where the HPC Cache can be mounted. | 
| **principal_id** | string  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string  | The Tenant ID associated with this Managed Service Identity. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "storage/hpc_cache" 
}

inputs = {
   name = "name of hpc_cache" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   cache_size_in_gb = "cache_size_in_gb of hpc_cache" 
   subnet_id = "subnet_id of hpc_cache" 
   sku_name = "sku_name of hpc_cache" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```