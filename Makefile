FOLDERS=$(shell ls -d */)

up:
	for FOLDER in $(FOLDERS); do \
		cd $$FOLDER && docker-compose up -d && cd ..; \
	done
down:
	for FOLDER in $(FOLDERS); do \
		cd $$FOLDER && docker-compose down --remove-orphans && cd ..; \

net:
	docker network create media_net
