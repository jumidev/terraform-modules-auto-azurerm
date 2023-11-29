# azurerm_vmware_private_cloud

Manages a VMware Private Cloud.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this VMware Private Cloud. Changing this forces a new VMware Private Cloud to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the VMware Private Cloud should exist. Changing this forces a new VMware Private Cloud to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the VMware Private Cloud should exist. Changing this forces a new VMware Private Cloud to be created. | 
| **management_cluster** | block | True | -  |  -  | A `management_cluster` block. ~> **NOTE :** `internet_connection_enabled` and `management_cluster.0.size` cannot be updated at the same time. | 
| **network_subnet_cidr** | string | True | -  |  -  | The subnet which should be unique across virtual network in your subscription as well as on-premise. Changing this forces a new VMware Private Cloud to be created. | 
| **sku_name** | string | True | -  |  `av20`, `av36`, `av36t`, `av36p`, `av52`  | The Name of the SKU used for this Private Cloud. Possible values are `av20`, `av36`, `av36t`, `av36p` and `av52`. Changing this forces a new VMware Private Cloud to be created. | 
| **internet_connection_enabled** | bool | False | -  |  -  | Is the Private Cluster connected to the internet? This field can not updated with `management_cluster.0.size` together. ~> **NOTE :** `internet_connection_enabled` and `management_cluster.0.size` cannot be updated at the same time. | 
| **nsxt_password** | string | False | -  |  -  | The password of the NSX-T Manager. Changing this forces a new VMware Private Cloud to be created. | 
| **vcenter_password** | string | False | -  |  -  | The password of the vCenter admin. Changing this forces a new VMware Private Cloud to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the VMware Private Cloud. | 

