# azurerm_eventhub_namespace

Manages an EventHub Namespace.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/eventhub_namespace" 
}

inputs = {
   name = "name of eventhub_namespace" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   sku = "sku of eventhub_namespace" 
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
| **var.name** | string | True | -  |  -  |  Specifies the name of the EventHub Namespace resource. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the namespace. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.sku** | string | True | -  |  `Basic`, `Standard`, `Premium`  |  Defines which tier to use. Valid options are `Basic`, `Standard`, and `Premium`. Please note that setting this field to `Premium` will force the creation of a new resource. | 
| **var.capacity** | string | False | `1`  |  -  |  Specifies the Capacity / Throughput Units for a `Standard` SKU namespace. Default capacity has a maximum of `2`, but can be increased in blocks of 2 on a committed purchase basis. Defaults to `1`. | 
| **var.auto_inflate_enabled** | bool | False | -  |  -  |  Is Auto Inflate enabled for the EventHub Namespace? | 
| **var.dedicated_cluster_id** | string | False | -  |  -  |  Specifies the ID of the EventHub Dedicated Cluster where this Namespace should created. Changing this forces a new resource to be created. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| `identity` block structure: || 
|   type (string): (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Event Hub Namespace. Possible values are 'SystemAssigned' or 'UserAssigned'. ||
|   identity_ids (string): Specifies a list of User Assigned Managed Identity IDs to be assigned to this EventHub namespace. ||
| **var.maximum_throughput_units** | string | False | -  |  `1`, `20`  |  Specifies the maximum number of throughput units when Auto Inflate is Enabled. Valid values range from `1` - `20`. | 
| **var.zone_redundant** | bool | False | `False`  |  -  |  Specifies if the EventHub Namespace should be Zone Redundant (created across Availability Zones). Changing this forces a new resource to be created. Defaults to `false`. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 
| **var.network_rulesets** | block | False | -  |  -  |  A `network_rulesets` block. | 
| `network_rulesets` block structure: || 
|   default_action (string): (REQUIRED) The default action to take when a rule is not matched. Possible values are 'Allow' and 'Deny'. ||
|   public_network_access_enabled (bool): Is public network access enabled for the EventHub Namespace? Defaults to 'true'. ||
|   trusted_service_access_enabled (bool): Whether Trusted Microsoft Services are allowed to bypass firewall. ||
|   virtual_network_rule (block): One or more 'virtual_network_rule' blocks. ||
|   ip_rule (block): One or more 'ip_rule' blocks. ||
| **var.local_authentication_enabled** | bool | False | `True`  |  -  |  Is SAS authentication enabled for the EventHub Namespace? Defaults to `true`. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  -  |  Is public network access enabled for the EventHub Namespace? Defaults to `true`. | 
| **var.minimum_tls_version** | string | False | -  |  `1.0`, `1.1`, `1.2`  |  The minimum supported TLS version for this EventHub Namespace. Valid values are: `1.0`, `1.1` and `1.2`. The current default minimum TLS version is `1.2`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The EventHub Namespace ID. | 
| **identity** | block | No  | An `identity` block. | 
| **default_primary_connection_string** | string | No  | The primary connection string for the authorization rule `RootManageSharedAccessKey`. | 
| **default_primary_connection_string_alias** | string | No  | The alias of the primary connection string for the authorization rule `RootManageSharedAccessKey`, which is generated when disaster recovery is enabled. | 
| **default_primary_key** | string | No  | The primary access key for the authorization rule `RootManageSharedAccessKey`. | 
| **default_secondary_connection_string** | string | No  | The secondary connection string for the authorization rule `RootManageSharedAccessKey`. | 
| **default_secondary_connection_string_alias** | string | No  | The alias of the secondary connection string for the authorization rule `RootManageSharedAccessKey`, which is generated when disaster recovery is enabled. | 
| **default_secondary_key** | string | No  | The secondary access key for the authorization rule `RootManageSharedAccessKey`. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
