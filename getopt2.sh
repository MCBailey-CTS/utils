    #!/bin/bash

    # Initialize variables
    my_flag_values=()

    while [[ $# -gt 0 ]]; do
        case "$1" in
            -m|--my-flag)
                shift # Move past the flag itself
                # Expect two parameters for --my-flag
                if [[ $# -ge 2 ]]; then
                    my_flag_values+=("$1")
                    my_flag_values+=("$2")
                    shift 2 # Move past the two parameters
                else
                    echo "Error: --my-flag requires two arguments."
                    exit 1
                fi
                ;;
            *)
                echo "Unknown option: $1"
                exit 1
                ;;
        esac
    done

    echo "My flag values: ${my_flag_values[@]}"
