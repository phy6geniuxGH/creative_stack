$$
\begin{aligned}
L_{1}\ &=\ \left[0,\frac{\pi}{10},...,\pi\right]\\

P_{1}&=\ \left(\cos\left(L_{1}\right),\sin\left(L_{1}\right)\right)\\

A_{1}&=\operatorname{polygon}\left(P_{1}\right)\\

A_{2}&=\operatorname{polygon}\left(\left(1,0\right),\left(-1,0\right),\left(-1,-2\right),\left(-0.5,-2\right),\left(-0.5,-1\right),\left(0.5,-1\right),\left(0.5,-2\right),\left(1,-2\right),\left(1,0\right)\right)\\

R_{1}&=\operatorname{rotate}\left(A_{1},\left(0,0\right),r_{ot}\right)\\

R_{2}&=\operatorname{rotate}\left(A_{2},\left(0,0\right),r_{ot}\right)\\

r_{ot}&=2.34\\

f_{ill}\ &=\ \operatorname{rgb}\left(255,255,255\right)\\

L_{2}&=\ L_{1}+\pi\\

P_{2}&=\left(\cos\left(L_{2}\right),\sin\left(L_{2}\right)\right)\\

A_{3}\ &=\ \operatorname{polygon}\left(0.5\cdot P_{1}\right),\operatorname{polygon}\left(0.5\cdot P_{2}\right)\\

S_{1}&=\operatorname{segment}\left(\left(2,1\right),\left(2,-1\right)\right)\\

S_{12}&=\operatorname{rotate}\left(S_{1},\left(0,0\right),r_{ot}-\frac{\pi}{2}\right)\\

R_{eflect1}&=\operatorname{reflect}\left(R_{2},S_{12}\right)\\

\end{aligned}
$$