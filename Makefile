build:
	helm lint --strict charts/*
	helm package charts/*
	helm repo --url=https://github.com/maksim-paskal/helm/releases/download/1.0/ index .