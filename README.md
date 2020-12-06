# LaTeX-progress-bar
Progress bar for documents in Latex

## WORK IN PROGRESS
For now it works only on Linux and only if you give use it like this:
```
progress project-*.tex 25
```

## Getting Started
 - Tested only on Linux.
 - One page equal `1800` characters
 - Uses detex to get only text characters count

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
usage: progress tex_file goal [len]
	tex_file: 	filename of your tex file
	goal: 		pages goal
	optional:
	len: 		progress bar length (default=80)
```

You can add it to your Makefile like this:
```
   progress:                                                                       
      @progress "prefix-of-your-tex-files-*.tex" goal 80                              
```
Then add progress to your default Makefile target, or run:
```
make progress
```

### TODO:
- Decimal numbers
- Arguments validation
