#!/bin/bash

# Define match titles
MATCH="2025 RD8 THIRDS PREM AJAX vs. St Bernards"
Q1="0266"
Q2="0267"
Q3="0268"
Q4="0269"

# Encode and export each quarter
ffmpeg -ss 00:00:00 -i "MVI_$Q1.MP4" -c:v libx264 -b:v 1300k -minrate 1300k -maxrate 1300k -bufsize 2600k -c:a aac -b:a 128k -pix_fmt yuv420p "../OUTPUT/Q1 $MATCH.mp4" &&
ffmpeg -ss 00:00:00 -i "MVI_$Q2.MP4" -c:v libx264 -b:v 1300k -minrate 1300k -maxrate 1300k -bufsize 2600k -c:a aac -b:a 128k -pix_fmt yuv420p "../OUTPUT/Q2 $MATCH.mp4" &&
ffmpeg -ss 00:00:00 -i "MVI_$Q3.MP4" -c:v libx264 -b:v 1300k -minrate 1300k -maxrate 1300k -bufsize 2600k -c:a aac -b:a 128k -pix_fmt yuv420p "../OUTPUT/Q3 $MATCH.mp4" &&
ffmpeg -ss 00:00:00 -i "MVI_$Q4.MP4" -c:v libx264 -b:v 1300k -minrate 1300k -maxrate 1300k -bufsize 2600k -c:a aac -b:a 128k -pix_fmt yuv420p "../OUTPUT/Q4 $MATCH.mp4"