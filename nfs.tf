
resource "openstack_compute_instance_v2""terraform-nfs"{
name = "terraform-nfs"
availability_zone = "nova"
image_id = var.image_name_nfs 
flavor_name = var.flavor_name
key_pair = var.key_pair
security_groups = [ var.security_groups[0],var.security_groups[1], var.security_groups[2],var.security_groups[3]]
user_data = file("scripts/create_share.sh")

network {
name = var.network_name_private
}
block_device {
uuid                  = "${var.image_name_nfs}"
source_type           = "image"
destination_type      = "local"
boot_index            = 0
delete_on_termination = true
}

block_device {
uuid                  = openstack_blockstorage_volume_v2.nfs_volume.id
source_type           = "volume"
destination_type      = "volume"
boot_index            = -1
delete_on_termination = true
}
}
resource "openstack_blockstorage_volume_v2" "nfs_volume" {
name        = "nfs"
description = "nfs volume"
size        = 100
}

