# azurerm_active_directory_domain_service

Manages an Active Directory Domain Service.~> **Implementation Note:** Before using this resource, there must exist in your tenant a service principal for the Domain Services published application. This service principal cannot be easily managed by Terraform and it's recommended to create this manually, as it does not exist by default. See [official documentation](https://docs.microsoft.com/azure/active-directory-domain-services/powershell-create-instance#create-required-azure-ad-resources) for details.-> **Supported Modes:** At present this resource only supports **User Forest** mode and _not_ **Resource Forest** mode. [Read more](https://docs.microsoft.com/azure/active-directory-domain-services/concepts-resource-forest) about the different operation modes for this service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **domain_name** | string | True | -  |  -  | The Active Directory domain to use. See [official documentation](https://docs.microsoft.com/azure/active-directory-domain-services/tutorial-create-instance#create-a-managed-domain) for constraints and recommendations. Changing this forces a new resource to be created. | 
| **domain_configuration_type** | string | False | -  |  `FullySynced`, `ResourceTrusting`  | The configuration type of this Active Directory Domain. Possible values are `FullySynced` and `ResourceTrusting`. Changing this forces a new resource to be created. | 
| **filtered_sync_enabled** | bool | False | `False`  |  -  | Whether to enable group-based filtered sync (also called scoped synchronisation). Defaults to `false`. | 
| **secure_ldap** | block | False | -  |  -  | A `secure_ldap` block. | 
| **location** | string | True | -  |  -  | The Azure location where the Domain Service exists. Changing this forces a new resource to be created. | 
| **name** | string | True | -  |  -  | The display name for your managed Active Directory Domain Service resource. Changing this forces a new resource to be created. | 
| **notifications** | block | False | -  |  -  | A `notifications` block. | 
| **initial_replica_set** | block | True | -  |  -  | An `initial_replica_set` block. The initial replica set inherits the same location as the Domain Service resource. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which the Domain Service should exist. Changing this forces a new resource to be created. | 
| **security** | block | False | -  |  -  | A `security` block. | 
| **sku** | string | True | -  |  -  | The SKU to use when provisioning the Domain Service resource. One of `Standard`, `Enterprise` or `Premium`. | 
| **tags** | map | False | -  |  -  | A mapping of tags assigned to the resource. | 

