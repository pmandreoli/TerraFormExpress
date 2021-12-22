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
default = "a7294ef8-2e29-4062-9a2b-5b3bab00288a" 
}

variable flavor_name {
type = string
default = "large"
}

variable key_pair {
type = string
default = "Pietro"
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
