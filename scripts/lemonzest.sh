#!/usr/bin/bash
# Define the clock
Clock() {
	        DATETIME=$(date "+%a %b %d, %T")

		        echo -n "$DATETIME"
		}
	# Print the clock
	while true; do
		        echo "%{r}%{F#FAFAFA}%{B#3b3b3b} $(Clock) %{F-}%{B-}"
			        sleep 1
			done
