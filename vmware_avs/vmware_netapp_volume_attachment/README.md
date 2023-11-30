# azurerm_vmware_netapp_volume_attachment

Manages a VMware Private Cloud Netapp File Attachment.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "vmware_avs/vmware_netapp_volume_attachment" 
}

inputs = {
   name = "name of vmware_netapp_volume_attachment" 
   netapp_volume_id = "netapp_volume_id of vmware_netapp_volume_attachment" 
   vmware_cluster_id = "vmware_cluster_id of vmware_netapp_volume_attachment" 
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
| **var.name** | string  The name which should be used for this VMware Private Cloud Netapp File Volume Attachment. Changing this forces a new VMware Private Cloud Netapp File Volume Attachment to be created. | 
| **var.netapp_volume_id** | string  The netapp file volume for this VMware Private Cloud Netapp File Volume Attachment to connect to. Changing this forces a new VMware Private Cloud Netapp File Volume Attachment to be created. | 
| **var.vmware_cluster_id** | string  The vmware cluster for this VMware Private Cloud Netapp File Volume Attachment to associated to. Changing this forces a new VMware Private Cloud Netapp File Volume Attachment to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |

Additionally, all variables are provided as outputs.
