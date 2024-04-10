mkdir ="Converted"
for %%i in (*.mp4) do ffmpeg -i "%%i" -acodec copy -f segment -segment-time 60 -vcodec copy
-reset_timestamps 1 -map 0 "Converted\%%~ni%%03d.mp4"