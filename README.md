# Akamai_GTM_template
Akamai Terraform GTM template 
How to use this template to create GTM configurations from scratch?

1) Download the templates

git clone https://github.com/dhruva-cloud/Akamai_GTM_template.git

2) Authentication is handled through Akamai EdgeGrid. See akamai.tf, line 24 & 27. Ensure you have your .edgerc file available and that it contains your Akamai EdgeGrid tokens seperated in sections.

akamai.auto.tfvars has set the EdgeGrid section to 'default'.

For more information on Akamai EdgeGrid, .edgerc file and creating Akamai EdgeGrid tokens, please read more on: https://techdocs.akamai.com/developer/docs/authenticate-with-edgegrid

4) Add your contract ID and group name to akamai.auto.tfvars and Save the changes. You can find these in Akamai Control Center or use the Akamai API/CLI to find these values. 

CLI commands to retrieve Akamai Contract ID and Group Name:
akamai property-manager list-groups --section default

5) Add your values to variables in side of the modules.tf file.

To create the Akamai delivery configuration:
- Line 14, add your hostname that you want to Akamaize.
- Line 15, add your Akamai Edge Hostname that you want to create. Recommended is yourhostname.edgesuite.net for Standard TLS and yourhostname.edgekey.net for Enhanced TLS.
- Line 16, add your Origin Hostname where Akamai can retrieve your static/dynamic content. Can also be an IP address.
- Line 18, add your CP Code name. Recommended is to use your hostname here as well.
- Line 24, add your Akamai network to deploy the configuration to. Recommend is to start with Akamai STAGING.
- Line 25, add your email to receive notifications regarding the activation.

Other settings can be changed if required.

Following these steps should create your Akamai Ion configuration as well as activate the network lists, CP Code and Edge Hostname that you have specified.
