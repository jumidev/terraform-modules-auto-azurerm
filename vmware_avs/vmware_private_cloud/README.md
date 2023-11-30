# azurerm_vmware_private_cloud

Manages a VMware Private Cloud.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "vmware_avs/vmware_private_cloud" 
}

inputs = {
   name = "name of vmware_private_cloud" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   management_cluster = {
      example_management_cluster = {
         size = "..."   
      }
  
   }
 
   network_subnet_cidr = "network_subnet_cidr of vmware_private_cloud" 
   sku_name = "sku_name of vmware_private_cloud" 
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
| **var.name** | string |  -  |  The name which should be used for this VMware Private Cloud. Changing this forces a new VMware Private Cloud to be created. | 
| **var.resource_group_name** | string |  -  |  The name of the Resource Group where the VMware Private Cloud should exist. Changing this forces a new VMware Private Cloud to be created. | 
| **var.location** | string |  -  |  The Azure Region where the VMware Private Cloud should exist. Changing this forces a new VMware Private Cloud to be created. | 
| **var.management_cluster** | block |  -  |  A `management_cluster` block. ~> **NOTE :** `internet_connection_enabled` and `management_cluster.0.size` cannot be updated at the same time. | 
| **var.network_subnet_cidr** | string |  -  |  The subnet which should be unique across virtual network in your subscription as well as on-premise. Changing this forces a new VMware Private Cloud to be created. | 
| **var.sku_name** | string |  `av20`, `av36`, `av36t`, `av36p`, `av52`  |  The Name of the SKU used for this Private Cloud. Possible values are `av20`, `av36`, `av36t`, `av36p` and `av52`. Changing this forces a new VMware Private Cloud to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.internet_connection_enabled** | bool |  Is the Private Cluster connected to the internet? This field can not updated with `management_cluster.0.size` together. ~> **NOTE :** `internet_connection_enabled` and `management_cluster.0.size` cannot be updated at the same time. | 
| **var.nsxt_password** | string |  The password of the NSX-T Manager. Changing this forces a new VMware Private Cloud to be created. | 
| **var.vcenter_password** | string |  The password of the vCenter admin. Changing this forces a new VMware Private Cloud to be created. | 
| **var.tags** | map |  A mapping of tags which should be assigned to the VMware Private Cloud. | 

### `management_cluster` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `size` | string | Yes | - | The size of the management cluster. This field can not updated with 'internet_connection_enabled' together. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the management cluster. | 
| **circuit** | block | No  | A `circuit` block. | 
| **hcx_cloud_manager_endpoint** | string | No  | The endpoint for the HCX Cloud Manager. | 
| **nsxt_manager_endpoint** | string | No  | The endpoint for the NSX-T Data Center manager. | 
| **vcsa_endpoint** | string | No  | The endpoint for Virtual Center Server Appliance. | 
| **nsxt_certificate_thumbprint** | string | No  | The thumbprint of the NSX-T Manager SSL certificate. | 
| **vcenter_certificate_thumbprint** | string | No  | The thumbprint of the vCenter Server SSL certificate. | 
| **management_subnet_cidr** | string | No  | The network used to access vCenter Server and NSX-T Manager. | 
| **provisioning_subnet_cidr** | string | No  | The network which is used for virtual machine cold migration, cloning, and snapshot migration. | 
| **vmotion_subnet_cidr** | string | No  | The network which is used for live migration of virtual machines. | 
| **express_route_id** | string | No  | The ID of the ExpressRoute Circuit. | 
| **express_route_private_peering_id** | string | No  | The ID of the ExpressRoute Circuit private peering. | 
| **primary_subnet_cidr** | string | No  | The CIDR of the primary subnet. | 
| **secondary_subnet_cidr** | string | No  | The CIDR of the secondary subnet. | 
| **hosts** | list | No  | A list of hosts in the management cluster. | 

Additionally, all variables are provided as outputs.
