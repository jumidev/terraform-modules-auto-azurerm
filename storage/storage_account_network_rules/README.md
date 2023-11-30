# azurerm_storage_account_network_rules

Manages network rules inside of a Azure Storage Account.~> **NOTE:** Network Rules can be defined either directly on the `azurerm_storage_account` resource, or using the `azurerm_storage_account_network_rules` resource - but the two cannot be used together. Spurious changes will occur if both are used against the same Storage Account.~> **NOTE:** Only one `azurerm_storage_account_network_rules` can be tied to an `azurerm_storage_account`. Spurious changes will occur if more than `azurerm_storage_account_network_rules` is tied to the same `azurerm_storage_account`.~> **NOTE:** Deleting this resource updates the storage account back to the default values it had when the storage account was created.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "storage/storage_account_network_rules" 
}

inputs = {
   storage_account_id = "storage_account_id of storage_account_network_rules" 
   default_action = "default_action of storage_account_network_rules" 
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
| **var.storage_account_id** | string | True | -  |  Specifies the ID of the storage account. Changing this forces a new resource to be created. | 
| **var.default_action** | string | True | `Deny`, `Allow`  |  Specifies the default action of allow or deny when no other rules match. Valid options are `Deny` or `Allow`. | 
| **var.bypass** | string | False | `Logging`, `Metrics`, `AzureServices`, `None`  |  Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Valid options are any combination of `Logging`, `Metrics`, `AzureServices`, or `None`. | 
| **var.ip_rules** | string | False | -  |  List of public IP or IP ranges in CIDR Format. Only IPv4 addresses are allowed. Private IP address ranges (as defined in [RFC 1918](https://tools.ietf.org/html/rfc1918#section-3)) are not allowed. | 
| **var.virtual_network_subnet_ids** | list | False | -  |  A list of virtual network subnet ids to secure the storage account. | 
| **var.private_link_access** | block | False | -  |  One or more `private_link_access` block. | | `private_link_access` block structure: || 
|   endpoint_resource_id (string): (REQUIRED) The resource id of the resource access rule to be granted access. ||
|   endpoint_tenant_id (string): The tenant id of the resource of the resource access rule to be granted access. Defaults to the current tenant id. ||




## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Storage Account. | 

Additionally, all variables are provided as outputs.
