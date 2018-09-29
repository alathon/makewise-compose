build:
	cd ../netcore-compose-test && docker-compose build

up:
	cd ../netcore-compose-test && \
	docker-compose stop && \
	docker-compose up -d

down:
	cd ../netcore-compose-test && \
	docker-compose down

stop:
	cd ../netcore-compose-test && \
	docker-compose stop

watch-web:
	cd ../netcore-compose-test && \
	docker-compose exec web dotnet watch --project src/GiraffeWeb/GiraffeWeb.fsproj run

watch-iam:
	cd ../netcore-compose-test && \
	docker-compose exec iam dotnet watch --project src/IAM/IAM.csproj run

run-web:
	cd ../netcore-compose-test && \
	docker-compose exec web dotnet run --project src/GiraffeWeb/GiraffeWeb.fsproj

run-iam:
	cd ../netcore-compose-test && \
	docker-compose exec iam dotnet run --project src/IAM/IAM.csproj
