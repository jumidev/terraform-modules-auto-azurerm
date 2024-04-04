# azurerm_active_directory_domain_service



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "active_directory_domain_services/active_directory_domain_service"   
}
inputs = {
   domain_name = "The Active Directory domain to use"   
   location = "${location}"   
   name = "The display name for your managed Active Directory Domain Service resource..."   
   initial_replica_set = {
      # subnet_id → set in component_inputs
   }   
   resource_group_name = "${resource_group}"   
   sku = "The SKU to use when provisioning the Domain Service resource..."   
}
component_inputs = {
   initial_replica_set.subnet_id = "path/to/subnet_component:id"   
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
| **domain_name** | string |  The Active Directory domain to use. See [official documentation](https://docs.microsoft.com/azure/active-directory-domain-services/tutorial-create-instance#create-a-managed-domain) for constraints and recommendations. Changing this forces a new resource to be created. | 
| **location** | string |  The Azure location where the Domain Service exists. Changing this forces a new resource to be created. | 
| **name** | string |  The display name for your managed Active Directory Domain Service resource. Changing this forces a new resource to be created. | 
| **initial_replica_set** | [block](#initial_replica_set-block-structure) |  An `initial_replica_set` block. The initial replica set inherits the same location as the Domain Service resource. | 
| **resource_group_name** | string |  The name of the Resource Group in which the Domain Service should exist. Changing this forces a new resource to be created. | 
| **sku** | string |  The SKU to use when provisioning the Domain Service resource. One of `Standard`, `Enterprise` or `Premium`. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **domain_configuration_type** | string |  -  |  `FullySynced`, `ResourceTrusting`  |  The configuration type of this Active Directory Domain. Possible values are `FullySynced` and `ResourceTrusting`. Changing this forces a new resource to be created. | 
| **filtered_sync_enabled** | bool |  `False`  |  -  |  Whether to enable group-based filtered sync (also called scoped synchronisation). Defaults to `false`. | 
| **secure_ldap** | [block](#secure_ldap-block-structure) |  -  |  -  |  A `secure_ldap` block. | 
| **notifications** | [block](#notifications-block-structure) |  -  |  -  |  A `notifications` block. | 
| **security** | [block](#security-block-structure) |  -  |  -  |  A `security` block. | 
| **tags** | map |  -  |  -  |  A mapping of tags assigned to the resource. | 

### `secure_ldap` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | Yes | - | Whether to enable secure LDAP for the managed domain. For more information, please see [official documentation on enabling LDAPS](https://docs.microsoft.com/azure/active-directory-domain-services/tutorial-configure-ldaps), paying particular attention to the section on network security to avoid unnecessarily exposing your service to Internet-borne bruteforce attacks. |
| `external_access_enabled` | bool | No | False | Whether to enable external access to LDAPS over the Internet. Defaults to 'false'. |
| `pfx_certificate` | string | Yes | - | The certificate/private key to use for LDAPS, as a base64-encoded TripleDES-SHA1 encrypted PKCS#12 bundle (PFX file). |
| `pfx_certificate_password` | string | Yes | - | The password to use for decrypting the PKCS#12 bundle (PFX file). |

### `initial_replica_set` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `subnet_id` | string | Yes | - | The ID of the subnet in which to place the initial replica set. Changing this forces a new resource to be created. |

### `notifications` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `additional_recipients` | list | No | - | A list of additional email addresses to notify when there are alerts in the managed domain. |
| `notify_dc_admins` | string | No | - | Whether to notify members of the _AAD DC Administrators_ group when there are alerts in the managed domain. |
| `notify_global_admins` | string | No | - | Whether to notify all Global Administrators when there are alerts in the managed domain. |

### `security` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `kerberos_armoring_enabled` | bool | No | False | Whether to enable Kerberos Armoring. Defaults to 'false'. |
| `kerberos_rc4_encryption_enabled` | bool | No | False | Whether to enable Kerberos RC4 Encryption. Defaults to 'false'. |
| `ntlm_v1_enabled` | bool | No | False | Whether to enable legacy NTLM v1 support. Defaults to 'false'. |
| `sync_kerberos_passwords` | bool | No | False | Whether to synchronize Kerberos password hashes to the managed domain. Defaults to 'false'. |
| `sync_ntlm_passwords` | bool | No | False | Whether to synchronize NTLM password hashes to the managed domain. Defaults to 'false'. |
| `sync_on_prem_passwords` | bool | No | False | Whether to synchronize on-premises password hashes to the managed domain. Defaults to 'false'. |
| `tls_v1_enabled` | bool | No | False | Whether to enable legacy TLS v1 support. Defaults to 'false'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **tls_v1_enabled** | bool | No  | Whether to enable legacy TLS v1 support. Defaults to `false`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | A unique ID for the replica set. | 
| **deployment_id** | string | No  | A unique ID for the managed domain deployment. | 
| **resource_id** | string | No  | The Azure resource ID for the domain service. | 
| **certificate_expiry** | string | No  | The expiry time of the certificate. | 
| **certificate_thumbprint** | string | No  | The thumbprint of the certificate. | 
| **public_certificate** | string | No  | The public certificate. | 
| **domain_controller_ip_addresses** | list | No  | A list of subnet IP addresses for the domain controllers in the initial replica set, typically two. | 
| **external_access_ip_address** | string | No  | The publicly routable IP address for the domain controllers in the initial replica set. | 
| **location** | string | No  | The Azure location in which the initialreplica set resides. | 
| **service_status** | string | No  | The current service status for the initial replica set. | 

Additionally, all variables are provided as outputs.
