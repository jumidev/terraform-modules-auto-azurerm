# azurerm_databox_edge_device

Manages a Databox Edge Device.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "databox_edge/databox_edge_device" 
}

inputs = {
   name = "name of databox_edge_device" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   sku_name = "sku_name of databox_edge_device" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Databox Edge Device. Changing this forces a new Databox Edge Device to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Databox Edge Device should exist. Changing this forces a new Databox Edge Device to be created. | 
| **var.location** | string | True | -  |  The Azure Region where the Databox Edge Device should exist. Changing this forces a new Databox Edge Device to be created. | 
| **var.sku_name** | string | True | `Gateway`, `EdgeMR_Mini`, `EdgeP_Base`, `EdgeP_High`, `EdgePR_Base`, `EdgePR_Base_UPS`, `GPU`, `RCA_Large`, `RCA_Small`, `RDC`, `TCA_Large`, `TCA_Small`, `TDC`, `TEA_1Node`, `TEA_1Node_UPS`, `TEA_1Node_Heater`, `TEA_1Node_UPS_Heater`, `TEA_4Node_Heater`, `TEA_4Node_UPS_Heater`, `TMA`  |  The `sku_name` is comprised of two segments separated by a hyphen (e.g. `TEA_1Node_UPS_Heater-Standard`). The first segment of the `sku_name` defines the `name` of the SKU, possible values are `Gateway`, `EdgeMR_Mini`, `EdgeP_Base`, `EdgeP_High`, `EdgePR_Base`, `EdgePR_Base_UPS`, `GPU`, `RCA_Large`, `RCA_Small`, `RDC`, `TCA_Large`, `TCA_Small`, `TDC`, `TEA_1Node`, `TEA_1Node_UPS`, `TEA_1Node_Heater`, `TEA_1Node_UPS_Heater`, `TEA_4Node_Heater`, `TEA_4Node_UPS_Heater` or `TMA`. The second segment defines the `tier` of the `sku_name`, possible values are `Standard`. For more information see the [product documentation]("https://docs.microsoft.com/dotnet/api/microsoft.azure.management.databoxedge.models.sku?view=azure-dotnet"). Changing this forces a new Databox Edge Device to be created. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Databox Edge Device. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Databox Edge Device. | 
| **device_properties** | block | No  | A `device_properties` block. | 
| **configured_role_types** | string | No  | Type of compute roles configured. | 
| **culture** | string | No  | The Data Box Edge/Gateway device culture. | 
| **hcs_version** | int | No  | The device software version number of the device (e.g. 1.2.18105.6). | 
| **capacity** | string | No  | The Data Box Edge/Gateway device local capacity in MB. | 
| **model** | string | No  | The Data Box Edge/Gateway device model. | 
| **software_version** | string | No  | The Data Box Edge/Gateway device software version. | 
| **status** | string | No  | The status of the Data Box Edge/Gateway device. | 
| **type** | string | No  | The type of the Data Box Edge/Gateway device. | 
| **node_count** | int | No  | The number of nodes in the cluster. | 
| **serial_number** | int | No  | The Serial Number of Data Box Edge/Gateway device. | 
| **time_zone** | string | No  | The Data Box Edge/Gateway device timezone. | 

Additionally, all variables are provided as outputs.
