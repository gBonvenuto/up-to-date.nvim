# Caution

This plugin is my first Neovim plugin, and is thought to be only used by myself and friends. I understand that messing with git on the first plugin is probably not a good idea, so do not trust this plugin in the sense that it will work completely fine.

Most of it's actions, if they fail, will not cause harm to your configuration, but will simply not work. But if you suspect a feature from this plugin could possibly cause harm, do the following:

1. Make a commit of your current configuration
2. Push it
3. Read this plugin code to see if it is doing what you expect it to do
4. Modify it to your needs

or simply don't use it.

I'll make sure to show a warning every time this plugin is about to do something that may break your config if something goes wrong.

# up-to-date.nvim

This plugin is for those that have a Neovim configuration in a git repository and always forget to pull when using a computer with an old configuration. That is, their `./config/nvim/` (or similar) is a git repo.
