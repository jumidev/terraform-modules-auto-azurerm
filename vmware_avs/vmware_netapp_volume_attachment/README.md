# azurerm_vmware_netapp_volume_attachment

Manages a VMware Private Cloud Netapp File Attachment.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this VMware Private Cloud Netapp File Volume Attachment. Changing this forces a new VMware Private Cloud Netapp File Volume Attachment to be created. | 
| **netapp_volume_id** | string | True | -  |  -  | The netapp file volume for this VMware Private Cloud Netapp File Volume Attachment to connect to. Changing this forces a new VMware Private Cloud Netapp File Volume Attachment to be created. | 
| **vmware_cluster_id** | string | True | -  |  -  | The vmware cluster for this VMware Private Cloud Netapp File Volume Attachment to associated to. Changing this forces a new VMware Private Cloud Netapp File Volume Attachment to be created. | 

