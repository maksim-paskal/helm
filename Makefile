build:
	./scripts/helm.test.sh
	helm package charts/*
	helm repo --url=https://github.com/maksim-paskal/helm/releases/download/1.0/ index .
test:
	./scripts/helm.test.sh