# azurerm_databox_edge_device

Manages a Databox Edge Device.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Databox Edge Device. Changing this forces a new Databox Edge Device to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Databox Edge Device should exist. Changing this forces a new Databox Edge Device to be created. | 
| **var.location** | string | True | -  |  The Azure Region where the Databox Edge Device should exist. Changing this forces a new Databox Edge Device to be created. | 
| **var.sku_name** | string | True | `Gateway`, `EdgeMR_Mini`, `EdgeP_Base`, `EdgeP_High`, `EdgePR_Base`, `EdgePR_Base_UPS`, `GPU`, `RCA_Large`, `RCA_Small`, `RDC`, `TCA_Large`, `TCA_Small`, `TDC`, `TEA_1Node`, `TEA_1Node_UPS`, `TEA_1Node_Heater`, `TEA_1Node_UPS_Heater`, `TEA_4Node_Heater`, `TEA_4Node_UPS_Heater`, `TMA`  |  The `sku_name` is comprised of two segments separated by a hyphen (e.g. `TEA_1Node_UPS_Heater-Standard`). The first segment of the `sku_name` defines the `name` of the SKU, possible values are `Gateway`, `EdgeMR_Mini`, `EdgeP_Base`, `EdgeP_High`, `EdgePR_Base`, `EdgePR_Base_UPS`, `GPU`, `RCA_Large`, `RCA_Small`, `RDC`, `TCA_Large`, `TCA_Small`, `TDC`, `TEA_1Node`, `TEA_1Node_UPS`, `TEA_1Node_Heater`, `TEA_1Node_UPS_Heater`, `TEA_4Node_Heater`, `TEA_4Node_UPS_Heater` or `TMA`. The second segment defines the `tier` of the `sku_name`, possible values are `Standard`. For more information see the [product documentation]("https://docs.microsoft.com/dotnet/api/microsoft.azure.management.databoxedge.models.sku?view=azure-dotnet"). Changing this forces a new Databox Edge Device to be created. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Databox Edge Device. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **sku_name** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Databox Edge Device. | 
| **device_properties** | block  | A `device_properties` block. | 
| **configured_role_types** | string  | Type of compute roles configured. | 
| **culture** | string  | The Data Box Edge/Gateway device culture. | 
| **hcs_version** | int  | The device software version number of the device (e.g. 1.2.18105.6). | 
| **capacity** | string  | The Data Box Edge/Gateway device local capacity in MB. | 
| **model** | string  | The Data Box Edge/Gateway device model. | 
| **software_version** | string  | The Data Box Edge/Gateway device software version. | 
| **status** | string  | The status of the Data Box Edge/Gateway device. | 
| **type** | string  | The type of the Data Box Edge/Gateway device. | 
| **node_count** | int  | The number of nodes in the cluster. | 
| **serial_number** | int  | The Serial Number of Data Box Edge/Gateway device. | 
| **time_zone** | string  | The Data Box Edge/Gateway device timezone. | 