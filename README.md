        SCRIPT TO CONFGURE SINCRONIZATION OF RETROPIE SAVEGAMES
        USING OWNCLOUD//NEXTCLOUD
        
        
        The script will configure automatically a new savestate and savefile
        location for all the cores, it will also add a runcommand-onend and
        runcommand-onstart lo sincronze the individual core saves before and
        after the game sesion.
        It will be also added a line to /etc/rc.local to do a sincronization at
        boot
        
                                **** WARNING ****
        
        IS RECOMENDED TO USE A SEPARATE OWNCLOUD/NEXCLOUD ACCOUNT FOR THIS USAGE.
        THE CREDENTIALS WILL BE STORED ON PLAIN TEXT AT:
        
        $HOME/.savesync/saveconfig
        
                                *****************
        
        
        USAGE: 

            ./configuresavesync -u username -p password -l /home/pi/RetroPie/saves 
            -o https://my.owncloud.nexcloud.server/remote.php/webdav/Retropie/saves
            
            To use the scrip add ALL this options with valid data, the script
            will not check if they are valid.
            
            -l <Full path to savegames location>
            
            -o <Full URL to Webdav owncloud/nexcloud savegames location> this 
                folder MUST be already created on the server
            
            -u <owncloud/nextcloud username>
            
            -p <owncloud/nextcloud username>
            
            
            
        If owncloudcmd is not located at /usr/local/bin/ the script will give
        you the option to compile the owncloud client from the owncloud-client
        github sources. This will take near 30 minutes on a raspberry pi 2 or 3.
        
        