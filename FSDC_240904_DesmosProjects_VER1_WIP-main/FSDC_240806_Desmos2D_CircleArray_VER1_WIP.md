### 240806 - Desmos 2D: 7. Circle Array
- ![[Pasted image 20240806104305.png]]
- $$\begin{aligned} A & =\ \left[0,1,2,...,n^{2}-1\right]\\
X & =\ \operatorname{mod}\left(A,n\right)\\
Y & =\ \operatorname{floor}\left(\frac{A}{n}\right)\\
n & =10\\
P_{1} & =\left(X,Y\right)\\
P_{2} & =\operatorname{reflect}\left(P_{1},\operatorname{segment}\left(\left(0,0\right),\left(0,1\right)\right)\right)\\
P_{3} & =\operatorname{reflect}\left(P_{2},\operatorname{segment}\left(\left(-1,0\right),\left(1,0\right)\right)\right)\\
P_{4} & =\operatorname{reflect}\left(P_{1},\operatorname{segment}\left(\left(-1,0\right),\left(1,0\right)\right)\right)\\
S_{1} & =\operatorname{circle}\left(P_{1},\frac{A}{100}\right)\\
S_{2} & =\operatorname{circle}\left(P_{2},\frac{A}{100}\right)\\
S_{3} & =\operatorname{circle}\left(P_{3},\frac{A}{100}\right)\\
S_{4} & =\operatorname{circle}\left(P_{4},\frac{A}{100}\right)\\
\end{aligned}$$