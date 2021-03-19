#!/bin/sh
while true; do
    sh update.sh
    java -Xms8G -Xmx8G -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -XX:+UnlockDiagnosticVMOptions -XX:+DebugNonSafepoints -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -jar purpurclip.jar nogui
    echo "If you want to completely stop the server process now, press Ctrl+C before the time is up!"
    echo "Rebooting in:"
    for i in 3 2 1; do
        echo "$i..."
        sleep 1
    done
    echo "Too late, pepega!"
    echo "Rebooting now!"
done
