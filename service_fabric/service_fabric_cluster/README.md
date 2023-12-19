# azurerm_service_fabric_cluster

Manages a Service Fabric Cluster.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "service_fabric/service_fabric_cluster"   
}

inputs = {
   name = "The name of the Service Fabric Cluster"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   reliability_level = "Specifies the Reliability Level of the Cluster"   
   management_endpoint = "Specifies the Management Endpoint of the cluster such as `http://example..."   
   node_type = {
      this_node_type = {
         instance_count = "..."         
         is_primary = "..."         
         client_endpoint_port = "..."         
         http_endpoint_port = "..."         
      }
      
   }
   
   upgrade_mode = "Specifies the Upgrade Mode of the cluster"   
   vm_image = "Specifies the Image expected for the Service Fabric Cluster, such as `Windows`..."   
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
| **name** | string |  -  |  The name of the Service Fabric Cluster. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group in which the Service Fabric Cluster exists. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specifies the Azure Region where the Service Fabric Cluster should exist. Changing this forces a new resource to be created. | 
| **reliability_level** | string |  `None`, `Bronze`, `Silver`, `Gold`, `Platinum`  |  Specifies the Reliability Level of the Cluster. Possible values include `None`, `Bronze`, `Silver`, `Gold` and `Platinum`. | 
| **management_endpoint** | string |  `http://example.com`  |  Specifies the Management Endpoint of the cluster such as `http://example.com`. Changing this forces a new resource to be created. | 
| **node_type** | [block](#node_type-block-structure) |  -  |  One or more `node_type` blocks. | 
| **upgrade_mode** | string |  `Automatic`, `Manual`  |  Specifies the Upgrade Mode of the cluster. Possible values are `Automatic` or `Manual`. | 
| **vm_image** | string |  `Windows`  |  Specifies the Image expected for the Service Fabric Cluster, such as `Windows`. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **cluster_code_version** | string |  -  |  Required if Upgrade Mode set to `Manual`, Specifies the Version of the Cluster Code of the cluster. | 
| **add_on_features** | list |  -  |  A List of one or more features which should be enabled, such as `DnsService`. | 
| **azure_active_directory** | [block](#azure_active_directory-block-structure) |  -  |  An `azure_active_directory` block. | 
| **certificate_common_names** | [block](#certificate_common_names-block-structure) |  -  |  A `certificate_common_names` block. Conflicts with `certificate`. | 
| **certificate** | [block](#certificate-block-structure) |  -  |  A `certificate` block. Conflicts with `certificate_common_names`. | 
| **reverse_proxy_certificate** | [block](#reverse_proxy_certificate-block-structure) |  -  |  A `reverse_proxy_certificate` block. Conflicts with `reverse_proxy_certificate_common_names`. | 
| **reverse_proxy_certificate_common_names** | [block](#reverse_proxy_certificate_common_names-block-structure) |  -  |  A `reverse_proxy_certificate_common_names` block. Conflicts with `reverse_proxy_certificate`. | 
| **client_certificate_thumbprint** | [block](#client_certificate_thumbprint-block-structure) |  -  |  One or more `client_certificate_thumbprint` blocks. | 
| **client_certificate_common_name** | [block](#client_certificate_common_name-block-structure) |  -  |  A `client_certificate_common_name` block. | 
| **diagnostics_config** | [block](#diagnostics_config-block-structure) |  -  |  A `diagnostics_config` block. | 
| **fabric_settings** | [block](#fabric_settings-block-structure) |  -  |  One or more `fabric_settings` blocks. | 
| **upgrade_policy** | [block](#upgrade_policy-block-structure) |  -  |  A `upgrade_policy` block. | 
| **service_fabric_zonal_upgrade_mode** | string |  `Hierarchical`, `Parallel`  |  Specifies the logical grouping of VMs in upgrade domains. Possible values are `Hierarchical` or `Parallel`. | 
| **vmss_zonal_upgrade_mode** | string |  `Hierarchical`, `Parallel`  |  Specifies the upgrade mode for the virtual machine scale set updates that happen in all availability zones at once. Possible values are `Hierarchical` or `Parallel`. | 
| **tags** | map |  -  |  A mapping of tags to assign to the resource. | 

### `client_certificate_common_name` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `common_name` | string | Yes | - | The common or subject name of the certificate. |
| `issuer_thumbprint` | string | No | - | The Issuer Thumbprint of the Certificate. |
| `is_admin` | string | Yes | - | Does the Client Certificate have Admin Access to the cluster? Non-admin clients can only perform read only operations on the cluster. |

### `fabric_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the Fabric Setting, such as 'Security' or 'Federation'. |
| `parameters` | string | No | - | A map containing settings for the specified Fabric Setting. |

### `health_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `max_unhealthy_applications_percent` | string | No | 0 | Specifies the maximum tolerated percentage of applications that can have aggregated health state of error. If the upgrade exceeds this percentage, the cluster is unhealthy. Defaults to '0'. |
| `max_unhealthy_nodes_percent` | string | No | 0 | Specifies the maximum tolerated percentage of nodes that can have aggregated health states of error. If an upgrade exceeds this percentage, the cluster is unhealthy. Defaults to '0'. |

### `common_names` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `certificate_common_name` | string | Yes | - | The common or subject name of the certificate. |
| `certificate_issuer_thumbprint` | string | No | - | The Issuer Thumbprint of the Certificate. |

### `azure_active_directory` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `tenant_id` | string | Yes | - | The Azure Active Directory Tenant ID. |
| `cluster_application_id` | string | Yes | - | The Azure Active Directory Cluster Application ID. |
| `client_application_id` | string | Yes | - | The Azure Active Directory Client ID which should be used for the Client Application. |

### `reverse_proxy_certificate_common_names` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `common_names` | [block](#common_names-block-structure) | Yes | - | A 'common_names' block. |
| `x509_store_name` | string | Yes | - | The X509 Store where the Certificate Exists, such as 'My'. |

### `certificate` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `thumbprint` | string | Yes | - | The Thumbprint of the Certificate. |
| `thumbprint_secondary` | string | No | - | The Secondary Thumbprint of the Certificate. |
| `x509_store_name` | string | Yes | - | The X509 Store where the Certificate Exists, such as 'My'. |

### `delta_health_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `max_delta_unhealthy_applications_percent` | string | No | 0 | Specifies the maximum tolerated percentage of delta unhealthy applications that can have aggregated health states of error. If the current unhealthy applications do not respect the percentage relative to the state at the beginning of the upgrade, the cluster is unhealthy. Defaults to '0'. |
| `max_delta_unhealthy_nodes_percent` | string | No | 0 | Specifies the maximum tolerated percentage of delta unhealthy nodes that can have aggregated health states of error. If the current unhealthy nodes do not respect the percentage relative to the state at the beginning of the upgrade, the cluster is unhealthy. Defaults to '0'. |
| `max_upgrade_domain_delta_unhealthy_nodes_percent` | string | No | 0 | Specifies the maximum tolerated percentage of upgrade domain delta unhealthy nodes that can have aggregated health state of error. If there is any upgrade domain where the current unhealthy nodes do not respect the percentage relative to the state at the beginning of the upgrade, the cluster is unhealthy. Defaults to '0'. |

### `application_ports` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `start_port` | string | Yes | - | The start of the Application Port Range on this Node Type. |
| `end_port` | string | Yes | - | The end of the Application Port Range on this Node Type. |

### `certificate_common_names` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `common_names` | [block](#common_names-block-structure) | Yes | - | A 'common_names' block. |
| `x509_store_name` | string | Yes | - | The X509 Store where the Certificate Exists, such as 'My'. |

### `diagnostics_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `storage_account_name` | string | Yes | - | The name of the Storage Account where the Diagnostics should be sent to. |
| `protected_account_key_name` | string | Yes | - | The protected diagnostics storage key name, such as 'StorageAccountKey1'. |
| `blob_endpoint` | string | Yes | - | The Blob Endpoint of the Storage Account. |
| `queue_endpoint` | string | Yes | - | The Queue Endpoint of the Storage Account. |
| `table_endpoint` | string | Yes | - | The Table Endpoint of the Storage Account. |

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
| `health_policy` | [block](#health_policy-block-structure) | No | - | A 'health_policy' block |
| `delta_health_policy` | [block](#delta_health_policy-block-structure) | No | - | A 'delta_health_policy' block |

### `ephemeral_ports` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `start_port` | string | Yes | - | The start of the Ephemeral Port Range on this Node Type. |
| `end_port` | string | Yes | - | The end of the Ephemeral Port Range on this Node Type. |

### `client_certificate_thumbprint` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `thumbprint` | string | Yes | - | The Thumbprint associated with the Client Certificate. |
| `is_admin` | string | Yes | - | Does the Client Certificate have Admin Access to the cluster? Non-admin clients can only perform read only operations on the cluster. |

### `reverse_proxy_certificate` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `thumbprint` | string | Yes | - | The Thumbprint of the Certificate. |
| `thumbprint_secondary` | string | No | - | The Secondary Thumbprint of the Certificate. |
| `x509_store_name` | string | Yes | - | The X509 Store where the Certificate Exists, such as 'My'. |

### `node_type` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the Node Type. |
| `placement_properties` | string | No | - | The placement tags applied to nodes in the node type, which can be used to indicate where certain services (workload) should run. |
| `capacities` | string | No | - | The capacity tags applied to the nodes in the node type, the cluster resource manager uses these tags to understand how much resource a node has. |
| `instance_count` | number | Yes | - | The number of nodes for this Node Type. |
| `is_primary` | bool | Yes | - | Is this the Primary Node Type? |
| `is_stateless` | string | No | - | Should this node type run only stateless services? |
| `multiple_availability_zones` | string | No | - | Does this node type span availability zones? |
| `client_endpoint_port` | string | Yes | - | The Port used for the Client Endpoint for this Node Type. |
| `http_endpoint_port` | string | Yes | - | The Port used for the HTTP Endpoint for this Node Type. |
| `durability_level` | string | No | Bronze | The Durability Level for this Node Type. Possible values include 'Bronze', 'Gold' and 'Silver'. Defaults to 'Bronze'. |
| `application_ports` | [block](#application_ports-block-structure) | No | - | A 'application_ports' block. |
| `ephemeral_ports` | [block](#ephemeral_ports-block-structure) | No | - | A 'ephemeral_ports' block. |
| `reverse_proxy_endpoint_port` | string | No | - | The Port used for the Reverse Proxy Endpoint for this Node Type. Changing this will upgrade the cluster. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Service Fabric Cluster. | 
| **cluster_endpoint** | string | No  | The Cluster Endpoint for this Service Fabric Cluster. | 

Additionally, all variables are provided as outputs.
