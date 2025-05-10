**Tags:** #mathematics #computergraphics #lineartransformation
**Fields of Focus:** [FOF_PROG]
___
### 240727 - Desmos 2D: 1. 3D Transformation Projection on a 2D Screen using Point Coordinate Function-Based Motion

- Base points: $$ P_{1}\ =\ s\left(\cos\left(d\right)\cdot\cos b,\sin b\right),\ s\left(-\cos\left(d\right)\cdot\sin b,\cos b\right),s\left(-\cos\left(d\right)\cdot\cos b,-\sin b\right),\ s\left(\cos\left(d\right)\cdot\sin\ b,-\cos b\right),\ s\left(\cos\left(d\right)\cdot\cos b,\sin b\right) $$ $$ P_{2}\ =\ \frac{1}{s}\left(\cos\left(d\right)\cdot\cos b,\sin b\right),\ \frac{1}{s}\left(-\cos\left(d\right)\cdot\sin b,\cos b\right),\frac{1}{s}\left(-\cos\left(d\right)\cdot\cos b,-\sin b\right),\ \frac{1}{s}\left(\cos\left(d\right)\cdot\sin\ b,-\cos b\right),\ \frac{1}{s}\left(\cos\left(d\right)\cdot\cos b,\sin b\right)$$
- Transformed points, step 1: $$ P_{a}\ =\ \operatorname{translate}\left(P_{1},-p_{xy1},\left(r_{sx1}\cos\left(c\right)\cos a,r_{sy1}\sin a\right)\right) $$ $$ P_{b}\ =\ \operatorname{translate}\left(P_{2},-p_{xy2},-\left(r_{sx1}\cos\left(c\right)\cos a,r_{sy1}\sin a\right)\right)$$
- Rendered Geometry: $$ P_{c}\ =\ \operatorname{rotate}\left(P_{a},\left(0,0\right),\ h_{r}\right)$$ $$ P_{d}\ =\ \operatorname{rotate}\left(P_{b},\left(0,0\right),\ h_{r}\right)$$ $$\operatorname{segment}\left(P_{c},P_{d}\right)$$
- Controls: $$ \begin{aligned} s &= 0.995 \;\;\textrm{(face scale)}\\
a & = [0 ,2\pi] \;\;\textrm{(shear scale)}\\ b &= 0, 0 to 2pi \;\;\textrm{(x-rot)}\\
c &= [0 ,2\pi] \;\;\textrm{(z-rot)}\\
d &= c + \pi/2 \;\;\textrm{(z-rot dependent on c)}\\
r_{sx1}\ &= 0.8 \;\;\textrm{(length scale)}\\
r_{sy1}\ &= 1.474 \;\;\textrm{(somehow useless?)}\\
p_{xy1}\ &=\ \left(0,0\right) \;\;\textrm{(face 2 position)}\\
p_{xy2}\ &=\ \left(0,0\right) \;\;\textrm{(face 2 position)}\\
h_r &= [0 ,2\pi] \;\;\mathbf{(y_{rot})}
\end{aligned}$$
![[Pasted image 20240726175000.png]]



### 240729 - Desmos 2D: 2. Hexagonal Polyhedra with Effects 3D Rotation in 2D screen
$$
P_{1}\ =\ \left(\left(\cos c\right)\cos\ a,\ \sin\ a\right)
$$
$$P_{2}\ =\ \left(-\left(\cos c\right)\sin\ \left(a-\frac{\pi}{6}\right),\ \cos\ \left(a-\frac{\pi}{6}\right)\right)
$$

$$P_{3}\ =\ \left(\left(\cos c\right)\cos\ \left(a-\frac{\pi}{3}\right),\sin\ \left(a-\frac{\pi}{3}\right)\right)
$$
$$P_{4}\ =\ \left(-\left(\cos c\right)\cos\ \left(a\right),\ -\sin\ a\right)$$
$$P_{5}\ =\ \left(\left(\cos c\right)\sin\ \left(a-\frac{\pi}{6}\right),\ -\cos\ \left(a-\frac{\pi}{6}\right)\right)
$$
$$P_{6}\ =\ \left(-\left(\cos c\right)\cos\ \left(a-\frac{\pi}{3}\right),-\sin\ \left(a-\frac{\pi}{3}\right)\right)$$
$$S_{1}\ =\ s\left(\left(\cos c\right)\cos\ a,\ \sin\ a\right),s\left(-\left(\cos c\right)\sin\ \left(a-\frac{\pi}{6}\right),\ \cos\ \left(a-\frac{\pi}{6}\right)\right),s\left(-\left(\cos c\right)\cos\ \left(a-\frac{\pi}{3}\right),-\sin\ \left(a-\frac{\pi}{3}\right)\right),s\left(-\left(\cos c\right)\cos\ \left(a\right),\ -\sin\ a\right),s\left(\left(\cos c\right)\sin\ \left(a-\frac{\pi}{6}\right),\ -\cos\ \left(a-\frac{\pi}{6}\right)\right),s\left(\left(\cos c\right)\cos\ \left(a-\frac{\pi}{3}\right),\sin\ \left(a-\frac{\pi}{3}\right)\right),s\left(\left(\cos c\right)\cos\ a,\ \sin\ a\right)$$
$$S_{2}\ =\ \frac{1}{s}\left(\left(\cos c\right)\cos\ a,\ \sin\ a\right),\frac{1}{s}\left(-\left(\cos c\right)\sin\ \left(a-\frac{\pi}{6}\right),\ \cos\ \left(a-\frac{\pi}{6}\right)\right),\frac{1}{s}\left(-\left(\cos c\right)\cos\ \left(a-\frac{\pi}{3}\right),-\sin\ \left(a-\frac{\pi}{3}\right)\right),\frac{1}{s}\left(-\left(\cos c\right)\cos\ \left(a\right),\ -\sin\ a\right),\frac{1}{s}\left(\left(\cos c\right)\sin\ \left(a-\frac{\pi}{6}\right),\ -\cos\ \left(a-\frac{\pi}{6}\right)\right),\frac{1}{s}\left(\left(\cos c\right)\cos\ \left(a-\frac{\pi}{3}\right),\sin\ \left(a-\frac{\pi}{3}\right)\right),\frac{1}{s}\left(\left(\cos c\right)\cos\ a,\ \sin\ a\right)$$

$$G_{1}=\operatorname{rotate}\left(\operatorname{dilate}\left(\operatorname{translate}\left(\operatorname{polygon}\left(P_{1},P_{2},P_{6},P_{4},P_{5},P_{3}\right),\left(\cos b,0\right),p_{xy1}\right),p_{xy1},s\right),\left(0,0\right),\ d\right)
$$
$$G_{2}=\operatorname{rotate}\left(\operatorname{dilate}\left(\operatorname{translate}\left(\operatorname{polygon}\left(P_{1},P_{2},P_{6},P_{4},P_{5},P_{3}\right),\left(-\cos b,0\right),p_{xy2}\right),p_{xy2},\frac{1}{s}\right),\left(0,0\right),d\right)$$
$$G_{3}=\operatorname{rotate}\left(\operatorname{dilate}\left(\operatorname{translate}\left(\operatorname{polygon}\left(P_{1},P_{2},P_{6},P_{4},P_{5},P_{3}\right),\left(0,0\right),\left(0,0\right)\right),\left(0,0\right),1.5\right),\left(0,0\right),d\right)$$

$$T_{1}=\ \operatorname{segment}\left(S_{a},S_{b}\right)$$
$$T_{2}=\operatorname{segment}\left(S_{a},S_{c}\right)
$$
$$T_{3}=\operatorname{segment}\left(S_{c},S_{d}\right)$$
$$T_{4}=\operatorname{segment}\left(S_{d},S_{b}\right)$$
$$S_{a}\ =\ \operatorname{rotate}\left(\operatorname{translate}\left(S_{1},\ \left(\cos b,0\right),p_{xy1}\right),\left(0,0\right),d\right)$$
$$S_{b}\ =\ \operatorname{rotate}\left(\operatorname{translate}\left(S_{2},\ \left(-\cos b,0\right),p_{xy2}\right),\left(0,0\right),d\right)$$
$$S_{c}\ =\ \operatorname{dilate}\left(\operatorname{rotate}\left(\operatorname{translate}\left(S_{1},\ \left(0.25\cos b,0\right),p_{xy1}\right),\left(0,0\right),d\right),p_{xy1},1.5\right)$$
$$S_{d}\ =\ \operatorname{dilate}\left(\operatorname{rotate}\left(\operatorname{translate}\left(S_{2},\ \left(-0.25\cos b,0\right),p_{xy2}\right),\left(0,0\right),d\right),p_{xy1},1.5\right)$$
$$\operatorname{segment}\left(S_{a},\left(0,0\right)\right)$$
$$\operatorname{segment}\left(S_{b},\left(0,0\right)\right)$$
$$\operatorname{segment}\left(S_{c},\left(0,0\right)\right)$$
$$\operatorname{segment}\left(S_{d},\left(0,0\right)\right)$$
$$\operatorname{circle}\left(P_{1},r_{c}\right),\operatorname{circle}\left(P_{2},r_{c}\right),\operatorname{circle}\left(P_{3},r_{c}\right),\operatorname{circle}\left(P_{4},r_{c}\right),\operatorname{circle}\left(P_{5},r_{c}\right),\operatorname{circle}\left(P_{6},r_{c}\right)$$
$$G_{4}=\operatorname{polygon}\left(P_{1},P_{2},P_{6},P_{4},P_{5},P_{3}\right)$$
$$G_{5}=\operatorname{rotate}\left(\operatorname{dilate}\left(\operatorname{polygon}\left(P_{1},-P_{2},P_{6},-P_{4},P_{5},-P_{3}\right),\left(0,0\right),0.5\right),\left(0,0\right),-f\right)$$
$$\begin{aligned} 

s & = [-2,2] \; \textrm{face scale}\\
a & = [0,2\pi] \; \textrm{x-rotation}\\
b & = [0,2\pi] \; \textrm{z-rotation}\\
c & = b+\dfrac{\pi}{2} \; \textrm{z-rotation}\\
d & = [0,2\pi] \; \textrm{y-rotation}\\
p_{xy1} & =\ \left(0,0\right)\\
p_{xy2} & =\ \left(0,0\right)\\
f & = [0,2\pi] \; \textrm{triangle rotation}\\
r_c & = [0.1,3] \; \textrm{circles scaling}\\



\end{aligned}$$
- ![[Pasted image 20240729135353.png]]

### 240731 - Desmos 2D: 3. Sphere Rendering in 2D Screen
- ![[Pasted image 20240731122413.png]]
$$L_{2}\ =\ \left[0,\frac{2\pi}{n_{num}},...,2\pi\right]$$
$$L_{3}=\ L_{2}\left[\operatorname{count}\left(L_{2}\right)...1\right]$$
$$i_{n}\ =\ \left[1,...,\operatorname{count}\left(L_{1}\right)\right]$$
$$\ G_{1}=\operatorname{rotate}\left(\operatorname{translate}\left(\operatorname{dilate}\left(\left(\cos\left(a\right)\cos\ L_{1},\sin L_{1}\right),\left(0,0\right),\sin\left(0.5S_{1}^{2}\right)\right),\left(0,0\right),\left(\cos\left(0.5S_{1}^{2}\right)\cos\left(a+\frac{\pi}{2}\right),0\right)\right),\left(0,0\right),b\right)\ \operatorname{for}\ L_{1}\ =\ \left[0,\frac{2\pi}{n_{num}},...,2\pi\right],\ S_{1}\ =\ \sqrt{2L_{2}}$$
$$A=\operatorname{segment}\left(G_{1}\left[mn_{num}+\left(m+1\right),...,\left(m+1\right)n_{num}+\left(m+1\right)\right],G_{1}\left[\left(m+1\right)n_{num}+\left(m+2\right),...,\left(m+2\right)n_{num}+\left(m+1\right)\right]\right)\ $$

$$n_{num}=80$$
$$a\ =0.576$$
$$b=0.157$$
$$m=21 \quad [0, \textrm{count}(L_2)]$$

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

### 240801 - Desmos 2D: 5. Another Sphere Rendering
- ![[Pasted image 20240801114252.png]]
- ![[Sphere.png]]
- $$\ G_{1}=\operatorname{rotate}\left(\operatorname{translate}\left(\operatorname{dilate}\left(\left(\cos\left(a\right)\cos\ L_{1},\sin L_{1}\right),\left(0,0\right),\sin\left(S_{1}\right)\right),\left(0,0\right),\left(\cos\left(S_{1}\right)\cos\left(a+\frac{\pi}{2}\right),0\right)\right),\left(0,0\right),b\right)\ \operatorname{for}\ L_{1}\ =\ \left[0,\frac{2\pi}{n_{num}},...,2\pi\right],\ S_{1}\ =\ \left[0,\frac{2\pi}{n_{num}},...,2\pi\right]$$
$$\ G_{2}=\operatorname{rotate}\left(\operatorname{translate}\left(\operatorname{dilate}\left(\left(\cos\left(a+\frac{\pi}{2}\right)\cos\ L_{1},\sin L_{1}\right),\left(0,0\right),\sin\left(S_{1}\right)\right),\left(0,0\right),\left(\cos\left(S_{1}\right)\cos\left(a\right),0\right)\right),\left(0,0\right),b\right)\ \operatorname{for}\ L_{1}\ =\ \left[0,\frac{2\pi}{n_{num}},...,2\pi\right],\ S_{1}\ =\ \left[0,\frac{2\pi}{n_{num}},...,2\pi\right]$$
$$A_{1}=\operatorname{segment}\left(G_{1}\left[mn_{num}+\left(m+1\right),...,\left(m+1\right)n_{num}+\left(m+1\right)\right],G_{1}\left[\left(m+1\right)n_{num}+\left(m+2\right),...,\left(m+2\right)n_{num}+\left(m+1\right)\right]\right)\ $$
$$A_{2}=\operatorname{segment}\left(G_{2}\left[mn_{num}+\left(m+1\right),...,\left(m+1\right)n_{num}+\left(m+1\right)\right],G_{2}\left[\left(m+1\right)n_{num}+\left(m+2\right),...,\left(m+2\right)n_{num}+\left(m+1\right)\right]\right)\ $$
- $a=2.62, b=2.436,n_{num}=32, m=8$

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
### 240807 - Desmos 2D: 8. Conditional Colors
- ![[Pasted image 20240807121440.png]]
- $$\begin{aligned} S_{1}&=\operatorname{polygon}\left(x_{1},y_{1}\right)\\
C &=\ \left[\operatorname{rgb}\left(0,0,0\right),\operatorname{rgb}\left(255,231,76\right),\ \operatorname{rgb}\left(255,89,100\right),\ 
\operatorname{rgb}\left(53,167,255\right)\right]\\
c &=\ a_{1}\to a_{1}+1\\
a_{1}&=3\\
d=&0.2\\
c_{olor1}& =\ \left\{a_{1}=\ 1:C\left[1\right],\ a_{1}=2:C\left[2\right],\ a_{1}=3:C\left[3\right],a_{1}=4:C\left[4\right]\right\}\\
c_{olor2}& =\ \left\{a_{1}=\ 1:C\left[2\right],\ a_{1}=2:C\left[3\right],\ a_{1}=3:C\left[4\right],a_{1}=4:C\left[1\right]\right\}\\
c_{olor3}& =\ \left\{a_{1}=\ 1:C\left[3\right],\ a_{1}=2:C\left[4\right],\ a_{1}=3:C\left[1\right],a_{1}=4:C\left[2\right]\right\}\\
c_{olor4}& =\ \left\{a_{1}=\ 1:C\left[4\right],\ a_{1}=2:C\left[1\right],\ a_{1}=3:C\left[2\right],a_{1}=4:C\left[3\right]\right\}\\
C_{G}& =\left[c_{olor1},c_{olor2},c_{olor3}\right]\\
S_{x}\left(x\right)& =\ \operatorname{translate}\left(x,\ \operatorname{vector}\left(\left(0,0\right),\left(2+d,0\right)\right)\right)\\
S_{y}\left(y\right)& =\ \operatorname{translate}\left(y,\ \operatorname{vector}\left(\left(0,0\right),\left(0,2+d\right)\right)\right)\\
f_{x}\left(n\right)&=S_{x}\left(f_{x}\left(n-1\right)\right)\\
f_{y}\left(n\right)&=S_{y}\left(f_{y}\left(n-1\right)\right)\\
f_{y}\left(0\right)& =\ S_{1}\\
f_{x}\left(0\right)& =\ S_{1}\\
& f_{x}\left(1\right)\\
& f_{x}\left(2\right)\\
& f_{x}\left(3\right)\\
& f_{y}\left(1\right)\\
& f_{y}\left(2\right)\\
& f_{y}\left(3\right)\\
\end{aligned}$$
### 240809 - Desmos 2D: Conditional Color Array
- ![[Pasted image 20240809142638.png]]
- $$ \begin{aligned}
S_{1} &=\operatorname{polygon}\left(x_{1},y_{1}\right)\\
C &=\ \left[\operatorname{rgb}\left(0,0,0\right),\operatorname{rgb}\left(255,231,76\right),\ \operatorname{rgb}\left(255,89,100\right),\ \operatorname{rgb}\left(53,167,255\right)\right]\\
c &=\ a_{1}\to a_{1}+1\\
a_{1}&=4\\
d&=0.2\\
c_{olor1}& =\ \left\{a_{1}=\ 1:C\left[1\right],\ a_{1}=2:C\left[2\right],\ a_{1}=3:C\left[3\right],a_{1}=4:C\left[4\right]\right\}\\
c_{olor2}& =\ \left\{a_{1}=\ 1:C\left[2\right],\ a_{1}=2:C\left[3\right],\ a_{1}=3:C\left[4\right],a_{1}=4:C\left[1\right]\right\}\\
c_{olor3}& =\ \left\{a_{1}=\ 1:C\left[3\right],\ a_{1}=2:C\left[4\right],\ a_{1}=3:C\left[1\right],a_{1}=4:C\left[2\right]\right\}\\
c_{olor4}& =\ \left\{a_{1}=\ 1:C\left[4\right],\ a_{1}=2:C\left[1\right],\ a_{1}=3:C\left[2\right],a_{1}=4:C\left[3\right]\right\}\\
C_{G}& =\left[c_{olor1},c_{olor2},c_{olor3}\right]\\
S_{x}\left(x\right)& =\ \operatorname{translate}\left(x,\ \operatorname{vector}\left(\left(0,0\right),\left(2+d,0\right)\right)\right)\\
S_{y}\left(y\right)& =\ \operatorname{translate}\left(y,\ \operatorname{vector}\left(\left(0,0\right),\left(0,2+d\right)\right)\right)\\
f_{x}\left(n\right)&=S_{x}\left(f_{x}\left(n-1\right)\right)\\
f_{y}\left(n\right)&=S_{y}\left(f_{y}\left(n-1\right)\right)\\
f_{y}\left(0\right)& =\ S_{1}\\
f_{x}\left(0\right)& =\ S_{1}\\
S_{2}& =\ f_{x}\left(1\right)\\
S_{3}& =\ f_{x}\left(2\right)\\
S_{4}&=f_{x}\left(3\right)\\
&=f_{y}\left(1\right)\\
&=f_{y}\left(2\right)\\
&=f_{y}\left(3\right)\\
S_{z}\left(z\right)& =\ \operatorname{translate}\left(z,\ \operatorname{vector}\left(\left(0,0\right),\left(0,2+d\right)\right)\right)\\
f_{z}\left(n\right)& =\ S_{z}\left(f_{z}\left(n-1\right)\right)\\
f_{z}\left(0\right)& =\ S_{2}\\
&=f_{z}\left(1\right)\\
&=f_{z}\left(2\right)\\
&=f_{z}\left(3\right)\\
S_{x2}\left(x\right)&=\ \operatorname{translate}\left(x,\ \operatorname{vector}\left(\left(0,0\right),\left(0,2+d\right)\right)\right)\\
f_{x2}\left(n\right)& =\ S_{x2}\left(f_{x2}\left(n-1\right)\right)\\
f_{x2}\left(0\right)&=S_{3}\\
&=f_{x2}\left(1\right)\\
&=f_{x2}\left(2\right)\\
S_{x3}\left(x\right)& =\ \operatorname{translate}\left(x,\ \operatorname{vector}\left(\left(0,0\right),\left(0,2+d\right)\right)\right)\\
f_{x3}\left(n\right)& =\ S_{x3}\left(f_{x3}\left(n-1\right)\right)\\
f_{x3}\left(0\right)& =\ S_{4}\\
&=f_{x3}\left(1\right)\\
&=f_{x3}\left(2\right)\\
&=f_{x3}\left(3\right)\\
\end{aligned}$$


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
### 240820 - Desmos 2D: Globe Modeling
- ![[Pasted image 20240820152908.png]]
- $$\begin{aligned} L_{2}\ & =\ \left[0,\frac{2\pi}{n_{num}},...,2\pi+\frac{2\pi}{n_{num}}\right]\\
n_{num}&=24\\
G_{1}&=\ \operatorname{rotate}\left(\operatorname{translate}\left(\operatorname{dilate}\left(\left(\cos\left(a\right)\cos L_{1},\sin\ L_{1}\right),\left(0,0\right),\sin\left(0.5S_{1}^{2}\right)\right),\left(0,0\right),\left(\cos\left(0.5S_{1}^{2}\right)\cos\left(a+\frac{\pi}{2}\right),0\right)\right),\left(0,0\right),b\right)\ \operatorname{for}\ L_{1}\ =\ \left[0,\frac{2\pi}{n_{num}},...,2\pi\right],\ S_{1}=\sqrt{2L_{2}}\\
H_{1}\left(R\right)&=\operatorname{segment}\left(G_{1}\left[\operatorname{join}\left(\left[n_{num},2n_{num},...,n_{num}^{2}\right],\left[n_{num}\left(n_{num}+1\right)\right]\right)+\operatorname{join}\left(\left[0,1,...,n_{num}\right],\left[n_{num}^{2}\right]\right)+R\right],G_{1}\left[\operatorname{join}\left(\left[2n_{num},3n_{num},...,n_{num}\left(n_{num}+1\right)\right],\left[n_{num}\right]\right)+\operatorname{join}\left(\left[1,...,n_{num}^{2}\right],\left[0\right]\right)+R\right]\right)\\
H_{2}&=\operatorname{segment}\left(G_{1}\left[\left[n_{num}\left(n_{num}+1\right)+n_{num}^{2}\right]\right],G_{1}\left[\left[n_{num}\right]\right]\right)\end{aligned} $$

### 240821 - Desmos 2D: Globe and Panels
- ![[Pasted image 20240821173312.png]]
- ![[Pasted image 20240821175354.png]]
- $$\begin{aligned} L_{2}\ & =\ \left[0,\frac{2\pi}{n_{num}},...,2\pi+\frac{2\pi}{n_{num}}\right]\\
n_{num}&=36\\
G_{1}&=\ \operatorname{rotate}\left(\operatorname{translate}\left(\operatorname{dilate}\left(\left(\cos\left(a\right)\cos L_{1},\sin\ L_{1}\right),\left(0,0\right),\sin\left(0.5S_{1}^{2}\right)\right),\left(0,0\right),\left(\cos\left(0.5S_{1}^{2}\right)\cos\left(a+\frac{\pi}{2}\right),0\right)\right),\left(0,0\right),b\right)\ \operatorname{for}\ L_{1}\ =\ \left[0,\frac{2\pi}{n_{num}},...,2\pi\right],\ S_{1}=\sqrt{2L_{2}}\\
H_{1}\left(R\right)&=\operatorname{segment}\left(G_{1}\left[\operatorname{join}\left(\left[n_{num},2n_{num},...,n_{num}^{2}\right],\left[n_{num}\left(n_{num}+1\right)\right]\right)+\operatorname{join}\left(\left[0,1,...,n_{num}\right],\left[n_{num}^{2}\right]\right)+R\right],G_{1}\left[\operatorname{join}\left(\left[2n_{num},3n_{num},...,n_{num}\left(n_{num}+1\right)\right],\left[n_{num}\right]\right)+\operatorname{join}\left(\left[1,...,n_{num}^{2}\right],\left[0\right]\right)+R\right]\right)\\
H_{2}&=\operatorname{segment}\left(G_{1}\left[\left[n_{num}\left(n_{num}+1\right)+n_{num}^{2}\right]\right],G_{1}\left[\left[n_{num}\right]\right]\right)\\ 
H_{1}\left(0\right) &\\
H_{1}\left(3\right) &\\
H_{1}\left(4\right) &\\
H_{1}\left(5\right) &\\
H_{1}\left(6\right) &\\
H_{1}\left(7\right) &\\
H_{1}\left(8\right) &\\
H_{1}\left(9\right) &\\
H_{1}\left(10\right) &\\
H_{1}\left(11\right) &\\
H_{1}\left(12\right) &\\
H_{1}\left(13\right) &\\
H_{1}\left(14\right) &\\
H_{1}\left(15\right) &\\
H_{1}\left(16\right) &\\
H_{1}\left(17\right) &\\
H_{1}\left(18\right) &\\
H_{1}\left(19\right) &\\
H_{1}\left(20\right) &\\
t_{hin}&=0.35\\
f_{ill}&=0.43\\
c_{olor}& =\operatorname{rgb}\left(210,25,120\right)\\
P_{anel}\left(c,r_{ow},c_{olumn}\right) &=\operatorname{polygon}\left(G_{1}\left[r_{ow}n_{num}+c\right],G_{1}\left[\left(r_{ow}+1\right)n_{num}+1+c\right],G_{1}\left[\left(r_{ow}+1\right)n_{num}+c_{olumn}+c\right],G_{1}\left[r_{ow}n_{num}+\left(c_{olumn}-1\right)+c\right]\right)\\
P_{anel}\left(s_{hift},r_{w}\right)\ \operatorname{for}\ r_{w} &=\left[0,1,...,17\right]\\
s_{hift} &=34\\
P_{anel1}\left(c,r_{ow}\right) &=\operatorname{polygon}\left(G_{1}\left[r_{ow}n_{num}+c\ +s_{w}\left(r_{ow}-2\right)\right],G_{1}\left[\left(r_{ow}+1\right)n_{num}+1+c+s_{w}\left(r_{ow}-2\right)\right],G_{1}\left[\left(r_{ow}+1\right)n_{num}\ +\ 2+c+s_{w}\left(r_{ow}-2\right)\right],G_{1}\left[r_{ow}n_{num}+1+c+s_{w}\left(r_{ow}-2\right)\right]\right)\\
s_{w} &=1\\
P_{anel}\left(c,r_{ow}\right) &=\operatorname{polygon}\left(G_{1}\left[r_{ow}n_{num}+c+\left(r_{ow}-2\right)\ \right],G_{1}\left[\left(r_{ow}+1\right)n_{num}+1+c\ +\left(r_{ow}-2\right)\right]\right)\\
P_{anel1}\left(s_{hift},r_{w}\right)\ \operatorname{for}\ r_{w}&=\left[-1,...,17\right]\\
P_{anel1}\left(s_{hift}-20,r_{w}\right)\ \operatorname{for}\ r_{w}&=\left[-1,...,17\right]\\
P_{anel1}\left(s_{hift}-e_{ven},r_{w}\right)\ \operatorname{for}\ r_{w}&=\left[-1,...,17\right],\ e_{ven}=\left[2,4,...,34\right]\\
\end{aligned}$$

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
### 240905 - Desmos 2D: Gaussian Design
- ![[Pasted image 20240919150023.png]]
- $$\begin{aligned} n & =\operatorname{count}\left(\left[0.1,0.2,...,1\right]\right)\\
y\left(x\right) & =\ \frac{1}{\left|s\right|\sqrt{2\pi}}e^{-\frac{1}{2}\left(\frac{x-m}{s}\right)^{2}}\operatorname{for}\ s=\left[0.1,0.2,...,1\right]+\left[\cos\left(a\right),\cos\left(a+\frac{\pi}{n}\right),...,\cos\left(a+\pi\right)\right]\\
y\left(x\right) & =\ -\frac{1}{\left|s\right|\sqrt{2\pi}}e^{-\frac{1}{2}\left(\frac{x-m}{s}\right)^{2}}\operatorname{for}\ s=\left[0.1,0.2,...,1\right]+\left[\cos\left(a\right),\cos\left(a+\frac{\pi}{n}\right),...,\cos\left(a+\pi\right)\right]\\
x\left(y\right) & =\ -\frac{1}{\left|s\right|\sqrt{2\pi}}e^{-\frac{1}{2}\left(\frac{y-m}{s}\right)^{2}}\operatorname{for}\ s=\left[0.1,0.2,...,1\right]+\left[\cos\left(a\right),\cos\left(a+\frac{\pi}{n}\right),...,\cos\left(a+\pi\right)\right]\\
x\left(y\right) & =\ \frac{1}{\left|s\right|\sqrt{2\pi}}e^{-\frac{1}{2}\left(\frac{y-m}{s}\right)^{2}}\operatorname{for}\ s=\left[0.1,0.2,...,1\right]+\left[\cos\left(a\right),\cos\left(a+\frac{\pi}{n}\right),...,\cos\left(a+\pi\right)\right]\\
a &=0.44\\
m &=0\\\end{aligned}$$