# azurerm_hdinsight_hadoop_cluster

Manages a HDInsight Hadoop Cluster.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name for this HDInsight Hadoop Cluster. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the Resource Group in which this HDInsight Hadoop Cluster should exist. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the Azure Region which this HDInsight Hadoop Cluster should exist. Changing this forces a new resource to be created. | 
| **cluster_version** | string | True | -  |  -  | Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created. | 
| **component_version** | block | True | -  |  -  | A `component_version` block. | 
| **gateway** | block | True | -  |  -  | A `gateway` block. | 
| **roles** | block | True | -  |  -  | A `roles` block. | 
| **storage_account** | block | False | -  |  -  | One or more `storage_account` block. | 
| **network** | block | False | -  |  -  | A `network` block. | 
| **disk_encryption** | block | False | -  |  -  | One or more `disk_encryption` block. | 
| **compute_isolation** | block | False | -  |  -  | A `compute_isolation` block. | 
| **storage_account_gen2** | block | False | -  |  -  | A `storage_account_gen2` block. | 
| **tier** | string | True | -  |  `Standard`, `Premium`  | Specifies the Tier which should be used for this HDInsight Hadoop Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created. | 
| **tls_min_version** | string | False | -  |  -  | The minimal supported TLS version. Possible values are 1.0, 1.1 or 1.2. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A map of Tags which should be assigned to this HDInsight Hadoop Cluster. | 
| **metastores** | block | False | -  |  -  | A `metastores` block. | 
| **monitor** | block | False | -  |  -  | A `monitor` block. | 
| **extension** | block | False | -  |  -  | An `extension` block. | 
| **security_profile** | block | False | -  |  -  | A `security_profile` block. Changing this forces a new resource to be created. | 

