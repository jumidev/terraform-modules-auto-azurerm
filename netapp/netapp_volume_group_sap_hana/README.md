# azurerm_netapp_volume_group_sap_hana

Manages a Application Volume Group for SAP HANA application.>Note: This feature is intended to be used for SAP-HANA workloads only, with several requirements, please refer to [Understand Azure NetApp Files application volume group for SAP HANA](https://learn.microsoft.com/en-us/azure/azure-netapp-files/application-volume-group-introduction) document as the starting point to understand this feature before using it with Terraform.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.account_name** | string | True | Name of the account where the application volume group belong to. Changing this forces a new Application Volume Group to be created and data will be lost. | 
| **var.application_identifier** | string | True | The SAP System ID, maximum 3 characters, e.g. `SH9`. Changing this forces a new Application Volume Group to be created and data will be lost. | 
| **var.group_description** | string | True | Volume group description. Changing this forces a new Application Volume Group to be created and data will be lost. | 
| **var.location** | string | True | The Azure Region where the Application Volume Group should exist. Changing this forces a new Application Volume Group to be created and data will be lost. | 
| **var.name** | string | True | The name which should be used for this Application Volume Group. Changing this forces a new Application Volume Group to be created and data will be lost. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Application Volume Group should exist. Changing this forces a new Application Volume Group to be created and data will be lost. | 
| **var.volume** | block | True | One or more `volume` blocks. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **account_name** | string  | - | 
| **application_identifier** | string  | - | 
| **group_description** | string  | - | 
| **location** | string  | - | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **volume** | block  | - | 
| **id** | string  | The ID of the Application Volume Group. | 