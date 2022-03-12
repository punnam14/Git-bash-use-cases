read -p "Press 1 or 2 for converting to Frenhite or Celcius: " input

tempConversion()
        {
        case $1 in

        1)
`               read -p "Enter Celcius" celcius
                if(( $celcius>=0 && $celcius<=100 ))
                then
                        val=$(echo "scale=2;$degC * 9 / 5" | bc)
                        finalVal=$(echo "scale=2;$val + 32" | bc)
                        echo "The value in degF is $finalVal"
                else
                        echo "Please input C in 0-100"
                fi
                ;;

        2)
                echo "Enter Farenhite" farenhite
                if(( $farenhite>=32 && $farenhite<=212 ))
                then
                        val=$(echo "scale=2;$degF - 32" | bc)
                        finalVal=$(echo "scale=2;$val * 5 / 9" | bc)
                        echo "The value in degC is $finalVal"
                else
                        echo "Please input F in 32-212"
                fi
                ;;

        *)
                echo "Please select 1 or 2"
                ;;
        esac
        }

tempConversion $input


