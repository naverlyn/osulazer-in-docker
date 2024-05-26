# using archlinux
FROM archlinux

# commands
RUN yes | pacman -Syu --noconfirm
RUN yes | pacman -S mesa-utils mesa alsa-lib pulseaudio --noconfirm
ADD squashfs-root/ /osu/
CMD [ "/osu/usr/bin/osu!" ]



# RUN wget https://github.com/ppy/osu/releases/download/2024.521.2/osu.AppImage /root/osu
# CMD [ "glxgears" ]
# CMD [ "/root/osu/squashfs-root/usr/bin/osu!" ]


# RUN chmod +x osu.AppImage

# RUN export APPIMAGE_EXTRACT_AND_RUN=1

# CMD [ "./osu.appImage",  "--appimage-extract-and-run" ] 
