


variable instance_num {
    default = "1"
}
variable openstack_password {
  default = "openstackpassword"
}

variable "keypair_name" {
    description = "The keypair to be used."
    default  = "t2shoot"
}

variable "network_name" {
    description = "The network to be used."
    default  = "INT_NET"
}

variable "instance_name" {
    description = "The Instance Name to be used."
    default  = "my-instance"
}

variable "image_id" {
    description = "The image ID to be used."
    # default  = "a6f9dfff-f241-4439-9f1f-9a4a7b725b97" #centos 
    # default    = "c1af4557-553b-4dc8-9ea5-6b65754accd8" # ubuntu 
    default    = "321c21c8-7679-4fe9-8306-78df8443759e" # centos 7
}

variable "flavor_id" {
    description = "The flavor id to be used."
    default  = "4"
}

variable "floating_ip_pool" {
    description = "The pool to be used to get floating ip"
    default = "EXT_NET"
}

variable "volume_size" {
    description = "The size of volume used to instantiate the instance"
    default = ""
}

variable "security_groups" {
    description = "List of security group"
    type = list
    default = ["default", "Internet_Access", "kubernetes-security-groups"]
}
