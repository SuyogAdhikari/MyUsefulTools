# The Bitdefender Endpoint Security Tools Installer
## Protecting your computer from evil viruses since 2023!

Greetings Earthling! Are you tired of constantly worrying about your computer getting infected by malicious software? Well, worry no more! Introducing the Bitdefender Endpoint Security Tools Installer, your one-stop-shop for top-notch computer protection. 

To start, simply run the script and enter your company hash (or face the consequences). The script will then download and install the Bitdefender software, ensuring your computer stays safe and secure. And don't worry, we won't break anything - if the software is already installed, the script will just move right along. 

But wait, there's more! If you want to push the installation through Active Directory, we've got you covered. Follow these simple steps to change the Active Directory PowerShell execution policy: 

1. Create a new Active Directory GPO. 
2. Open the GPO for editing. 
3. In the GPO editor, select Computer Configuration > Policies > Administrative Templates > Windows Components > Windows PowerShell. 
4. Right-click "Turn on script execution", then select "Edit". 
5. In the window that appears, click the "Enabled" radio button. 
6. In the "Execution Policy" drop-down, select Allow local scripts and remote signed scripts. 
7. Click "OK" to accept the changes. 
8. Close the Group Policy Object editor to save your changes. 
9. Deploy the GPO. 

And that's it! You're all set to install the Bitdefender Endpoint Security Tools through Active Directory. Just one final step - set the Logon Script Delay to 0. 

Computer Configuration\Administrative Templates\System\Group Policy\ Logon Script Delay Set it to 0. 

So what are you waiting for? Download the script and protect your computer today! 
