# azurerm_active_directory_domain_service

Manages an Active Directory Domain Service.~> **Implementation Note:** Before using this resource, there must exist in your tenant a service principal for the Domain Services published application. This service principal cannot be easily managed by Terraform and it's recommended to create this manually, as it does not exist by default. See [official documentation](https://docs.microsoft.com/azure/active-directory-domain-services/powershell-create-instance#create-required-azure-ad-resources) for details.-> **Supported Modes:** At present this resource only supports **User Forest** mode and _not_ **Resource Forest** mode. [Read more](https://docs.microsoft.com/azure/active-directory-domain-services/concepts-resource-forest) about the different operation modes for this service.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "active_directory_domain_services/active_directory_domain_service" 
}

inputs = {
   domain_name = "domain_name of active_directory_domain_service" 
   location = "${location}" 
   name = "name of active_directory_domain_service" 
   initial_replica_set = "initial_replica_set of active_directory_domain_service" 
   resource_group_name = "${resource_group}" 
   sku = "sku of active_directory_domain_service" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.domain_name** | string | True | -  |  -  |  The Active Directory domain to use. See [official documentation](https://docs.microsoft.com/azure/active-directory-domain-services/tutorial-create-instance#create-a-managed-domain) for constraints and recommendations. Changing this forces a new resource to be created. | 
| **var.domain_configuration_type** | string | False | -  |  `FullySynced`, `ResourceTrusting`  |  The configuration type of this Active Directory Domain. Possible values are `FullySynced` and `ResourceTrusting`. Changing this forces a new resource to be created. | 
| **var.filtered_sync_enabled** | bool | False | `False`  |  -  |  Whether to enable group-based filtered sync (also called scoped synchronisation). Defaults to `false`. | 
| **var.secure_ldap** | block | False | -  |  -  |  A `secure_ldap` block. | 
| **var.location** | string | True | -  |  -  |  The Azure location where the Domain Service exists. Changing this forces a new resource to be created. | 
| **var.name** | string | True | -  |  -  |  The display name for your managed Active Directory Domain Service resource. Changing this forces a new resource to be created. | 
| **var.notifications** | block | False | -  |  -  |  A `notifications` block. | 
| **var.initial_replica_set** | block | True | -  |  -  |  An `initial_replica_set` block. The initial replica set inherits the same location as the Domain Service resource. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group in which the Domain Service should exist. Changing this forces a new resource to be created. | 
| **var.security** | block | False | -  |  -  |  A `security` block. | 
| **var.sku** | string | True | -  |  -  |  The SKU to use when provisioning the Domain Service resource. One of `Standard`, `Enterprise` or `Premium`. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags assigned to the resource. | 

### `secure_ldap` block structure

> `enabled` (bool): (REQUIRED) Whether to enable secure LDAP for the managed domain. For more information, please see [official documentation on enabling LDAPS](https://docs.microsoft.com/azure/active-directory-domain-services/tutorial-configure-ldaps), paying particular attention to the section on network security to avoid unnecessarily exposing your service to Internet-borne bruteforce attacks.\
> `external_access_enabled` (bool): Whether to enable external access to LDAPS over the Internet. Defaults to 'false'.\
> `pfx_certificate` (string): (REQUIRED) The certificate/private key to use for LDAPS, as a base64-encoded TripleDES-SHA1 encrypted PKCS#12 bundle (PFX file).\
> `pfx_certificate_password` (string): (REQUIRED) The password to use for decrypting the PKCS#12 bundle (PFX file).\

### `notifications` block structure

> `additional_recipients` (list): A list of additional email addresses to notify when there are alerts in the managed domain.\
> `notify_dc_admins` (string): Whether to notify members of the _AAD DC Administrators_ group when there are alerts in the managed domain.\
> `notify_global_admins` (string): Whether to notify all Global Administrators when there are alerts in the managed domain.\

### `initial_replica_set` block structure

> `subnet_id` (string): (REQUIRED) The ID of the subnet in which to place the initial replica set. Changing this forces a new resource to be created.\

### `security` block structure

> `kerberos_armoring_enabled` (bool): Whether to enable Kerberos Armoring. Defaults to 'false'.\
> `kerberos_rc4_encryption_enabled` (bool): Whether to enable Kerberos RC4 Encryption. Defaults to 'false'.\
> `ntlm_v1_enabled` (bool): Whether to enable legacy NTLM v1 support. Defaults to 'false'.\
> `sync_kerberos_passwords` (bool): Whether to synchronize Kerberos password hashes to the managed domain. Defaults to 'false'.\
> `sync_ntlm_passwords` (bool): Whether to synchronize NTLM password hashes to the managed domain. Defaults to 'false'.\
> `sync_on_prem_passwords` (bool): Whether to synchronize on-premises password hashes to the managed domain. Defaults to 'false'.\
> `tls_v1_enabled` (bool): Whether to enable legacy TLS v1 support. Defaults to 'false'.\



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
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
