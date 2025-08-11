#!/bin/bash

#Make all sh files executable
find . -type f -name "*.sh" -exec chmod +x {} +

# Move all sh files to ~
mv *.sh ~/
