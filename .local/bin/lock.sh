 
#!/bin/sh

B='#00000000'  	# blank
C='#2a2b2a22'  	# clear ish
DL='#99aab5cc'	# default lighter
D='#2c2f33cc'  	# default
T='#ffffffff'  	# text
W='#7c0305bb'  	# wrong
V='#056ab2bb'  	# verifying

/usr/bin/i3lock 		\
--insidevercolor=$D   	\
--ringvercolor=$C     	\
\
--insidewrongcolor=$D 	\
--ringwrongcolor=$W   	\
\
--insidecolor=$D      	\
--ringcolor=$DL        	\
--linecolor=$DL        	\
--separatorcolor=$DL   	\
\
--verifcolor=$T        	\
--wrongcolor=$T        	\
--timecolor=$T        	\
--datecolor=$T        	\
--layoutcolor=$T      	\
--keyhlcolor=$V      	\
--bshlcolor=$W        	\
\
--screen 2            	\
--color='#2c2f33cc'		\
--radius 300		  	\
--clock               	\
--indicator           	\
--timestr="%H:%M"  		\
--datestr="%A %d %b" 	\
\
--veriftext=""			\
--wrongtext=""			\
--timepos="3040:525"	\
--datepos="3040:625"	\
--timesize=74			\
--datesize=54			\
--layoutsize=0			\
--wrongtext="(✖╭╮✖)" 	\
#--no-verify				\
#--blur 5              	\
#--keylayout 2         	\
# --modsize=10
# --timefont=comic-sans
# --datefont=monofur
# etc
