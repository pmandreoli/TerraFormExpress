variable vm_name {
type = string
default = "terraform-ga"
}
variable image_name_galaxy{
type = string
default = "galaxy20_05lite" 
}
variable image_name_nfs{
type = string
default = "c9aece47-bd74-4ba8-ba18-456c7447c878" 
}

variable flavor_name {
type = string
default = "large"
}

variable key_pair {
type = string
default = "cloud"
}

variable security_groups {
type = list
default = ["default","tf-ftp","tf-ssh","tf-web","tf-nfs"]
}

variable network_name_private {
type = string
default = "private_net" 
}
variable network_name_public {
type = string
default = "public_net" 
}
output "public_ip"{
value = openstack_compute_instance_v2.test.network[0].fixed_ip_v4
}
