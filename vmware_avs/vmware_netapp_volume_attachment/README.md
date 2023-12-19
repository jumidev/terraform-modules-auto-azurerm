# azurerm_vmware_netapp_volume_attachment

Manages a VMware Private Cloud Netapp File Attachment.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "vmware_avs/vmware_netapp_volume_attachment"   
}

inputs = {
   name = "The name which should be used for this VMware Private Cloud Netapp File Volume A..."   
   # netapp_volume_id → set in component_inputs
   # vmware_cluster_id → set in component_inputs
}

component_inputs = {
   netapp_volume_id = "path/to/netapp_volume_component:id"   
   vmware_cluster_id = "path/to/vmware_cluster_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name which should be used for this VMware Private Cloud Netapp File Volume Attachment. Changing this forces a new VMware Private Cloud Netapp File Volume Attachment to be created. | 
| **vmware_cluster_id** | string |  The vmware cluster for this VMware Private Cloud Netapp File Volume Attachment to associated to. Changing this forces a new VMware Private Cloud Netapp File Volume Attachment to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |

Additionally, all variables are provided as outputs.
