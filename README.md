# docker-php-code-sniffer
PHP Code beautifier for docker


###How to use this with `Sublime Text 3` on `Ubuntu`?

**To use this you need docker installed.**


1. Install this sublime text plugin
https://packagecontrol.io/packages/Phpcs

2. clone this repo 
```bash
git clone https://github.com/kalehrishi/docker-phpcs.git
cd docker-phpcs
sudo cp phpcs.sh /usr/local/bin/phpcs
sudo cp phpcbf.sh /usr/local/bin/phpcbf

```
3. Open `Preferences > Package Settings > PHP Code Sniffer > Settings - User`
4. Copy these settings

```json
{
	"phpcs_executable_path": "/usr/local/bin/phpcs",
	"phpcbf_executable_path": "/usr/local/bin/phpcbf",
	"phpcbf_additional_args": {
        "--standard": "PSR2",
        "-n": "",
        "--no-patch":""
    }
}
```
5. on every save it will show errors in code
6. to fix errors automatically `Ctrl + Shift + P` and select option `PHP Coding Standard Fixed: Fix this file ( PHP Code Beautifier )`
