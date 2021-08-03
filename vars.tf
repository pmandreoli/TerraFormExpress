variable vm_name {
type = string
default = "terraform-ga"
}
variable image_name{
type = string
default = "galaxy20_05liteF" 
}

variable flavor_name {
type = string
default = "m1.large"
}

variable key_pair {
type = string
default = "<key_pair_name>"
}

variable security_groups {
type = list
default = ["<sec_group1>","sec_group2>"]
}

variable network_name {
type = string
default = "<network_name>" 
}
output "public_ip" {
value = openstack_networking_floatingip_v2.external-ip.address 
}
