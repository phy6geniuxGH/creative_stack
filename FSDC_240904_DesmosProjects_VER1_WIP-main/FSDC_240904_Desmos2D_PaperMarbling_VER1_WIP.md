### 240904 - Desmos 2D: Paper Marbling
- ![[Pasted image 20240904142454.png]]
- $$\begin{aligned} L_{1} &=\ \left[0,\ \frac{2\pi}{n},\ ...,\ 2\pi\right]\\
n &=1200\\
P_{1} & =4\ \left(\cos L_{1},\sin L_{1}\right)\\
P_{2} &=\ 4\left(\cos L_{1},\sin L_{1}\right)\\
P_{3} &=\operatorname{polygon}\left(\operatorname{rotate}\left(\operatorname{translate}\left(r_{c}\left(\cos\left(L_{1}\right),\sin\ L_{1}\right),\left(0,0\right),\left(5,0\right)\right),\left(0,0\right),a\right)\right)\\
r_{c} &=9\\
p_{c} &=\ 5\left(\cos a,\sin\ a\right)\\
& \operatorname{polygon}\left(p_{c}\ -\ \left(P_{1}\ -p_{c}\right)\cdot\sqrt{\left(1+\frac{1r_{c}^{2}}{\left|P_{1}-p_{c}\right|^{2}}\right)}\right)\\
& \operatorname{polygon}\left(p_{c}\ +\ \left(P_{2}\ -p_{c}\right)\cdot\sqrt{\left(1+\frac{1r_{c}^{2}}{\left|P_{2}-p_{c}\right|^{2}}\right)}\right)\\
\end{aligned}$$