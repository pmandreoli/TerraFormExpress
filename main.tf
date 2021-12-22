resource "openstack_compute_instance_v2""test"{
name = var.vm_name
availability_zone = "nova"
image_name = var.image_name_galaxy
flavor_name = var.flavor_name
key_pair = var.key_pair
security_groups = [ var.security_groups[0],var.security_groups[4]]
user_data = file("scripts/M_volume.sh")
network {
name = var.network_name_public
}
network {
name = var.network_name_private
}
}
resource "openstack_blockstorage_volume_v2" "export-terra" {
  name = "export-terra"
  size = 100

}

resource "openstack_compute_volume_attach_v2" "export-terra" {
  instance_id = "${openstack_compute_instance_v2.test.id}"
  volume_id   = "${openstack_blockstorage_volume_v2.export-terra.id}"
}


