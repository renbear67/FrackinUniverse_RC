#!/bin/bash
for PRODUCE do
	gawk -f pricescript.gawk $PRODUCE > new/$PRODUCE
done