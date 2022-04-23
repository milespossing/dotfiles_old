azurite() {
	docker run $# -p 10000-10002:10000-10002 --rm mcr.microsoft.com/azure-storage/azurite
}
