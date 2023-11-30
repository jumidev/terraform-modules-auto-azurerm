# REQUIRED VARIABLES

variable "data_factory_id" {
  description = "(REQUIRED) The ID of Data Factory in which to associate the Data Flow with. Changing this forces a new resource."
  type        = string

}
variable "name" {
  description = "(REQUIRED) Specifies the name of the Data Factory Flowlet Data Flow. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "annotations" {
  description = "List of tags that can be used for describing the Data Factory Flowlet Data Flow."
  type        = string
  default     = null
}
variable "description" {
  description = "The description for the Data Factory Flowlet Data Flow."
  type        = string
  default     = null
}
variable "folder" {
  description = "The folder that this Data Flow is in. If not specified, the Data Flow will appear at the root level."
  type        = string
  default     = null
}
variable "source" {
  description = "One or more 'source' blocks."
  type        = map(map(any))
  default     = null
}
#
# source block structure         :
#   description (string)           : The description for the Data Flow Source.
#   dataset (block)                : A 'dataset' block.
#   flowlet (block)                : A 'flowlet' block.
#   linked_service (block)         : A 'linked_service' block.
#   name (string)                  : (REQUIRED) The name for the Data Flow Source.
#   rejected_linked_service (block): A 'rejected_linked_service' block.
#   schema_linked_service (block)  : A 'schema_linked_service' block.
#
# dataset block structure:
#   name (string)          : (REQUIRED) The name for the Data Factory Dataset.
#   parameters (string)    : A map of parameters to associate with the Data Factory dataset.
#
# rejected_linked_service block structure:
#   name (string)                          : (REQUIRED) The name for the Data Factory Linked Service with schema.
#   parameters (string)                    : A map of parameters to associate with the Data Factory Linked Service.
#
# flowlet block structure    :
#   name (string)              : (REQUIRED) The name for the Data Factory Flowlet.
#   dataset_parameters (string): Specifies the reference data flow parameters from dataset.
#   parameters (string)        : A map of parameters to associate with the Data Factory Flowlet.
#
# linked_service block structure:
#   name (string)                 : (REQUIRED) The name for the Data Factory Linked Service.
#   parameters (string)           : A map of parameters to associate with the Data Factory Linked Service.
#
# schema_linked_service block structure:
#   name (string)                        : (REQUIRED) The name for the Data Factory Linked Service with schema.
#   parameters (string)                  : A map of parameters to associate with the Data Factory Linked Service.


variable "sink" {
  description = "One or more 'sink' blocks."
  type        = map(map(any))
  default     = null
}
#
# sink block structure           :
#   description (string)           : The description for the Data Flow Source.
#   dataset (block)                : A 'dataset' block.
#   flowlet (block)                : A 'flowlet' block.
#   linked_service (block)         : A 'linked_service' block.
#   name (string)                  : (REQUIRED) The name for the Data Flow Source.
#   rejected_linked_service (block): A 'rejected_linked_service' block.
#   schema_linked_service (block)  : A 'schema_linked_service' block.
#
# dataset block structure:
#   name (string)          : (REQUIRED) The name for the Data Factory Dataset.
#   parameters (string)    : A map of parameters to associate with the Data Factory dataset.
#
# rejected_linked_service block structure:
#   name (string)                          : (REQUIRED) The name for the Data Factory Linked Service with schema.
#   parameters (string)                    : A map of parameters to associate with the Data Factory Linked Service.
#
# flowlet block structure    :
#   name (string)              : (REQUIRED) The name for the Data Factory Flowlet.
#   dataset_parameters (string): Specifies the reference data flow parameters from dataset.
#   parameters (string)        : A map of parameters to associate with the Data Factory Flowlet.
#
# linked_service block structure:
#   name (string)                 : (REQUIRED) The name for the Data Factory Linked Service.
#   parameters (string)           : A map of parameters to associate with the Data Factory Linked Service.
#
# schema_linked_service block structure:
#   name (string)                        : (REQUIRED) The name for the Data Factory Linked Service with schema.
#   parameters (string)                  : A map of parameters to associate with the Data Factory Linked Service.


variable "script" {
  description = "The script for the Data Factory Flowlet Data Flow."
  type        = string
  default     = null
}
variable "script_lines" {
  description = "The script lines for the Data Factory Flowlet Data Flow."
  type        = string
  default     = null
}
variable "transformation" {
  description = "One or more 'transformation' blocks."
  type        = map(map(any))
  default     = null
}
#
# transformation block structure:
#   name (string)                 : (REQUIRED) The name for the Data Flow transformation.
#   description (string)          : The description for the Data Flow transformation.
#   dataset (block)               : A 'dataset' block.
#   flowlet (block)               : A 'flowlet' block.
#   linked_service (block)        : A 'linked_service' block.
#
# flowlet block structure    :
#   name (string)              : (REQUIRED) The name for the Data Factory Flowlet.
#   dataset_parameters (string): Specifies the reference data flow parameters from dataset.
#   parameters (string)        : A map of parameters to associate with the Data Factory Flowlet.
#
# dataset block structure:
#   name (string)          : (REQUIRED) The name for the Data Factory Dataset.
#   parameters (string)    : A map of parameters to associate with the Data Factory dataset.
#
# linked_service block structure:
#   name (string)                 : (REQUIRED) The name for the Data Factory Linked Service.
#   parameters (string)           : A map of parameters to associate with the Data Factory Linked Service.


