variable "availability_zone" {
    type = "list"
}
variable "kms_key_id" {}
variable "encrypted" {
    default = "true"
}

variable "size" {}

variable "type" {}

variable "name" {}

variable "env" {}

variable "create" {}

variable "instance_id" {
    type = "list"
}