    #!/bin/bash

    # Use getopt to parse options and arguments
    ARGS=$(getopt -o m: --long my-flag: -- "$@")
    if [[ $? -ne 0 ]]; then
        exit 1
    fi

    eval set -- "$ARGS"

    my_flag_values=()

    while true; do
        case "$1" in
            -m|--my-flag)
                # getopt will have already grouped the arguments with the flag
                # If you defined it with a colon in getopt, it expects an argument.
                # If you need multiple, you'd typically define the flag to take one argument
                # which itself is a delimited string (e.g., "value1,value2") and then parse that.
                # Or, as shown in manual parsing, you manually extract subsequent arguments.
                my_flag_values+=("$2") # Example: assuming getopt provides one argument
                shift 2
                ;;
            --)
                shift
                break
                ;;
            *)
                echo "Internal error!"
                exit 1
                ;;
        esac
    done

    echo "My flag values: ${my_flag_values[@]}"
