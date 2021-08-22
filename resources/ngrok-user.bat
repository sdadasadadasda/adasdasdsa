@echo off
diskperf -Y >nul
sc start audiosrv >nul
echo All done! Connect your VM using RDP.
echo RDP By Avishkar Patil
echo IP:
echo Username: runneradmin
echo Password: ( Password That Put In Secrates )
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo NGROK Services is not Running
