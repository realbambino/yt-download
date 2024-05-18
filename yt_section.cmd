@echo off

rem Check if three arguments are provided
if "%3"=="" goto USAGE

rem Assigning arguments to variables
echo Creating variables...
set start_time=%1
set end_time=%2
set video_id=%3

echo Constructing URL...
rem Constructing the URL with the specified start and end times
set url="https://www.youtube.com/watch?v=%video_id%"

rem Downloading the video using yt-dlp
yt-dlp --download-sections *0:%start_time%-0:%end_time% -f "bestvideo[height<=2160][vcodec^=avc1][protocol!*=dash]+bestaudio[acodec^=mp4a]/best[height<=2160]" --merge-output-format mp4 --audio-quality 0 -o "%%(title)s (section).%%(ext)s" "%url%"
goto end

:USAGE
echo Usage: yt_section [start_time] [end_time] [video_id]
echo.
echo Note: The start time and end time MUST be written in "00:00" format.
echo.

:end