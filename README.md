# Akamai_GTM_template
Akamai Terraform GTM template 
How to use this template to create GTM configurations from scratch?

1) Download the templates

git clone https://github.com/dhruva-cloud/Akamai_GTM_template.git

2) Authentication is handled through Akamai EdgeGrid. Ensure you have your .edgerc file available and that it contains your Akamai EdgeGrid tokens seperated in sections. Add account key within the section

For more information on Akamai EdgeGrid, .edgerc file and creating Akamai EdgeGrid tokens, please read more on: https://techdocs.akamai.com/developer/docs/authenticate-with-edgegrid

4) Add your contract ID and group name to variables.tf and Save the changes. You can find these in Akamai Control Center or use the Akamai API/CLI to find these values. 

CLI commands to retrieve Akamai Contract ID and Group Name:
akamai property-manager list-groups --section default

5) Add your values to variables in side of the variables.tf file.

To create the Akamai GTM domain:
- In variables.tf Line 25, add your GTM domain name ending with akadns.net.
To create a failover property
- In failover.tf Line 5, add name of the property.
To create a Weighted load balance property
- In wlb_property.tf Line 3, add name of the WLB property after the section is uncommented.

Other settings can be changed if required.

Following these steps should create your Akamai GTM configuration with zero or more properties.
