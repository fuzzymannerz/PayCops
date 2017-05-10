# PayCops
## Crime **does** pay! At a set time frame, between a set amount.

![Screenshot](https://forum.fivem.net/uploads/default/original/2X/4/435cc8b77cf5802557a7c4d39c80a501b94662c2.png)

### Requirements
* [CopsFiveM](https://forum.fivem.net/t/release-cops-fivem-v1-0-1/17460/8) (Lite Version) _(and its requirements, obviously)_

### Installation
1. Install requirements
2. Download the zip from [here](https://github.com/fuzzymannerz/PayCops/archive/master.zip).
3. Unzip into the "_resources_" folder on your server and rename to "_PayCops_".
4. Add `- PayCops` to _citmp-server.yml_ in your server root.
5. Set the MySQL settings at the top of _server.lua_ 
6. Restart server

### Customization &amp; Defaults
There are a few settings that can be changed to alter the pay system.
Settings are at the top of both _client.lua_ and _server.lua_.

#### server.lua Settings
* **MySQL Database settings** - Self explanatory.
* **minSalary = _int_** - The lowest possible paycheck. _(Default is 450)_
* **maxSalary = _int_** - The maximum possible paycheck. _(Default is 2500)_
**Salary will be a random number between _minSalary_ and _maxSalary_ amounts.**

#### client.lua Settings
* **paytime = _int_** - The amount of time (in minutes) between each paycheck. _(Default is 10)_
