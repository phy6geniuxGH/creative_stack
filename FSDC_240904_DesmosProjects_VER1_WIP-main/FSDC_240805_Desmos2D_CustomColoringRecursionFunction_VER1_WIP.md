### 240805 - Desmos 2D: 6. Custom Coloring and Recursion Function
- ![[Pasted image 20240805104934.png]]
- $$ \begin{aligned} c &=\left[0,15,...,255\right]\\
C &=\ \operatorname{rgb}\left(c,\ g,\ b\right)\\
b &=59\\
g&=255\\
P_{1} & =\ \left(\cos\left(w\right)o\cos\left(a\right),o\sin\left(a\right)\right),\left(-\cos\left(w\right)o\sin\left(a\right),o\cos\left(a\right)\right),\left(-\cos\left(w\right)o\cos\left(a\right),-o\sin\left(a\right)\right),\left(o\cos\left(w\right)\sin\left(a\right),-o\cos\left(a\right)\right)\\
w &=0.67\\
a &=0.026\\
A_{1}&=\operatorname{polygon}\left(P_{1}\right)\\
T&=\operatorname{angle}\left(\left(0,0\right),\left(1,1\right),\left(0,n_{1}\right)\right)\\
G_{1}\left(P\right)&=\operatorname{rotate}\left(\operatorname{dilate}\left(P,\left(0,0\right),1.11\right),\left(0,0\right),T\right)\\
n_{1}&=5.71\\
f\left(P\right)& =\ G_{1}\left(f\left(P-1\right)\right)\\
f\left(0\right)& =\ A_{1}\\
f\left(n\right)& \operatorname{for}\ n=\left[1...30\right]\\
m &=0.7\\
n &=\frac{m}{\operatorname{count}\left(C\right)}\\
o &=0.8\\
\end{aligned}$$