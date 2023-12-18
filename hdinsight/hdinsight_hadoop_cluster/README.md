# azurerm_hdinsight_hadoop_cluster

Manages a HDInsight Hadoop Cluster.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "hdinsight/hdinsight_hadoop_cluster"   
}

inputs = {
   name = "Specifies the name for this HDInsight Hadoop Cluster..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   cluster_version = "Specifies the Version of HDInsights which should be used for this Cluster..."   
   component_version = {
      hadoop = "..."      
   }
   
   gateway = {
      password = "..."      
      username = "..."      
   }
   
   roles = {
      head_node = "..."      
      worker_node = "..."      
      zookeeper_node = "..."      
   }
   
   tier = "Specifies the Tier which should be used for this HDInsight Hadoop Cluster..."   
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
| **name** | string |  -  |  Specifies the name for this HDInsight Hadoop Cluster. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  Specifies the name of the Resource Group in which this HDInsight Hadoop Cluster should exist. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specifies the Azure Region which this HDInsight Hadoop Cluster should exist. Changing this forces a new resource to be created. | 
| **cluster_version** | string |  -  |  Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created. | 
| **component_version** | [block](#component_version-block-structure) |  -  |  A `component_version` block. | 
| **gateway** | [block](#gateway-block-structure) |  -  |  A `gateway` block. | 
| **roles** | [block](#roles-block-structure) |  -  |  A `roles` block. | 
| **tier** | string |  `Standard`, `Premium`  |  Specifies the Tier which should be used for this HDInsight Hadoop Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **storage_account** | [block](#storage_account-block-structure) |  One or more `storage_account` block. | 
| **network** | [block](#network-block-structure) |  A `network` block. | 
| **disk_encryption** | [block](#disk_encryption-block-structure) |  One or more `disk_encryption` block. | 
| **compute_isolation** | [block](#compute_isolation-block-structure) |  A `compute_isolation` block. | 
| **storage_account_gen2** | [block](#storage_account_gen2-block-structure) |  A `storage_account_gen2` block. | 
| **tls_min_version** | string |  The minimal supported TLS version. Possible values are 1.0, 1.1 or 1.2. Changing this forces a new resource to be created. | 
| **tags** | map |  A map of Tags which should be assigned to this HDInsight Hadoop Cluster. | 
| **metastores** | [block](#metastores-block-structure) |  A `metastores` block. | 
| **monitor** | [block](#monitor-block-structure) |  A `monitor` block. | 
| **extension** | [block](#extension-block-structure) |  An `extension` block. | 
| **security_profile** | [block](#security_profile-block-structure) |  A `security_profile` block. Changing this forces a new resource to be created. | 

### `install_script_action` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the install script action. |
| `uri` | string | Yes | - | The URI pointing to the script to run during the installation of the edge node. |
| `parameters` | string | No | - | The parameters for the script. |

### `network` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `connection_direction` | string | No | Inbound | The direction of the resource provider connection. Possible values include 'Inbound' or 'Outbound'. Defaults to 'Inbound'. Changing this forces a new resource to be created. |
| `private_link_enabled` | bool | No | False | Is the private link enabled? Possible values include 'true' or 'false'. Defaults to 'false'. Changing this forces a new resource to be created. |

### `extension` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `log_analytics_workspace_id` | string | Yes | - | The workspace ID of the log analytics extension. |
| `primary_key` | string | Yes | - | The workspace key of the log analytics extension. |

### `gateway` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `password` | string | Yes | - | The password used for the Ambari Portal. |
| `username` | string | Yes | - | The username used for the Ambari Portal. Changing this forces a new resource to be created. |

### `head_node` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `username` | string | Yes | - | The Username of the local administrator for the Head Nodes. Changing this forces a new resource to be created. |
| `vm_size` | string | Yes | - | The Size of the Virtual Machine which should be used as the Head Nodes. Possible values are 'ExtraSmall', 'Small', 'Medium', 'Large', 'ExtraLarge', 'A5', 'A6', 'A7', 'A8', 'A9', 'A10', 'A11', 'Standard_A1_V2', 'Standard_A2_V2', 'Standard_A2m_V2', 'Standard_A3', 'Standard_A4_V2', 'Standard_A4m_V2', 'Standard_A8_V2', 'Standard_A8m_V2', 'Standard_D1', 'Standard_D2', 'Standard_D3', 'Standard_D4', 'Standard_D11', 'Standard_D12', 'Standard_D13', 'Standard_D14', 'Standard_D1_V2', 'Standard_D2_V2', 'Standard_D3_V2', 'Standard_D4_V2', 'Standard_D5_V2', 'Standard_D11_V2', 'Standard_D12_V2', 'Standard_D13_V2', 'Standard_D14_V2', 'Standard_DS1_V2', 'Standard_DS2_V2', 'Standard_DS3_V2', 'Standard_DS4_V2', 'Standard_DS5_V2', 'Standard_DS11_V2', 'Standard_DS12_V2', 'Standard_DS13_V2', 'Standard_DS14_V2', 'Standard_E2_V3', 'Standard_E4_V3', 'Standard_E8_V3', 'Standard_E16_V3', 'Standard_E20_V3', 'Standard_E32_V3', 'Standard_E64_V3', 'Standard_E64i_V3', 'Standard_E2s_V3', 'Standard_E4s_V3', 'Standard_E8s_V3', 'Standard_E16s_V3', 'Standard_E20s_V3', 'Standard_E32s_V3', 'Standard_E64s_V3', 'Standard_E64is_V3', 'Standard_D2a_V4', 'Standard_D4a_V4', 'Standard_D8a_V4', 'Standard_D16a_V4', 'Standard_D32a_V4', 'Standard_D48a_V4', 'Standard_D64a_V4', 'Standard_D96a_V4', 'Standard_E2a_V4', 'Standard_E4a_V4', 'Standard_E8a_V4', 'Standard_E16a_V4', 'Standard_E20a_V4', 'Standard_E32a_V4', 'Standard_E48a_V4', 'Standard_E64a_V4', 'Standard_E96a_V4', 'Standard_G1', 'Standard_G2', 'Standard_G3', 'Standard_G4', 'Standard_G5', 'Standard_F2s_V2', 'Standard_F4s_V2', 'Standard_F8s_V2', 'Standard_F16s_V2', 'Standard_F32s_V2', 'Standard_F64s_V2', 'Standard_F72s_V2', 'Standard_GS1', 'Standard_GS2', 'Standard_GS3', 'Standard_GS4', 'Standard_GS5' and 'Standard_NC24'. Changing this forces a new resource to be created. |
| `password` | string | No | - | The Password associated with the local administrator for the Head Nodes. Changing this forces a new resource to be created. |
| `ssh_keys` | list | No | - | A list of SSH Keys which should be used for the local administrator on the Head Nodes. Changing this forces a new resource to be created. |
| `subnet_id` | string | No | - | The ID of the Subnet within the Virtual Network where the Head Nodes should be provisioned within. Changing this forces a new resource to be created. |
| `virtual_network_id` | string | No | - | The ID of the Virtual Network where the Head Nodes should be provisioned within. Changing this forces a new resource to be created. |
| `script_actions` | [block](#script_actions-block-structure) | No | - | The script action which will run on the cluster. One or more 'script_actions' blocks. |

### `disk_encryption` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `encryption_algorithm` | string | No | - | This is an algorithm identifier for encryption. Possible values are 'RSA1_5', 'RSA-OAEP', 'RSA-OAEP-256'. |
| `encryption_at_host_enabled` | bool | No | - | This is indicator to show whether resource disk encryption is enabled. |
| `key_vault_key_id` | string | No | - | The ID of the key vault key. |
| `key_vault_managed_identity_id` | string | No | - | This is the resource ID of Managed Identity used to access the key vault. |

### `autoscale` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `capacity` | [block](#capacity-block-structure) | No | - | A 'capacity' block. |
| `recurrence` | [block](#recurrence-block-structure) | No | - | A 'recurrence' block. |

### `compute_isolation` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `compute_isolation_enabled` | string | No | - | This field indicates whether enable compute isolation or not. Possible values are 'true' or 'false'. |
| `host_sku` | string | No | - | The name of the host SKU. |

### `monitor` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `log_analytics_workspace_id` | string | Yes | - | The Operations Management Suite (OMS) workspace ID. |
| `primary_key` | string | Yes | - | The Operations Management Suite (OMS) workspace key. |

### `component_version` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `hadoop` | string | Yes | - | The version of Hadoop which should be used for this HDInsight Hadoop Cluster. Changing this forces a new resource to be created. |

### `uninstall_script_actions` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the uninstall script action. |
| `uri` | string | Yes | - | The URI pointing to the script to run during the installation of the edge node. |
| `parameters` | string | No | - | The parameters for the script. |

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

### `script_actions` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the script action. |
| `uri` | string | Yes | - | The URI to the script. |
| `parameters` | string | No | - | The parameters for the script provided. |

### `recurrence` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `schedule` | [block](#schedule-block-structure) | Yes | - | A list of 'schedule' blocks. |
| `timezone` | string | Yes | - | The time zone for the autoscale schedule times. |

### `roles` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `head_node` | [block](#head_node-block-structure) | Yes | - | A 'head_node' block. |
| `worker_node` | [block](#worker_node-block-structure) | Yes | - | A 'worker_node' block. |
| `zookeeper_node` | [block](#zookeeper_node-block-structure) | Yes | - | A 'zookeeper_node' block. |
| `edge_node` | [block](#edge_node-block-structure) | No | - | A 'edge_node' block. |

### `storage_account` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `is_default` | bool | Yes | - | Is this the Default Storage Account for the HDInsight Hadoop Cluster? Changing this forces a new resource to be created. |
| `storage_account_key` | string | Yes | - | The Access Key which should be used to connect to the Storage Account. Changing this forces a new resource to be created. |
| `storage_container_id` | string | Yes | - | The ID of the Storage Container. Changing this forces a new resource to be created. |
| `storage_resource_id` | string | No | - | The ID of the Storage Account. Changing this forces a new resource to be created. |

### `zookeeper_node` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `username` | string | Yes | - | The Username of the local administrator for the Zookeeper Nodes. Changing this forces a new resource to be created. |
| `vm_size` | string | Yes | - | The Size of the Virtual Machine which should be used as the Zookeeper Nodes. Possible values are 'ExtraSmall', 'Small', 'Medium', 'Large', 'ExtraLarge', 'A5', 'A6', 'A7', 'A8', 'A9', 'A10', 'A11', 'Standard_A1_V2', 'Standard_A2_V2', 'Standard_A2m_V2', 'Standard_A3', 'Standard_A4_V2', 'Standard_A4m_V2', 'Standard_A8_V2', 'Standard_A8m_V2', 'Standard_D1', 'Standard_D2', 'Standard_D3', 'Standard_D4', 'Standard_D11', 'Standard_D12', 'Standard_D13', 'Standard_D14', 'Standard_D1_V2', 'Standard_D2_V2', 'Standard_D3_V2', 'Standard_D4_V2', 'Standard_D5_V2', 'Standard_D11_V2', 'Standard_D12_V2', 'Standard_D13_V2', 'Standard_D14_V2', 'Standard_DS1_V2', 'Standard_DS2_V2', 'Standard_DS3_V2', 'Standard_DS4_V2', 'Standard_DS5_V2', 'Standard_DS11_V2', 'Standard_DS12_V2', 'Standard_DS13_V2', 'Standard_DS14_V2', 'Standard_E2_V3', 'Standard_E4_V3', 'Standard_E8_V3', 'Standard_E16_V3', 'Standard_E20_V3', 'Standard_E32_V3', 'Standard_E64_V3', 'Standard_E64i_V3', 'Standard_E2s_V3', 'Standard_E4s_V3', 'Standard_E8s_V3', 'Standard_E16s_V3', 'Standard_E20s_V3', 'Standard_E32s_V3', 'Standard_E64s_V3', 'Standard_E64is_V3', 'Standard_D2a_V4', 'Standard_D4a_V4', 'Standard_D8a_V4', 'Standard_D16a_V4', 'Standard_D32a_V4', 'Standard_D48a_V4', 'Standard_D64a_V4', 'Standard_D96a_V4', 'Standard_E2a_V4', 'Standard_E4a_V4', 'Standard_E8a_V4', 'Standard_E16a_V4', 'Standard_E20a_V4', 'Standard_E32a_V4', 'Standard_E48a_V4', 'Standard_E64a_V4', 'Standard_E96a_V4', 'Standard_G1', 'Standard_G2', 'Standard_G3', 'Standard_G4', 'Standard_G5', 'Standard_F2s_V2', 'Standard_F4s_V2', 'Standard_F8s_V2', 'Standard_F16s_V2', 'Standard_F32s_V2', 'Standard_F64s_V2', 'Standard_F72s_V2', 'Standard_GS1', 'Standard_GS2', 'Standard_GS3', 'Standard_GS4', 'Standard_GS5' and 'Standard_NC24'. Changing this forces a new resource to be created. |
| `password` | string | No | - | The Password associated with the local administrator for the Zookeeper Nodes. Changing this forces a new resource to be created. |
| `ssh_keys` | list | No | - | A list of SSH Keys which should be used for the local administrator on the Zookeeper Nodes. Changing this forces a new resource to be created. |
| `subnet_id` | string | No | - | The ID of the Subnet within the Virtual Network where the Zookeeper Nodes should be provisioned within. Changing this forces a new resource to be created. |
| `virtual_network_id` | string | No | - | The ID of the Virtual Network where the Zookeeper Nodes should be provisioned within. Changing this forces a new resource to be created. |
| `script_actions` | list | No | - | The script action which will run on the cluster. One or more 'script_actions' blocks. |

### `metastores` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `hive` | [block](#hive-block-structure) | No | - | A 'hive' block. |
| `oozie` | [block](#oozie-block-structure) | No | - | An 'oozie' block. |
| `ambari` | [block](#ambari-block-structure) | No | - | An 'ambari' block. |

### `capacity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `max_instance_count` | number | Yes | - | The maximum number of worker nodes to autoscale to based on the cluster's activity. |
| `min_instance_count` | number | Yes | - | The minimum number of worker nodes to autoscale to based on the cluster's activity. |

### `schedule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `days` | string | Yes | - | The days of the week to perform autoscale. Possible values are 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday' and 'Sunday'. |
| `target_instance_count` | number | Yes | - | The number of worker nodes to autoscale at the specified time. |
| `time` | string | Yes | - | The time of day to perform the autoscale in 24hour format. |

### `worker_node` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `username` | string | Yes | - | The Username of the local administrator for the Worker Nodes. Changing this forces a new resource to be created. |
| `vm_size` | string | Yes | - | The Size of the Virtual Machine which should be used as the Worker Nodes. Possible values are 'ExtraSmall', 'Small', 'Medium', 'Large', 'ExtraLarge', 'A5', 'A6', 'A7', 'A8', 'A9', 'A10', 'A11', 'Standard_A1_V2', 'Standard_A2_V2', 'Standard_A2m_V2', 'Standard_A3', 'Standard_A4_V2', 'Standard_A4m_V2', 'Standard_A8_V2', 'Standard_A8m_V2', 'Standard_D1', 'Standard_D2', 'Standard_D3', 'Standard_D4', 'Standard_D11', 'Standard_D12', 'Standard_D13', 'Standard_D14', 'Standard_D1_V2', 'Standard_D2_V2', 'Standard_D3_V2', 'Standard_D4_V2', 'Standard_D5_V2', 'Standard_D11_V2', 'Standard_D12_V2', 'Standard_D13_V2', 'Standard_D14_V2', 'Standard_DS1_V2', 'Standard_DS2_V2', 'Standard_DS3_V2', 'Standard_DS4_V2', 'Standard_DS5_V2', 'Standard_DS11_V2', 'Standard_DS12_V2', 'Standard_DS13_V2', 'Standard_DS14_V2', 'Standard_E2_V3', 'Standard_E4_V3', 'Standard_E8_V3', 'Standard_E16_V3', 'Standard_E20_V3', 'Standard_E32_V3', 'Standard_E64_V3', 'Standard_E64i_V3', 'Standard_E2s_V3', 'Standard_E4s_V3', 'Standard_E8s_V3', 'Standard_E16s_V3', 'Standard_E20s_V3', 'Standard_E32s_V3', 'Standard_E64s_V3', 'Standard_E64is_V3', 'Standard_D2a_V4', 'Standard_D4a_V4', 'Standard_D8a_V4', 'Standard_D16a_V4', 'Standard_D32a_V4', 'Standard_D48a_V4', 'Standard_D64a_V4', 'Standard_D96a_V4', 'Standard_E2a_V4', 'Standard_E4a_V4', 'Standard_E8a_V4', 'Standard_E16a_V4', 'Standard_E20a_V4', 'Standard_E32a_V4', 'Standard_E48a_V4', 'Standard_E64a_V4', 'Standard_E96a_V4', 'Standard_G1', 'Standard_G2', 'Standard_G3', 'Standard_G4', 'Standard_G5', 'Standard_F2s_V2', 'Standard_F4s_V2', 'Standard_F8s_V2', 'Standard_F16s_V2', 'Standard_F32s_V2', 'Standard_F64s_V2', 'Standard_F72s_V2', 'Standard_GS1', 'Standard_GS2', 'Standard_GS3', 'Standard_GS4', 'Standard_GS5' and 'Standard_NC24'. Changing this forces a new resource to be created. |
| `password` | string | No | - | The Password associated with the local administrator for the Worker Nodes. Changing this forces a new resource to be created. |
| `ssh_keys` | list | No | - | A list of SSH Keys which should be used for the local administrator on the Worker Nodes. Changing this forces a new resource to be created. |
| `subnet_id` | string | No | - | The ID of the Subnet within the Virtual Network where the Worker Nodes should be provisioned within. Changing this forces a new resource to be created. |
| `target_instance_count` | number | Yes | - | The number of instances which should be run for the Worker Nodes. |
| `virtual_network_id` | string | No | - | The ID of the Virtual Network where the Worker Nodes should be provisioned within. Changing this forces a new resource to be created. |
| `autoscale` | [block](#autoscale-block-structure) | No | - | A 'autoscale' block. |
| `script_actions` | list | No | - | The script action which will run on the cluster. One or more 'script_actions' blocks. |

### `storage_account_gen2` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `is_default` | bool | Yes | - | Is this the Default Storage Account for the HDInsight Hadoop Cluster? Changing this forces a new resource to be created. |
| `storage_resource_id` | string | Yes | - | The ID of the Storage Account. Changing this forces a new resource to be created. |
| `filesystem_id` | string | Yes | - | The ID of the Gen2 Filesystem. Changing this forces a new resource to be created. |
| `managed_identity_resource_id` | string | Yes | - | The ID of Managed Identity to use for accessing the Gen2 filesystem. Changing this forces a new resource to be created. |

### `edge_node` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `target_instance_count` | number | Yes | - | The number of instances which should be run for the Worker Nodes. |
| `vm_size` | string | Yes | - | The Size of the Virtual Machine which should be used as the Edge Nodes. Possible values are 'ExtraSmall', 'Small', 'Medium', 'Large', 'ExtraLarge', 'A5', 'A6', 'A7', 'A8', 'A9', 'A10', 'A11', 'Standard_A1_V2', 'Standard_A2_V2', 'Standard_A2m_V2', 'Standard_A3', 'Standard_A4_V2', 'Standard_A4m_V2', 'Standard_A8_V2', 'Standard_A8m_V2', 'Standard_D1', 'Standard_D2', 'Standard_D3', 'Standard_D4', 'Standard_D11', 'Standard_D12', 'Standard_D13', 'Standard_D14', 'Standard_D1_V2', 'Standard_D2_V2', 'Standard_D3_V2', 'Standard_D4_V2', 'Standard_D5_V2', 'Standard_D11_V2', 'Standard_D12_V2', 'Standard_D13_V2', 'Standard_D14_V2', 'Standard_DS1_V2', 'Standard_DS2_V2', 'Standard_DS3_V2', 'Standard_DS4_V2', 'Standard_DS5_V2', 'Standard_DS11_V2', 'Standard_DS12_V2', 'Standard_DS13_V2', 'Standard_DS14_V2', 'Standard_E2_V3', 'Standard_E4_V3', 'Standard_E8_V3', 'Standard_E16_V3', 'Standard_E20_V3', 'Standard_E32_V3', 'Standard_E64_V3', 'Standard_E64i_V3', 'Standard_E2s_V3', 'Standard_E4s_V3', 'Standard_E8s_V3', 'Standard_E16s_V3', 'Standard_E20s_V3', 'Standard_E32s_V3', 'Standard_E64s_V3', 'Standard_E64is_V3', 'Standard_D2a_V4', 'Standard_D4a_V4', 'Standard_D8a_V4', 'Standard_D16a_V4', 'Standard_D32a_V4', 'Standard_D48a_V4', 'Standard_D64a_V4', 'Standard_D96a_V4', 'Standard_E2a_V4', 'Standard_E4a_V4', 'Standard_E8a_V4', 'Standard_E16a_V4', 'Standard_E20a_V4', 'Standard_E32a_V4', 'Standard_E48a_V4', 'Standard_E64a_V4', 'Standard_E96a_V4', 'Standard_G1', 'Standard_G2', 'Standard_G3', 'Standard_G4', 'Standard_G5', 'Standard_F2s_V2', 'Standard_F4s_V2', 'Standard_F8s_V2', 'Standard_F16s_V2', 'Standard_F32s_V2', 'Standard_F64s_V2', 'Standard_F72s_V2', 'Standard_GS1', 'Standard_GS2', 'Standard_GS3', 'Standard_GS4', 'Standard_GS5' and 'Standard_NC24'. |
| `install_script_action` | [block](#install_script_action-block-structure) | Yes | - | A 'install_script_action' block. |
| `https_endpoints` | [block](#https_endpoints-block-structure) | No | - | The HTTPS Connectivity Endpoint for this HDInsight Hadoop Cluster. One or more 'https_endpoints' blocks. |
| `uninstall_script_actions` | [block](#uninstall_script_actions-block-structure) | No | - | A 'uninstall_script_actions' block. |

### `https_endpoints` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `access_modes` | list | No | - | A list of access modes for the application. |
| `destination_port` | string | No | - | The destination port to connect to. |
| `disable_gateway_auth` | bool | No | - | The value indicates whether the gateway authentication is enabled or not. |
| `private_ip_address` | string | No | - | The private ip address of the endpoint. |
| `sub_domain_suffix` | string | No | - | The application's subdomain suffix. |

### `oozie` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `server` | string | Yes | - | The fully-qualified domain name (FQDN) of the SQL server to use for the external Oozie metastore. Changing this forces a new resource to be created. |
| `database_name` | string | Yes | - | The external Oozie metastore's existing SQL database. Changing this forces a new resource to be created. |
| `username` | string | Yes | - | The external Oozie metastore's existing SQL server admin username. Changing this forces a new resource to be created. |
| `password` | string | Yes | - | The external Oozie metastore's existing SQL server admin password. Changing this forces a new resource to be created. |

### `hive` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `server` | string | Yes | - | The fully-qualified domain name (FQDN) of the SQL server to use for the external Hive metastore. Changing this forces a new resource to be created. |
| `database_name` | string | Yes | - | The external Hive metastore's existing SQL database. Changing this forces a new resource to be created. |
| `username` | string | Yes | - | The external Hive metastore's existing SQL server admin username. Changing this forces a new resource to be created. |
| `password` | string | Yes | - | The external Hive metastore's existing SQL server admin password. Changing this forces a new resource to be created. |

### `ambari` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `server` | string | Yes | - | The fully-qualified domain name (FQDN) of the SQL server to use for the external Ambari metastore. Changing this forces a new resource to be created. |
| `database_name` | string | Yes | - | The external Hive metastore's existing SQL database. Changing this forces a new resource to be created. |
| `username` | string | Yes | - | The external Ambari metastore's existing SQL server admin username. Changing this forces a new resource to be created. |
| `password` | string | Yes | - | The external Ambari metastore's existing SQL server admin password. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the HDInsight Hadoop Cluster. | 
| **https_endpoint** | string | No  | The HTTPS Connectivity Endpoint for this HDInsight Hadoop Cluster. | 
| **ssh_endpoint** | string | No  | The SSH Connectivity Endpoint for this HDInsight Hadoop Cluster. | 

Additionally, all variables are provided as outputs.
