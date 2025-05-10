### 240812 - Desmos 2D: Sparkling and Rotating Diamond
- ![[Pasted image 20240813123421.png]]
- ![[Pasted image 20240813125825.png]]
- $$\begin{aligned}
L_{1}&=\left[0,\frac{2\pi}{n_{elem}},...,2\pi\right]\\
P_{1}&=\left(\cos\left(b\right)\cos\left(L_{1}+a\right),\sin\left(L_{1}+a\right)\right)\\
P_{2}&=s_{c}\left(\cos\left(b\right)\cos\left(L_{1}+\frac{\pi}{n_{elem}}+a\right),\sin\left(L_{1}+\frac{\pi}{n_{elem}}+a\right)\right)\\
G_{1}&=\operatorname{rotate}\left(\operatorname{translate}\left(P_{1},\left(\left(1+0.25\cos\left(b+\frac{\pi}{2}\right)\right),0\right),\left(\left(1+0.25\cos\left(b-\frac{\pi}{2}\right)\right),0\right)\right),\left(0,0\right),c\right)\\
G_{2}& =\ \operatorname{rotate}\left(P_{2},\left(0,0\right),c\right)\\
G_{3}&=\operatorname{rotate}\left(\operatorname{dilate}\left(\operatorname{translate}\left(P_{2},\left(\left(1-0.75\cos\left(b+\frac{\pi}{2}\right)\right),0\right),\left(\left(1-0.75\cos\left(b-\frac{\pi}{2}\right)\right),0\right)\right),\left(\left(-1.5\cos\left(b-\frac{\pi}{2}\right)\right),0\right),0.01\right),\left(0,0\right),c\right)\\
S_{1}&=\operatorname{segment}\left(G_{1},G_{2}\right)\\
S_{2}&=\operatorname{segment}\left(G_{1}\left[i_{ndex},...,\operatorname{count}\left(L_{1}\right)\right],G_{2}\left[i_{ndex}-1,...,\operatorname{count}\left(L_{1}\right)-1\right]\right)\\
S_{3}&=\operatorname{segment}\left(G_{2},G_{3}\right)\\
a=&0.445\\
b=&1.97\\
c=&1.6\\
i_{ndex}&=1\\
n_{elem}&=12\\
s_{c}&=1.316\\
s_{tar}& =\operatorname{translate}\left(\operatorname{dilate}\left(\operatorname{polygon}\left(\left(1,0\right),\left(0.25,0.25\right),\left(0,1\right),\left(-0.25,0.25\right),\left(-1,0\right),\left(-0.25,-0.25\right),\left(0,-1\right),\left(0.25,-0.25\right)\right),\left(0,0\right),0.2\operatorname{random}\left(n_{elem},s_{ize}\right)\right),\left(0,0\right),\ G_{1}\right)\\
s_{tar}&\ =\operatorname{translate}\left(\operatorname{dilate}\left(\operatorname{polygon}\left(\left(1,0\right),\left(0.25,0.25\right),\left(0,1\right),\left(-0.25,0.25\right),\left(-1,0\right),\left(-0.25,-0.25\right),\left(0,-1\right),\left(0.25,-0.25\right)\right),\left(0,0\right),0.2\operatorname{random}\left(n_{elem},s_{ize}\right)\right),\left(0,0\right),\ G_{2}\right)\\
s_{ize}&=0.14\\
\end{aligned}$$