# azurerm_service_fabric_cluster

Manages a Service Fabric Cluster.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "service_fabric/service_fabric_cluster" 
}

inputs = {
   name = "name of service_fabric_cluster" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   reliability_level = "reliability_level of service_fabric_cluster" 
   management_endpoint = "management_endpoint of service_fabric_cluster" 
   node_type = {
      example_node_type = {
         ...
      }
  
   }
 
   upgrade_mode = "upgrade_mode of service_fabric_cluster" 
   vm_image = "vm_image of service_fabric_cluster" 
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
| **var.name** | string | True | -  |  The name of the Service Fabric Cluster. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group in which the Service Fabric Cluster exists. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the Azure Region where the Service Fabric Cluster should exist. Changing this forces a new resource to be created. | 
| **var.reliability_level** | string | True | `None`, `Bronze`, `Silver`, `Gold`, `Platinum`  |  Specifies the Reliability Level of the Cluster. Possible values include `None`, `Bronze`, `Silver`, `Gold` and `Platinum`. | 
| **var.management_endpoint** | string | True | -  |  Specifies the Management Endpoint of the cluster such as `http://example.com`. Changing this forces a new resource to be created. | 
| **var.node_type** | block | True | -  |  One or more `node_type` blocks. | 
| **var.upgrade_mode** | string | True | `Automatic`, `Manual`  |  Specifies the Upgrade Mode of the cluster. Possible values are `Automatic` or `Manual`. | 
| **var.vm_image** | string | True | -  |  Specifies the Image expected for the Service Fabric Cluster, such as `Windows`. Changing this forces a new resource to be created. | 
| **var.cluster_code_version** | string | False | -  |  Required if Upgrade Mode set to `Manual`, Specifies the Version of the Cluster Code of the cluster. | 
| **var.add_on_features** | list | False | -  |  A List of one or more features which should be enabled, such as `DnsService`. | 
| **var.azure_active_directory** | block | False | -  |  An `azure_active_directory` block. | 
| **var.certificate_common_names** | block | False | -  |  A `certificate_common_names` block. Conflicts with `certificate`. | 
| **var.certificate** | block | False | -  |  A `certificate` block. Conflicts with `certificate_common_names`. | 
| **var.reverse_proxy_certificate** | block | False | -  |  A `reverse_proxy_certificate` block. Conflicts with `reverse_proxy_certificate_common_names`. | 
| **var.reverse_proxy_certificate_common_names** | block | False | -  |  A `reverse_proxy_certificate_common_names` block. Conflicts with `reverse_proxy_certificate`. | 
| **var.client_certificate_thumbprint** | block | False | -  |  One or more `client_certificate_thumbprint` blocks. | 
| **var.client_certificate_common_name** | block | False | -  |  A `client_certificate_common_name` block. | 
| **var.diagnostics_config** | block | False | -  |  A `diagnostics_config` block. | 
| **var.fabric_settings** | block | False | -  |  One or more `fabric_settings` blocks. | 
| **var.upgrade_policy** | block | False | -  |  A `upgrade_policy` block. | 
| **var.service_fabric_zonal_upgrade_mode** | string | False | `Hierarchical`, `Parallel`  |  Specifies the logical grouping of VMs in upgrade domains. Possible values are `Hierarchical` or `Parallel`. | 
| **var.vmss_zonal_upgrade_mode** | string | False | `Hierarchical`, `Parallel`  |  Specifies the upgrade mode for the virtual machine scale set updates that happen in all availability zones at once. Possible values are `Hierarchical` or `Parallel`. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 

### `node_type` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `placement_properties` | string | No | - | The placement tags applied to nodes in the node type, which can be used to indicate where certain services (workload) should run. |
| `capacities` | string | No | - | The capacity tags applied to the nodes in the node type, the cluster resource manager uses these tags to understand how much resource a node has. |
| `instance_count` | int | Yes | - | The number of nodes for this Node Type. |
| `is_primary` | bool | Yes | - | Is this the Primary Node Type? |
| `is_stateless` | string | No | - | Should this node type run only stateless services? |
| `multiple_availability_zones` | string | No | - | Does this node type span availability zones? |
| `client_endpoint_port` | string | Yes | - | The Port used for the Client Endpoint for this Node Type. |
| `http_endpoint_port` | string | Yes | - | The Port used for the HTTP Endpoint for this Node Type. |
| `durability_level` | string | No | Bronze | The Durability Level for this Node Type. Possible values include 'Bronze', 'Gold' and 'Silver'. Defaults to 'Bronze'. |
| `application_ports` | block | No | - | A 'application_ports' block. |
| `ephemeral_ports` | block | No | - | A 'ephemeral_ports' block. |
| `reverse_proxy_endpoint_port` | string | No | - | The Port used for the Reverse Proxy Endpoint for this Node Type. Changing this will upgrade the cluster. |

### `azure_active_directory` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `tenant_id` | string | Yes | - | The Azure Active Directory Tenant ID. |
| `cluster_application_id` | string | Yes | - | The Azure Active Directory Cluster Application ID. |
| `client_application_id` | string | Yes | - | The Azure Active Directory Client ID which should be used for the Client Application. |

### `certificate_common_names` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `common_names` | block | Yes | - | A 'common_names' block. |
| `x509_store_name` | string | Yes | - | The X509 Store where the Certificate Exists, such as 'My'. |

### `certificate` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `thumbprint` | string | Yes | - | The Thumbprint of the Certificate. |
| `thumbprint_secondary` | string | No | - | The Secondary Thumbprint of the Certificate. |
| `x509_store_name` | string | Yes | - | The X509 Store where the Certificate Exists, such as 'My'. |

### `reverse_proxy_certificate` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `thumbprint` | string | Yes | - | The Thumbprint of the Certificate. |
| `thumbprint_secondary` | string | No | - | The Secondary Thumbprint of the Certificate. |
| `x509_store_name` | string | Yes | - | The X509 Store where the Certificate Exists, such as 'My'. |

### `reverse_proxy_certificate_common_names` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `common_names` | block | Yes | - | A 'common_names' block. |
| `x509_store_name` | string | Yes | - | The X509 Store where the Certificate Exists, such as 'My'. |

### `client_certificate_thumbprint` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `thumbprint` | string | Yes | - | The Thumbprint associated with the Client Certificate. |
| `is_admin` | string | Yes | - | Does the Client Certificate have Admin Access to the cluster? Non-admin clients can only perform read only operations on the cluster. |

### `client_certificate_common_name` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `common_name` | string | Yes | - | The common or subject name of the certificate. |
| `issuer_thumbprint` | string | No | - | The Issuer Thumbprint of the Certificate. |
| `is_admin` | string | Yes | - | Does the Client Certificate have Admin Access to the cluster? Non-admin clients can only perform read only operations on the cluster. |

### `diagnostics_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `storage_account_name` | string | Yes | - | The name of the Storage Account where the Diagnostics should be sent to. |
| `protected_account_key_name` | string | Yes | - | The protected diagnostics storage key name, such as 'StorageAccountKey1'. |
| `blob_endpoint` | string | Yes | - | The Blob Endpoint of the Storage Account. |
| `queue_endpoint` | string | Yes | - | The Queue Endpoint of the Storage Account. |
| `table_endpoint` | string | Yes | - | The Table Endpoint of the Storage Account. |

### `fabric_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `parameters` | string | No | - | A map containing settings for the specified Fabric Setting. |

### `upgrade_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `force_restart_enabled` | bool | No | - | Indicates whether to restart the Service Fabric node even if only dynamic configurations have changed. |
| `health_check_retry_timeout` | string | No | 00:45:00 | Specifies the duration, in 'hh:mm:ss' string format, after which Service Fabric retries the health check if the previous health check fails. Defaults to '00:45:00'. |
| `health_check_stable_duration` | string | No | 00:01:00 | Specifies the duration, in 'hh:mm:ss' string format, that Service Fabric waits in order to verify that the cluster is stable before it continues to the next upgrade domain or completes the upgrade. This wait duration prevents undetected changes of health right after the health check is performed. Defaults to '00:01:00'. |
| `health_check_wait_duration` | string | No | 00:00:30 | Specifies the duration, in 'hh:mm:ss' string format, that Service Fabric waits before it performs the initial health check after it finishes the upgrade on the upgrade domain. Defaults to '00:00:30'. |
| `upgrade_domain_timeout` | string | No | 02:00:00 | Specifies the duration, in 'hh:mm:ss' string format, that Service Fabric takes to upgrade a single upgrade domain. After this period, the upgrade fails. Defaults to '02:00:00'. |
| `upgrade_replica_set_check_timeout` | string | No | 10675199.02:48:05.4775807 | Specifies the duration, in 'hh:mm:ss' string format, that Service Fabric waits for a replica set to reconfigure into a safe state, if it is not already in a safe state, before Service Fabric proceeds with the upgrade. Defaults to '10675199.02:48:05.4775807'. |
| `upgrade_timeout` | string | No | 12:00:00 | Specifies the duration, in 'hh:mm:ss' string format, that Service Fabric takes for the entire upgrade. After this period, the upgrade fails. Defaults to '12:00:00'. |
| `health_policy` | block | No | - | A 'health_policy' block |
| `delta_health_policy` | block | No | - | A 'delta_health_policy' block |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Service Fabric Cluster. | 
| **cluster_endpoint** | string | No  | The Cluster Endpoint for this Service Fabric Cluster. | 

Additionally, all variables are provided as outputs.
