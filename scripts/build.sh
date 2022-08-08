# Select the subscription
az account set --subscription $1

cat $3.json
exit 0

# The delete the old template if it exists
az resource delete \
    --resource-group $2 \
    --resource-type Microsoft.VirtualMachineImages/imageTemplates \
    -n $3 || echo ""

# Create the new image template
az resource create \
    --resource-group $2 \
    --properties @$3.json \
    --is-full-object \
    --resource-type Microsoft.VirtualMachineImages/imageTemplates \
    -n $3

# Start the image build
az resource invoke-action \
     --resource-group $2 \
     --resource-type  Microsoft.VirtualMachineImages/imageTemplates \
     -n $3 \
     --action Run