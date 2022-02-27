import os;
import os.path;
import pathlib;

VIM_PLUGIN_DIR = "{}/.vim/bundle".format(pathlib.Path.home())

for f in os.listdir(VIM_PLUGIN_DIR):
	plugin_dir = os.path.join(VIM_PLUGIN_DIR, f)
	if os.path.isdir(plugin_dir):
		print("====================")
		print("recover dir: ", f)
		print(os.popen("git -C {} checkout .".format(plugin_dir)).read())

