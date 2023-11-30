# azurerm_container_group

Manages as an Azure Container Group instance.~> **Note** `network_profile_id` is [deprecated](https://docs.microsoft.com/en-us/azure/container-instances/container-instances-vnet) by Azure. For users who want to continue to manage existing `azurerm_container_group` that rely on `network_profile_id`, please stay on provider versions prior to v3.16.0. Otherwise, use `subnet_ids` instead.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "container/container_group" 
}

inputs = {
   name = "name of container_group" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   container = "container of container_group" 
   os_type = "os_type of container_group" 
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
| **var.name** | string | True | -  |  -  |  Specifies the name of the Container Group. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the Container Group. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.sku** | string | False | `Standard`  |  `Confidential`, `Dedicated`, `Standard`  |  Specifies the sku of the Container Group. Possible values are `Confidential`, `Dedicated` and `Standard`. Defaults to `Standard`. Changing this forces a new resource to be created. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | | `identity` block structure: || 
|   type (string): (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Container Group. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). ||
|   identity_ids (string): Specifies a list of User Assigned Managed Identity IDs to be assigned to this Container Group. ||

| **var.init_container** | string | False | -  |  -  |  The definition of an init container that is part of the group as documented in the `init_container` block below. Changing this forces a new resource to be created. | 
| **var.container** | string | True | -  |  -  |  The definition of a container that is part of the group as documented in the `container` block below. Changing this forces a new resource to be created. | 
| **var.os_type** | string | True | -  |  `Linux`, `Windows`  |  The OS for the container group. Allowed values are `Linux` and `Windows`. Changing this forces a new resource to be created. | 
| **var.dns_config** | block | False | -  |  -  |  A `dns_config` block. Changing this forces a new resource to be created. | | `dns_config` block structure: || 
|   nameservers (list): (REQUIRED) A list of nameservers the containers will search out to resolve requests. Changing this forces a new resource to be created. ||
|   search_domains (list): A list of search domains that DNS requests will search along. Changing this forces a new resource to be created. ||
|   options (list): A list of [resolver configuration options](https://man7.org/linux/man-pages/man5/resolv.conf.5.html). Changing this forces a new resource to be created. ||

| **var.diagnostics** | block | False | -  |  -  |  A `diagnostics` block. Changing this forces a new resource to be created. | | `diagnostics` block structure: || 
|   log_analytics (block): (REQUIRED) A 'log_analytics' block. Changing this forces a new resource to be created. ||

| **var.dns_name_label** | string | False | -  |  -  |  The DNS label/name for the container group's IP. Changing this forces a new resource to be created. | 
| **var.dns_name_label_reuse_policy** | string | False | `Unsecure`  |  -  |  The value representing the security enum. `Noreuse`, `ResourceGroupReuse`, `SubscriptionReuse`, `TenantReuse` or `Unsecure`. Defaults to `Unsecure`. | 
| **var.exposed_port** | block | False | -  |  -  |  Zero or more `exposed_port` blocks. Changing this forces a new resource to be created. | | `exposed_port` block structure: || 
|   port (string): The port number the container will expose. Changing this forces a new resource to be created. ||
|   protocol (string): The network protocol associated with port. Possible values are 'TCP' & 'UDP'. Changing this forces a new resource to be created. Defaults to 'TCP'. ||

| **var.ip_address_type** | string | False | `Public`  |  -  |  Specifies the IP address type of the container. `Public`, `Private` or `None`. Changing this forces a new resource to be created. If set to `Private`, `subnet_ids` also needs to be set. Defaults to `Public`. | 
| **var.key_vault_key_id** | string | False | -  |  -  |  The Key Vault key URI for CMK encryption. Changing this forces a new resource to be created. | 
| **var.key_vault_user_assigned_identity_id** | string | False | -  |  -  |  The user assigned identity that has access to the Key Vault Key. If not specified, the RP principal named "Azure Container Instance Service" will be used instead. Make sure the identity has the proper `key_permissions` set, at least with `Get`, `UnwrapKey`, `WrapKey` and `GetRotationPolicy`. | 
| **var.subnet_ids** | string | False | -  |  -  |  The subnet resource IDs for a container group. Changing this forces a new resource to be created. | 
| **var.image_registry_credential** | block | False | -  |  -  |  An `image_registry_credential` block. Changing this forces a new resource to be created. | | `image_registry_credential` block structure: || 
|   user_assigned_identity_id (string): The identity ID for the private registry. Changing this forces a new resource to be created. ||
|   username (string): The username with which to connect to the registry. Changing this forces a new resource to be created. ||
|   password (string): The password with which to connect to the registry. Changing this forces a new resource to be created. ||
|   server (string): (REQUIRED) The address to use to connect to the registry without protocol ('https'/'http'). For example: 'myacr.acr.io'. Changing this forces a new resource to be created. ||

| **var.restart_policy** | string | False | `Always`  |  `Always`, `Never`, `OnFailure`  |  Restart policy for the container group. Allowed values are `Always`, `Never`, `OnFailure`. Defaults to `Always`. Changing this forces a new resource to be created. | 
| **var.zones** | list | False | -  |  -  |  A list of Availability Zones in which this Container Group is located. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Container Group. | 
| **identity** | block | No  | An `identity` block. | 
| **ip_address** | string | No  | The IP address allocated to the container group. | 
| **fqdn** | string | No  | The FQDN of the container group derived from `dns_name_label`. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
