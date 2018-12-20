fswebcam -d /dev/video0 -r 1280x1024 --banner-colour \#FF000000 --line-colour \#FF000000 /home/pi/Pictures/image.jpg
fswebcam -d /dev/video1 -r 1280x1024 --banner-colour \#FF000000 --line-colour \#FF000000 /home/pi/Pictures/image-2.jpg
#fswebcam --banner-colour \#FF000000 --line-colour \#FF000000 /home/pi/Pictures/image2.jpg
sleep 1
scp /home/pi/Pictures/image.jpg user@host.com:~/host.com/cam/image.jpg
scp /home/pi/Pictures/image-2.jpg user@host.com:~/host.com/cam/image2.jpg
