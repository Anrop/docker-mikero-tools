#!/bin/sh

FLAGS=-PgW
PREFIX=test_pbo
SOURCE="test_pbo"
TARGET="test.pbo"

makepbo -@ $PREFIX $FLAGS $SOURCE $TARGET
