$$ \begin{aligned} 
L_{1} &= \left[0,\frac{\pi}{2},...,2\pi\right]\\
L_{11} &=\ L_{1}\left[2...\operatorname{count}\left(L_{1}\right)\right]\\
s_{tart} & =\ 1\\
e_{nd} &=\ \operatorname{count}\left(L_{11}\right)\\
c_{1}\ &=\ \operatorname{rgb}\left(255,0,0\right)\\
P_{1} &=\ \left(\cos\left(L_{11}\right)+\cos\left(a\right),\sin\left(L_{11}\right)+\sin\left(a\right)\right)\\
P_{2} &=\ 0.5\left(\cos\left(L_{11}\right)-\cos\left(a\right),\sin\left(L_{11}\right)-\sin\left(a\right)\right)\\
a &=\ 5.792311455056181\\
S_{1}\ &=\ \operatorname{segment}\left(P_{1},P_{2}\right)S_{2}\ =\operatorname{segment}\left(P_{1}\left[N_{1}\right],P_{1}\left[N_{2}\right]\right)\\
S_{2}\ &=\ \operatorname{segment}\left(P_{1}\left[N_{1}\right],P_{1}\left[N_{2}\right]\right)\\
S_{3}\ &=\ \operatorname{segment}\left(P_{2}\left[N_{1}\right],P_{2}\left[N_{2}\right]\right)\\
F_{1} &=\ \operatorname{polygon}\left(P_{1}\right),\operatorname{polygon}\left(P_{2}\right)\\
N_{1} &=\ \left[s_{tart},...,e_{nd}\right]\\
l_{1} &=\ N_{1}\left[2...\right]\\
l_{2} &=\ N_{1}\left[1...\right]\\
i\ &=\ \ \left[1,...,\operatorname{count}\left(l_{1}\right)+\operatorname{count}\left(l_{2}\right)\right]\\
l_{s} &=\ \sum_{n=i}^{i}\left\{n\le\operatorname{count}\left(l_{1}\right):l_{1}\left[n\right],\ l_{2}\left[n-\operatorname{count}\left(l_{1}\right)\right]\right\}\\
N_{2} &=\ l_{s}\left[s_{tart}...e_{nd}\right]\\
\end{aligned} $$