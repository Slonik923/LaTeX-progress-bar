# LaTeX-progress-bar
Progress bar for documents in Latex

## Getting Started
Tested only on Linux.

## Installing 
### Linux
1. Copy the script to directory with your `.tex` files, or add it to your PATH variable.
2. Make script executable(`chmod +x progress`)

### Windows 
Never tried, but in theory should work. You can try [this tutorial](https://www.howtogeek.com/261591/how-to-create-and-run-bash-shell-scripts-on-windows-10/).

Planning on testing on Windows.

## Running the script
Running script with no arguments gives you this:

```
usage: progress current goal [len]
	current: 	current value
	goal: 	pages goal
	optional:
	len: 	progress bar length (default=80)
```
So for example:
```
./progress test*.tex 45 80
```
Will find all .tex files with prefix 'test' in current directory and your goal is 45 pages.


You can add it to your Makefile like this:
```
   progress:                                                                       
      @progress "prefix-of-your-tex-files-*.tex" goal 80                              
```
Then add progress to your default Makefile target, or run:
```
make progress
```
