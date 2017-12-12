#!/bin/bash

function save() {
cd ../../tmp/backup

tar -cvf $(date +%d-%Y-%m_%I-%M-%S).tar.gz ../archive/
}

save
