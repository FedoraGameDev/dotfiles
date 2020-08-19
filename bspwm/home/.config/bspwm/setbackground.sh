#!/usr/bin/env bash
echo 'Updating theme to current season...'

MONTH=`date +%B`

echo 'The current month is '${MONTH}'.'

SEASONNAMES=("Spring" "Summer" "Autumn" "Winter")
SEASONS=("March April May" "June July August" "September October November" "December January February")
FILES=("Backgrounds/Anime/Kemo Forest 1.jpg" "Backgrounds/Anime/Summer 2.jpg" "Backgrounds/Anime/Autumn Forest.jpg" "Backgrounds/Anime/Winter 2.jpg")
SCHEMES=("schemer" "schemer" "schemer" "schemer")

for ITER in ${!SEASONS[@]}; do
    echo "The Months in ${SEASONNAMES[$ITER]} are ${SEASONS[$ITER]}."
done

for ITER in ${!SEASONS[@]}; do
    echo "Checking $MONTH is in ${SEASONNAMES[$ITER]} (${SEASONS[$ITER]})..."
    if [[ "${SEASONS[$ITER]}" == *"$MONTH"* ]]; then
        echo "Months matched. Assigning Background and theme..."
        wal -i "/home/fedora-dev/Pictures/${FILES[$ITER]}" --backend ${SCHEMES[$ITER]} &
        break
    fi
done

echo 'Season Updated.'
