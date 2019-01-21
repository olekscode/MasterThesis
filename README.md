# MasterThesis

To compile PDF run `make`, to remove auxilary files run `make clean`. The compiled PDF will be stored in `build/` folder
```
make
make clean
```
To add a comment anywhere in the text, use the following commands: `\ab{Comment}` for Alexandre Bergel, `\sd{Comment}` for Stephane Ducasse, `\oz{Comment}` for Oleksandr Zaitsev. You can define commands for other names in `src/main.tex`.
```LaTeX
\ab{Do this}
\sd{And that}
\oz{OK}
```