### 240731 - Desmos 3D: 4. Tesseract Sample
- ![[Pasted image 20240731143824.png]]
$$\begin{aligned} P_{1}&=\left(\left(0.75+0.5\sin\left(c-\pi\right)\right)\cos\ a,\ \sin a,\ \cos\left(b\right)\right)\\
P_{2}&=\left(-\sin\ a,\ \left(0.75+0.5\sin\left(c-\pi\right)\right)\cos a,\cos\left(b\right)\right)\\
P_{3}&=\left(-\left(0.75+0.5\sin\left(c-\pi\right)\right)\cos\ a,\ -\sin a,\cos\left(b\right)\right)\\
P_{4}&=\left(\sin\ a,\ -\left(0.75+0.5\sin\left(c-\pi\right)\right)\cos a,\cos\left(b\right)\right)\\
P_{5}&=\left(\left(0.75+0.5\sin\left(c\right)\right)\cos\ a,\ \sin a,\ \cos\left(c\right)\right)\\
P_{6}&=\left(-\sin\ a,\ \left(0.75+0.5\sin\left(c\right)\right)\cos a,\ \cos\left(c\right)\right)\\
P_{7}&=\left(-\left(0.75+0.5\sin\left(c\right)\right)\cos\ a,\ -\sin a,\ \cos\left(c\right)\right)\\
P_{8}&=\left(\sin\ a,\ -\left(0.75+0.5\sin\left(c\right)\right)\cos a,\ \cos\left(c\right)\right)\\
G_{1}& =\ P_{1},P_{2},P_{3},P_{4},P_{1}\\
G_{2}& =\ sP_{5},sP_{6},sP_{7},sP_{8},sP_{5}\\
G_{3}& =\ -1.5P_{3},-1.5P_{4},-1.5P_{1},-1.5P_{2},-1.5P_{3}\\
G_{4}& =\ -1.5sP_{7},-1.5sP_{8},-1.5sP_{5},-1.5sP_{6},-1.5sP_{7}\\
=&\operatorname{segment}\left(G_{1},G_{2}\right)\\
=&\operatorname{segment}\left(G_{3},G_{4}\right)\\
=&\operatorname{segment}\left(G_{1},G_{3}\right)\\
=&\operatorname{segment}\left(G_{2},G_{4}\right)\\
s&=1.494\\
a&=0\\
b&=3.457\\
c&=-b\\ \end{aligned}$$
