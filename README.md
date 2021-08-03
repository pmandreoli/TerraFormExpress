## TerraFormExpress
Simple Terraform recipe to deploy a Galaxy VM with mounted `/export` volume over Openstack cloud.
This recipe is used for development propose in order to test the new Laniakea Express System.

### Dependencies
- Terraform v1.0.3 4
- Openstack tenant with floating ips



### How to deploy

1. Fill the `vars.tf`  
2. source the openstack rc file
3. run `terraform apply` to create the infrastructure
4. run `terraform destroy` to delete the infrastructure
