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

