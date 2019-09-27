build:
	docker-compose -f docker-compose.yml build

push:
	docker-compose -f docker-compose.yml push

up:
	docker-compose -f docker-compose.yml up

deploy:
	kubectl apply -f k8s/nginx.deploy.yml
	kubectl apply -f k8s/nginx.service.yml 

destroy:
	kubectl delete -f k8s/nginx.deploy.yml
	kubectl delete -f k8s/nginx.service.yml 

