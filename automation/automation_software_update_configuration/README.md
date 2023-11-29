# azurerm_automation_software_update_configuration

Manages an Automation Software Update Configuraion.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Automation. Changing this forces a new Automation to be created. | 
| **automation_account_id** | string | True | -  |  -  | The ID of Automation Account to manage this Source Control. Changing this forces a new Automation Source Control to be created. | 
| **duration** | string | False | `PT2H`  |  -  | Maximum time allowed for the software update configuration run. using format `PT[n]H[n]M[n]S` as per ISO8601. Defaults to `PT2H`. | 
| **linux** | block | False | -  |  -  | A `linux` block. | 
| **windows** | block | False | -  |  -  | A `windows` block. | 
| **virtual_machine_ids** | string | False | -  |  -  | Specifies a list of Azure Resource IDs of azure virtual machines. | 
| **non_azure_computer_names** | string | False | -  |  -  | Specifies a list of names of non-Azure machines for the software update configuration. | 
| **target** | block | False | -  |  -  | A `target` blocks. | 
| **post_task** | block | False | -  |  -  | A `post_task` blocks. | 
| **pre_task** | block | False | -  |  -  | A `pre_task` blocks. | 
| **schedule** | block | True | -  |  -  | A `schedule` blocks. | 

