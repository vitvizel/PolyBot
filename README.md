PolyBot

This is a simple python telegram bot in a docker container. I built it in amd64 and arm64 in parallel and deployed it running the command docker buildx build --platform linux/amd64,linux/arm64 --push -t .

Deployment:

To deploy this project run

docker run -d --platform linux/amd64 --restart always --name polybot docker.io/vitvizel/polybot:v1 If your machine is based on arm64 (m1 mac, etc..) run this instead

docker run -d --platform linux/arm64 --restart always --name polybot docker.io/vitvizel/polybot:v1

inorder to download a video just send it the word: "Download" and then insert the video name you want it to download like so..  you should be able to receive the Video to the chat after it was downloaded. note** the Videos must be short as due to a timeout issue each large video will consume alot of time(the bot will upload only one file to the user which is the latest) Note** it should take time to upload the video to the chat so be patient.

For Any Further Question reach me out please.