sed -i -e "s/<subscription_id>/${variables.subscription_id}/g" ../template/image_template.json
sed -i -e "s/<rg_name>/${variables.rg_name}/g" ../template/image_template.json
sed -i -e "s/<image_name>/${parameters.image_name}/g" ../template/image_template.json
sed -i -e "s/<gallery_name>/${variables.gallery_name}/g" ../template/image_template.json
sed -i -e "s/<region_1>/${variables.location}/g" ../template/image_template.json
sed -i -e "s/<id_name>/${variables.id_name}/g" ../template/image_template.json
sed -i -e "s/<src_image_publisher>/${parameters.src_image_publisher}/g" ../template/image_template.json
sed -i -e "s/<src_image_offer>/${parameters.src_image_offer}/g" ../template/image_template.json
sed -i -e "s/<src_image_sku>/${parameters.src_image_sku}/g" ../template/image_template.json
sed -i -e "s/<image_build_sku>/${parameters.image_build_sku}/g" ../template/image_template.json
sed -i -e "s/<image_build_size>/${parameters.image_build_size}/g" ../template/image_template.json