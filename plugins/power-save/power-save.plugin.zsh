# Shortcuts for power save

# Stops docker and removes interface which is huge power consumer
pws-docker-stop() {
    sudo systemctl stop docker.service
    sudo ip link set docker0 down
}

pws-docker-start() {
    sudo systemctl start docker.service
}



pws-all-stop() {
    pws-docker-stop
}

pws-all-start() {
    pws-docker-start
}
