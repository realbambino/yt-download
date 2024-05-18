@echo off

rem This script will download all video's specified in the "download.txt" file.
rem 1080p files will be downloaded by default, if the video is NOT a 1080p video,
rem then the 720p version will be downloaded instead.

rem Subtitles, chapters will also be downloaded and embedded into the video. With the exception of Live Chat.
rem Sponsorblock is ACTIVE by default.

yt-dlp -a download.txt -f "bestvideo[height<=1080][vcodec^=hevc]/bestvideo[height<=1080][vcodec^=avc1]+bestaudio[acodec^=mp4a]/best[height<=1080]" --sub-langs all,-live_chat --embed-subs --embed-chapters --convert-subs srt --sponsorblock-mark all --merge-output-format mkv --audio-quality 0 -o "%%(title)s (1080p).%%(ext)s"