#!/bin/sh
cat << 'EOF' >> ~/.bashrc 
if [[ "$TERM_PROGRAM" == "vscode" ]]; then
    alias vi='code -r'
fi
EOF