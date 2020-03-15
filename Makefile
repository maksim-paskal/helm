build:
	helm package charts/*
	helm repo --url=https://test index .