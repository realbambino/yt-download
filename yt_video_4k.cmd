@echo off

rem This script will download all video's specified in the "download.txt" file.
rem 4K files will be downloaded by default, if the video is NOT a 4K video,
rem then the 1080p version will be downloaded instead.

rem Subtitles, chapters will also be downloaded and embedded into the video. With the exception of Live Chat.
rem Sponsorblock is ACTIVE by default.

yt-dlp -a download.txt -f "bestvideo[height<=2160]+bestaudio[acodec^=mp4a]/best[height<=2160]" --merge-output-format mkv --audio-quality 0 --sub-langs all,-live_chat --embed-subs --embed-chapters --sponsorblock-mark all --merge-output-format mkv -o "%%(title)s (4K).%%(ext)s"