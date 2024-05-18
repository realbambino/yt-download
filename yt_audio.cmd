@echo off

rem You can change the quality of the audio by changing the bitrate.
rem If you want the original file, just remove the "--audio-quality" argument

rem Also you can change the container to any audio file.
rem For example, if you want the donwloaded container to be MP3, change the audio codec to MP3.
rem It's default set to M4A, you can change it in the "--audio-format" argument for other format(s).

rem Supported are: aac, alac, flac, m4a, mp3, opus, vorbis.
rem NOTE: You will need FFMPEG to convert to other format.

yt-dlp -a download.txt -x -f "bestaudio[acodec^=mp4a]" --audio-quality 256K --audio-format m4a -o "%%(title)s.%%(ext)s"