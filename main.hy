#!/usr/bin/env hy

(import [moviepy.editor[*]])
(import sys)
(import random)

(defn take_clip [input_file]
    (as-> input_file video
        (VideoFileClip (.join "" video)) 
        (.subclip video 50 60)) 
        (.write_videofile (CompositeVideoClip [video]) "myHolidays_edited.mp4"))

(take_clip (get sys.argv 1))
    

; Porting next moviepy tutorial code: 
; # Load myHolidays.mp4 and select the subclip 00:00:50 - 00:00:60
; clip = VideoFileClip("myHolidays.mp4").subclip(50,60)

; clip = clip.volumex(0.8)

; # Generate a text clip. You can customize the font, color, etc.
; txt_clip = TextClip("My Holidays 2013",fontsize=70,color='white')

; # Say that you want it to appear 10s at the center of the screen
; txt_clip = txt_clip.set_pos('center').set_duration(10)

; # Overlay the text clip on the first video clip
; video = CompositeVideoClip([clip, txt_clip])

; # Write the result to a file (many options available !)
; video.write_videofile("myHolidays_edited.webm")