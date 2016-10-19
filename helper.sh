#!/bin/bash

#############################
# Microservice developments
#############################
MICROSERVICE_PRJ_PATH="/home/zealot/workspace_pif-store/piflab-api-microservice"
webMicro() {
	echo "List of support functions:"
	echo "webMicroStartDb -> Start the databases"
	echo "webMicroStartGateway -> Start the bash session of Gateway"
	echo "webMicroStartProductSvc -> Start the bash session of Prodcut Service"
}

webMicroStartDb() {
	cd $MICROSERVICE_PRJ_PATH
	# Start db_old
	sudo docker start $(sudo docker ps -a -q -f "name=piflabapimicroservice_db_product_1")
	# Start db_product
	sudo docker start $(sudo docker ps -a -q -f "name=piflabapimicroservice_db_old_1")
}

webMicroStartGateway() {
	sudo docker start $(sudo docker ps -a -q -f "name=piflabapimicroservice_api_gateway_run_1")
	sudo docker exec -it $(sudo docker ps -a -q -f "name=piflabapimicroservice_api_gateway_run_1") bash
}

webMicroStartProductSvc() {
	sudo docker start $(sudo docker ps -a -q -f "name=piflabapimicroservice_product_service_run_1")
	sudo docker exec -it $(sudo docker ps -a -q -f "name=piflabapimicroservice_product_service_run_1") bash
}
