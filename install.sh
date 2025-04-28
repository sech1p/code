#!/bin/bash

user_os=$(uname)

if ! [[ $user_os == "Darwin" ]]; then
    # Non macOS systems (Linux, BSD's, etc.)
    cat extensions.txt | xargs -L 1 echo code --install-extension
else
    # macOS systems
    cat extensions.txt | xargs -L 1 echo open -a Visual\ Studio\ Code --install-extension
fi
