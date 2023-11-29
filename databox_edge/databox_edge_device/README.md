# azurerm_databox_edge_device

Manages a Databox Edge Device.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Databox Edge Device. Changing this forces a new Databox Edge Device to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Databox Edge Device should exist. Changing this forces a new Databox Edge Device to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Databox Edge Device should exist. Changing this forces a new Databox Edge Device to be created. | 
| **sku_name** | string | True | -  |  `Gateway`, `EdgeMR_Mini`, `EdgeP_Base`, `EdgeP_High`, `EdgePR_Base`, `EdgePR_Base_UPS`, `GPU`, `RCA_Large`, `RCA_Small`, `RDC`, `TCA_Large`, `TCA_Small`, `TDC`, `TEA_1Node`, `TEA_1Node_UPS`, `TEA_1Node_Heater`, `TEA_1Node_UPS_Heater`, `TEA_4Node_Heater`, `TEA_4Node_UPS_Heater`, `TMA`  | The `sku_name` is comprised of two segments separated by a hyphen (e.g. `TEA_1Node_UPS_Heater-Standard`). The first segment of the `sku_name` defines the `name` of the SKU, possible values are `Gateway`, `EdgeMR_Mini`, `EdgeP_Base`, `EdgeP_High`, `EdgePR_Base`, `EdgePR_Base_UPS`, `GPU`, `RCA_Large`, `RCA_Small`, `RDC`, `TCA_Large`, `TCA_Small`, `TDC`, `TEA_1Node`, `TEA_1Node_UPS`, `TEA_1Node_Heater`, `TEA_1Node_UPS_Heater`, `TEA_4Node_Heater`, `TEA_4Node_UPS_Heater` or `TMA`. The second segment defines the `tier` of the `sku_name`, possible values are `Standard`. For more information see the [product documentation]("https://docs.microsoft.com/dotnet/api/microsoft.azure.management.databoxedge.models.sku?view=azure-dotnet"). Changing this forces a new Databox Edge Device to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Databox Edge Device. | 

