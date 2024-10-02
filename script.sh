#!/bin/bash

if [ ! -f /etc/passwd ]; then
    echo "The /etc/passwd file does not exist."
    exit 1
fi

echo "Users with /bin/bash:"
grep '/bin/bash' /etc/passwd | cut -d: -f1
