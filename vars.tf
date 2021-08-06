variable vm_name {
type = string
default = "terraform-ga"
}
variable image_name{
type = string
default = "galaxy20_05lite" 
}

variable flavor_name {
type = string
default = "large"
}

variable key_pair {
type = string
default = "<key_pair_name>"
}

variable security_groups {
type = list
default = ["<sec_group1>","<sec_group2>"]
}

variable network_name_public {
type = string
default = "<public net>" 
}

