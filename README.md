# SSH LIST (CLI)
##### Here the code how to manage your ssh list connection with simple function using bash in linux.

#### How To Use ?

1. prepare and set your ssh connection inside file ***ssh-list.json***

	The command format consists of :
	- **name** : Initialize your ssh connections in lists of commands.
	-  **value** : The command which is to execute your ssh connection.

	**For Example :**

	```json
		[
		  {
		    "name": "AWS01",
		    "value": "{PATH_OF_YOUR_PUBLIC_KEY}{REMOTE_USERNAME}@{REMOTE_HOST} -p {REMOTE_PORT}"
		  }
		]
	```

2. Secure your files with root accesible :
	>- sudo chown root:root -R /path/to/application
	>- sudo chmod 700 -R /path/to/application

3. run the function using commands :
	> sudo /path/to/application/ssh.sh
