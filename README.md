# LaTeX-progress-bar
Progress bar for documents in Latex

## Getting Started
For now works only on Linux.

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
