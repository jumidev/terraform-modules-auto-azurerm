# azurerm_hdinsight_hbase_cluster

Manages a HDInsight HBase Cluster.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "hdinsight/hdinsight_hbase_cluster" 
}

inputs = {
   name = "name of hdinsight_hbase_cluster" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   cluster_version = "cluster_version of hdinsight_hbase_cluster" 
   component_version = "component_version of hdinsight_hbase_cluster" 
   gateway = "gateway of hdinsight_hbase_cluster" 
   roles = "roles of hdinsight_hbase_cluster" 
   tier = "tier of hdinsight_hbase_cluster" 
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
| **var.name** | string | True | -  |  Specifies the name for this HDInsight HBase Cluster. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  Specifies the name of the Resource Group in which this HDInsight HBase Cluster should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the Azure Region which this HDInsight HBase Cluster should exist. Changing this forces a new resource to be created. | 
| **var.cluster_version** | string | True | -  |  Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created. | 
| **var.disk_encryption** | block | False | -  |  One or more `disk_encryption` block. | 
| **var.component_version** | block | True | -  |  A `component_version` block. | 
| **var.gateway** | block | True | -  |  A `gateway` block. | 
| **var.roles** | block | True | -  |  A `roles` block. | 
| **var.network** | block | False | -  |  A `network` block. | 
| **var.compute_isolation** | block | False | -  |  A `compute_isolation` block. | 
| **var.storage_account** | block | False | -  |  One or more `storage_account` block. | 
| **var.storage_account_gen2** | block | False | -  |  A `storage_account_gen2` block. | 
| **var.tier** | string | True | `Standard`, `Premium`  |  Specifies the Tier which should be used for this HDInsight HBase Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created. | 
| **var.tls_min_version** | string | False | -  |  The minimal supported TLS version. Possible values are 1.0, 1.1 or 1.2. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  A map of Tags which should be assigned to this HDInsight HBase Cluster. | 
| **var.metastores** | block | False | -  |  A `metastores` block. | 
| **var.monitor** | block | False | -  |  A `monitor` block. | 
| **var.extension** | block | False | -  |  An `extension` block. | 
| **var.security_profile** | block | False | -  |  A `security_profile` block. Changing this forces a new resource to be created. | 

### `disk_encryption` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `encryption_algorithm` | string | No | - | This is an algorithm identifier for encryption. Possible values are 'RSA1_5', 'RSA-OAEP', 'RSA-OAEP-256'. |
| `encryption_at_host_enabled` | bool | No | - | This is indicator to show whether resource disk encryption is enabled. |
| `key_vault_key_id` | string | No | - | The ID of the key vault key. |
| `key_vault_managed_identity_id` | string | No | - | This is the resource ID of Managed Identity used to access the key vault. |

### `component_version` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `hbase` | string | Yes | - | The version of HBase which should be used for this HDInsight HBase Cluster. Changing this forces a new resource to be created. |

### `gateway` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `password` | string | Yes | - | The password used for the Ambari Portal. |
| `username` | string | Yes | - | The username used for the Ambari Portal. Changing this forces a new resource to be created. |

### `roles` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `head_node` | block | Yes | - | A 'head_node' block. |
| `worker_node` | block | Yes | - | A 'worker_node' block. |
| `zookeeper_node` | block | Yes | - | A 'zookeeper_node' block. |

### `network` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `connection_direction` | string | No | Inbound | The direction of the resource provider connection. Possible values include 'Inbound' or 'Outbound'. Defaults to 'Inbound'. Changing this forces a new resource to be created. |
| `private_link_enabled` | bool | No | False | Is the private link enabled? Possible values include 'true' or 'false'. Defaults to 'false'. Changing this forces a new resource to be created. |

### `compute_isolation` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `compute_isolation_enabled` | string | No | - | This field indicates whether enable compute isolation or not. Possible values are 'true' or 'false'. |
| `host_sku` | string | No | - | The name of the host SKU. |

### `storage_account` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `is_default` | bool | Yes | - | Is this the Default Storage Account for the HDInsight Hadoop Cluster? Changing this forces a new resource to be created. |
| `storage_account_key` | string | Yes | - | The Access Key which should be used to connect to the Storage Account. Changing this forces a new resource to be created. |
| `storage_container_id` | string | Yes | - | The ID of the Storage Container. Changing this forces a new resource to be created. |
| `storage_resource_id` | string | No | - | The ID of the Storage Account. Changing this forces a new resource to be created. |

### `storage_account_gen2` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `is_default` | bool | Yes | - | Is this the Default Storage Account for the HDInsight Hadoop Cluster? Changing this forces a new resource to be created. |
| `storage_resource_id` | string | Yes | - | The ID of the Storage Account. Changing this forces a new resource to be created. |
| `filesystem_id` | string | Yes | - | The ID of the Gen2 Filesystem. Changing this forces a new resource to be created. |
| `managed_identity_resource_id` | string | Yes | - | The ID of Managed Identity to use for accessing the Gen2 filesystem. Changing this forces a new resource to be created. |

### `metastores` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `hive` | block | No | - | A 'hive' block. |
| `oozie` | block | No | - | An 'oozie' block. |
| `ambari` | block | No | - | An 'ambari' block. |

### `monitor` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `log_analytics_workspace_id` | string | Yes | - | The Operations Management Suite (OMS) workspace ID. |
| `primary_key` | string | Yes | - | The Operations Management Suite (OMS) workspace key. |

### `extension` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `log_analytics_workspace_id` | string | Yes | - | The workspace ID of the log analytics extension. |
| `primary_key` | string | Yes | - | The workspace key of the log analytics extension. |

### `security_profile` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `aadds_resource_id` | string | Yes | - | The resource ID of the Azure Active Directory Domain Service. Changing this forces a new resource to be created. |
| `domain_name` | string | Yes | - | The name of the Azure Active Directory Domain. Changing this forces a new resource to be created. |
| `domain_username` | string | Yes | - | The username of the Azure Active Directory Domain. Changing this forces a new resource to be created. |
| `domain_user_password` | string | Yes | - | The user password of the Azure Active Directory Domain. Changing this forces a new resource to be created. |
| `ldaps_urls` | list | Yes | - | A list of the LDAPS URLs to communicate with the Azure Active Directory. Changing this forces a new resource to be created. |
| `msi_resource_id` | string | Yes | - | The User Assigned Identity for the HDInsight Cluster. Changing this forces a new resource to be created. |
| `cluster_users_group_dns` | list | No | - | A list of the distinguished names for the cluster user groups. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the HDInsight HBase Cluster. | 
| **https_endpoint** | string | No  | The HTTPS Connectivity Endpoint for this HDInsight HBase Cluster. | 
| **ssh_endpoint** | string | No  | The SSH Connectivity Endpoint for this HDInsight HBase Cluster. | 

Additionally, all variables are provided as outputs.
