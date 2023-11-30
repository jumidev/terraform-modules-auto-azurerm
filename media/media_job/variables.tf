# REQUIRED VARIABLES

variable "input_asset" {
  description = "(REQUIRED) A 'input_asset' block. Changing this forces a new Media Job to be created."
  type        = map(any)
}
#
# input_asset block structure:
#   label (string)             : A label that is assigned to a JobInputClip, that is used to satisfy a reference used in the Transform. For example, a Transform can be authored so as to take an image file with the label 'xyz' and apply it as an overlay onto the input video before it is encoded. When submitting a Job, exactly one of the JobInputs should be the image file, and it should have the label 'xyz'. Changing this forces a new resource to be created.


variable "media_services_account_name" {
  description = "(REQUIRED) The Media Services account name. Changing this forces a new Transform to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Media Job. Changing this forces a new Media Job to be created."
  type        = string

}
variable "output_asset" {
  description = "(REQUIRED) One or more 'output_asset' blocks. Changing this forces a new Media Job to be created."
  type        = map(map(any))
}
#
# output_asset block structure:
#   label (string)              : A label that is assigned to a JobOutput in order to help uniquely identify it. This is useful when your Transform has more than one TransformOutput, whereby your Job has more than one JobOutput. In such cases, when you submit the Job, you will add two or more JobOutputs, in the same order as TransformOutputs in the Transform. Subsequently, when you retrieve the Job, either through events or on a GET request, you can use the label to easily identify the JobOutput. If a label is not provided, a default value of '{presetName}_{outputIndex}' will be used, where the preset name is the name of the preset in the corresponding TransformOutput and the output index is the relative index of the this JobOutput within the Job. Note that this index is the same as the relative index of the corresponding TransformOutput within its Transform. Changing this forces a new resource to be created.


variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Media Job should exist. Changing this forces a new Media Job to be created."
  type        = string

}
variable "transform_name" {
  description = "(REQUIRED) The Transform name. Changing this forces a new Media Job to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "Optional customer supplied description of the Job."
  type        = string
  default     = null
}
variable "priority" {
  description = "Priority with which the job should be processed. Higher priority jobs are processed before lower priority jobs. Changing this forces a new Media Job to be created. Possible values are 'High', 'Normal' and 'Low'. Defaults to 'Normal'."
  type        = string
  default     = "Normal"
}
