# Mark/Recal
Mark/Recal adds 3 commands to bash that are usefull when working in multiple directories
## Usage
### Mark
Usage: `mark [index]`
Marks the current working diretory for future recal.  If no arg is given, the dir is written to `~/markRecal/mark`. \
If an arg is given the cwd is instead written to that specific line of `~/markRecal/mark.list`. (index starts at 1)

### Recal 
Usage: `recal [index]`
Returns to the marked directory.  If no arg is given, the dir used is the content of `~/markRecal/mark`. \
If an arg is given the specific line of `~/markRecal/mark.list` is used. (index starts at 1)

### Swap
Usage: `swap [index]`
Recals to the target directory at the same time as marking the current directory.  Usefull for when you have 2 directories you are frequently switching between.\
Similar to mark and recal, if no arg is given `~/markRecal/mark` is used, or if an arg is used, a specific line of `~/markRecal/mark.list` is swapped instead.

## Install
1. download `installMarkRecal.sh` and put it anywhere 
2. make it executable (`chmod +x installMarkRecal.sh`)
3. add `source pathto/installMarkRecal.sh` in `.bashrc` or your prefered configuration
