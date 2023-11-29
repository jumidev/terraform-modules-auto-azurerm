# azurerm_vmware_private_cloud

Manages a VMware Private Cloud.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this VMware Private Cloud. Changing this forces a new VMware Private Cloud to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the VMware Private Cloud should exist. Changing this forces a new VMware Private Cloud to be created. | 
| **var.location** | string | True | -  |  The Azure Region where the VMware Private Cloud should exist. Changing this forces a new VMware Private Cloud to be created. | 
| **var.management_cluster** | block | True | -  |  A `management_cluster` block. ~> **NOTE :** `internet_connection_enabled` and `management_cluster.0.size` cannot be updated at the same time. | 
| **var.network_subnet_cidr** | string | True | -  |  The subnet which should be unique across virtual network in your subscription as well as on-premise. Changing this forces a new VMware Private Cloud to be created. | 
| **var.sku_name** | string | True | `av20`, `av36`, `av36t`, `av36p`, `av52`  |  The Name of the SKU used for this Private Cloud. Possible values are `av20`, `av36`, `av36t`, `av36p` and `av52`. Changing this forces a new VMware Private Cloud to be created. | 
| **var.internet_connection_enabled** | bool | False | -  |  Is the Private Cluster connected to the internet? This field can not updated with `management_cluster.0.size` together. ~> **NOTE :** `internet_connection_enabled` and `management_cluster.0.size` cannot be updated at the same time. | 
| **var.nsxt_password** | string | False | -  |  The password of the NSX-T Manager. Changing this forces a new VMware Private Cloud to be created. | 
| **var.vcenter_password** | string | False | -  |  The password of the vCenter admin. Changing this forces a new VMware Private Cloud to be created. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the VMware Private Cloud. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **management_cluster** | block  | - | 
| **network_subnet_cidr** | string  | - | 
| **sku_name** | string  | - | 
| **internet_connection_enabled** | bool  | - | 
| **nsxt_password** | string  | - | 
| **vcenter_password** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the management cluster. | 
| **circuit** | block  | A `circuit` block. | 
| **hcx_cloud_manager_endpoint** | string  | The endpoint for the HCX Cloud Manager. | 
| **nsxt_manager_endpoint** | string  | The endpoint for the NSX-T Data Center manager. | 
| **vcsa_endpoint** | string  | The endpoint for Virtual Center Server Appliance. | 
| **nsxt_certificate_thumbprint** | string  | The thumbprint of the NSX-T Manager SSL certificate. | 
| **vcenter_certificate_thumbprint** | string  | The thumbprint of the vCenter Server SSL certificate. | 
| **management_subnet_cidr** | string  | The network used to access vCenter Server and NSX-T Manager. | 
| **provisioning_subnet_cidr** | string  | The network which is used for virtual machine cold migration, cloning, and snapshot migration. | 
| **vmotion_subnet_cidr** | string  | The network which is used for live migration of virtual machines. | 
| **express_route_id** | string  | The ID of the ExpressRoute Circuit. | 
| **express_route_private_peering_id** | string  | The ID of the ExpressRoute Circuit private peering. | 
| **primary_subnet_cidr** | string  | The CIDR of the primary subnet. | 
| **secondary_subnet_cidr** | string  | The CIDR of the secondary subnet. | 
| **hosts** | list  | A list of hosts in the management cluster. | 