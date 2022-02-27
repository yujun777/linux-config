import os;
import os.path;
import pathlib;

PATCH_DIR = os.path.dirname(os.path.abspath(__file__))
VIM_PLUGIN_DIR = "{}/.vim/bundle".format(pathlib.Path.home())
DIFF_SUFFIX = ".diff"

for f in os.listdir(PATCH_DIR):
	if f.endswith(DIFF_SUFFIX):
		plugin_name = f[:-len(DIFF_SUFFIX)]
		plugin_dir = os.path.join(VIM_PLUGIN_DIR, plugin_name)
		diff_file = os.path.join(PATCH_DIR, f)
		print("====================")
		if os.path.exists(plugin_dir):
			print("process diff: ", f)
			print(os.popen("git -C {} checkout .".format(plugin_dir)).read())
			print(os.popen("git -C {} apply {}".format(plugin_dir, diff_file)).read())
		else:
			print("plugin dir not exists: ", plugin_dir)

