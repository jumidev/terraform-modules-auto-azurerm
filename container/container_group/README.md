# azurerm_container_group

Manages as an Azure Container Group instance.~> **Note** `network_profile_id` is [deprecated](https://docs.microsoft.com/en-us/azure/container-instances/container-instances-vnet) by Azure. For users who want to continue to manage existing `azurerm_container_group` that rely on `network_profile_id`, please stay on provider versions prior to v3.16.0. Otherwise, use `subnet_ids` instead.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Container Group. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Container Group. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.sku** | string | False | `Standard`  |  `Confidential`, `Dedicated`, `Standard`  | Specifies the sku of the Container Group. Possible values are `Confidential`, `Dedicated` and `Standard`. Defaults to `Standard`. Changing this forces a new resource to be created. | 
| **var.identity** | block | False | -  |  -  | An `identity` block. | 
| **var.init_container** | string | False | -  |  -  | The definition of an init container that is part of the group as documented in the `init_container` block below. Changing this forces a new resource to be created. | 
| **var.container** | string | True | -  |  -  | The definition of a container that is part of the group as documented in the `container` block below. Changing this forces a new resource to be created. | 
| **var.os_type** | string | True | -  |  `Linux`, `Windows`  | The OS for the container group. Allowed values are `Linux` and `Windows`. Changing this forces a new resource to be created. | 
| **var.dns_config** | block | False | -  |  -  | A `dns_config` block. Changing this forces a new resource to be created. | 
| **var.diagnostics** | block | False | -  |  -  | A `diagnostics` block. Changing this forces a new resource to be created. | 
| **var.dns_name_label** | string | False | -  |  -  | The DNS label/name for the container group's IP. Changing this forces a new resource to be created. | 
| **var.dns_name_label_reuse_policy** | string | False | `Unsecure`  |  -  | The value representing the security enum. `Noreuse`, `ResourceGroupReuse`, `SubscriptionReuse`, `TenantReuse` or `Unsecure`. Defaults to `Unsecure`. | 
| **var.exposed_port** | block | False | -  |  -  | Zero or more `exposed_port` blocks. Changing this forces a new resource to be created. | 
| **var.ip_address_type** | string | False | `Public`  |  -  | Specifies the IP address type of the container. `Public`, `Private` or `None`. Changing this forces a new resource to be created. If set to `Private`, `subnet_ids` also needs to be set. Defaults to `Public`. | 
| **var.key_vault_key_id** | string | False | -  |  -  | The Key Vault key URI for CMK encryption. Changing this forces a new resource to be created. | 
| **var.key_vault_user_assigned_identity_id** | string | False | -  |  -  | The user assigned identity that has access to the Key Vault Key. If not specified, the RP principal named "Azure Container Instance Service" will be used instead. Make sure the identity has the proper `key_permissions` set, at least with `Get`, `UnwrapKey`, `WrapKey` and `GetRotationPolicy`. | 
| **var.subnet_ids** | string | False | -  |  -  | The subnet resource IDs for a container group. Changing this forces a new resource to be created. | 
| **var.image_registry_credential** | block | False | -  |  -  | An `image_registry_credential` block. Changing this forces a new resource to be created. | 
| **var.restart_policy** | string | False | `Always`  |  `Always`, `Never`, `OnFailure`  | Restart policy for the container group. Allowed values are `Always`, `Never`, `OnFailure`. Defaults to `Always`. Changing this forces a new resource to be created. | 
| **var.zones** | list | False | -  |  -  | A list of Availability Zones in which this Container Group is located. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **sku** | string  | - | 
| **identity** | block  | - | 
| **init_container** | string  | - | 
| **container** | string  | - | 
| **os_type** | string  | - | 
| **dns_config** | block  | - | 
| **diagnostics** | block  | - | 
| **dns_name_label** | string  | - | 
| **dns_name_label_reuse_policy** | string  | - | 
| **exposed_port** | block  | - | 
| **ip_address_type** | string  | - | 
| **key_vault_key_id** | string  | - | 
| **key_vault_user_assigned_identity_id** | string  | - | 
| **subnet_ids** | string  | - | 
| **image_registry_credential** | block  | - | 
| **restart_policy** | string  | - | 
| **zones** | list  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Container Group. | 
| **identity** | block  | An `identity` block. | 
| **ip_address** | string  | The IP address allocated to the container group. | 
| **fqdn** | string  | The FQDN of the container group derived from `dns_name_label`. | 
| **principal_id** | string  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string  | The Tenant ID associated with this Managed Service Identity. | 