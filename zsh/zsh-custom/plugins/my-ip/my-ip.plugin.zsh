ipinfo() {
    ifconfig | grep 'inet.*broadcast' | awk '{print $2}' | while read -r line ; do
        echo " Local: $line"
    done
    echo "Extern: $(curl -4 -s -m 5 ifconfig.co)"
}
