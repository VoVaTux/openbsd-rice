#!/bin/sh

case "$(apm -a)" in
	"1") status="🔌 Charging" ;;
	"0") status="🔋 Discharging" ;;
esac

echo -e "$status $(apm -l)%"
