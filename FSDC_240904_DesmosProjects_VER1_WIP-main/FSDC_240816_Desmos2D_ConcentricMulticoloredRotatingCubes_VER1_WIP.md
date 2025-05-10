### 240816 - Desmos 2D: Concentric multicolored rotating cubes
- ![[Pasted image 20240816121236.png]]
- $$\begin{aligned} &\cos\left(b\right)\\
&\sin\left(b\right)\\
&\cos\left(b+\frac{\pi}{2}\right)\\
&\sin\left(b+\frac{\pi}{2}\right)\\
&\cos\left(b+\pi\right)\\
&\sin\left(b+\pi\right)\\
&\cos\left(b+\frac{3\pi}{2}\right)\\
&\sin\left(b+\frac{3\pi}{2}\right)\\
&\cos\left(b+2\pi\right)\\
&\sin\left(b+2\pi\right)\\
P_{1}& =\ \left(\left(x_{1}\cos\left(a\right)+\frac{\sqrt{2}}{2}\cos\left(A\right),y_{1}\right)\right)\\
P_{2}& =\ \left(\left(x_{1}\cos\left(a\right)-\frac{\sqrt{2}}{2}\cos\left(A\right)\right),y_{1}\right)\\
&\operatorname{segment}\left(P_{1},P_{2}\right)\\
&\operatorname{polygon}\left(P_{1}\right),\operatorname{polygon}\left(P_{2}\right),\ \operatorname{polygon}\left(P_{1}\left[1\right],P_{1}\left[2\right],P_{2}\left[2\right],P_{2}\left[1\right]\right),\operatorname{polygon}\left(P_{1}\left[2\right],P_{1}\left[3\right],P_{2}\left[3\right],P_{2}\left[2\right]\right),\operatorname{polygon}\left(P_{1}\left[3\right],P_{1}\left[4\right],P_{2}\left[4\right],P_{2}\left[3\right]\right),\operatorname{polygon}\left(P_{1}\left[4\right],P_{1}\left[5\right],P_{2}\left[5\right],P_{2}\left[4\right]\right)\\
G_{1}&=\operatorname{polygon}\left(2P_{1}\right),\operatorname{polygon}\left(2P_{2}\right),\operatorname{polygon}\left(2P_{1}\left[1\right],2P_{1}\left[2\right],2P_{2}\left[2\right],2P_{2}\left[1\right]\right),\operatorname{polygon}\left(2P_{1}\left[2\right],2P_{1}\left[3\right],2P_{2}\left[3\right],2P_{2}\left[2\right]\right),\operatorname{polygon}\left(2P_{1}\left[3\right],2P_{1}\left[4\right],2P_{2}\left[4\right],2P_{2}\left[3\right]\right),\operatorname{polygon}\left(2P_{1}\left[4\right],2P_{1}\left[5\right],2P_{2}\left[5\right],2P_{2}\left[4\right]\right)\\
\operatorname{rotate}\left(G_{1},\left(0,0\right),d\right)\\
d&=5.604\\
A&=2.567\\
a&=A\ +\ \frac{\pi}{2}\\
b&=3.35\\
c_{1}&=\operatorname{rgb}\left(200,190,45\right)\\
c_{2}&=\operatorname{rgb}\left(15,140,212\right)\\
c_{3}&=\operatorname{rgb}\left(164,32,232\right)\\
c_{4}&=\operatorname{rgb}\left(59,134,149\right)\\
c_{5}&=\operatorname{rgb}\left(203,142,100\right)\\
c_{6}&=\operatorname{rgb}\left(2,0,255\right)\\
C&=\left[c_{1},c_{2},c_{3},c_{4},c_{5},c_{6}\right]\\
c&=\ a_{1}\to a_{1}+1\\
c_{olor1}&=\ \left\{a_{1}=\ 1:C\left[1\right],\ a_{1}=2:C\left[2\right],a_{1}=3:C\left[3\right]\right\}\\
a_{1}&=3\\ \end{aligned}$$