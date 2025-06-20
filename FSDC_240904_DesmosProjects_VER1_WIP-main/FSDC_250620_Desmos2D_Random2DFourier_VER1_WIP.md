$$
\begin{aligned} 
a_{0}\ &=0  \\
m_{ax}&=6.314601233715485  \\
m_{in}&=-2.701769682087222  \\
k&=3  \\
L_{1}&=\left(\operatorname{random}\left(k,s_{1}\right)\cdot\left(m_{ax}\ -\ m_{in}\ +\ 1\right)\ +\ m_{in}\right)  \\
L_{2}&=\left(\operatorname{random}\left(k,s_{1}\right)\cdot\left(m_{ax}\ -\ m_{in}\ +\ 1\right)\ +\ m_{in}\right)  \\
a_{L}&=\left(\operatorname{random}\left(k,s_{1}\right)\cdot\left(m_{ax}\ -\ m_{in}\ +\ 1\right)\ +\ m_{in}\right)  \\
a_{M}&=\left(\operatorname{random}\left(k,s_{1}\right)\cdot\left(m_{ax}\ -\ m_{in}\ +\ 1\right)\ +\ m_{in}\right)  \\
b_{L}&=\left(\operatorname{random}\left(k,s_{1}\right)\cdot\left(m_{ax}\ -\ m_{in}\ +\ 1\right)\ +\ m_{in}\right)  \\
b_{M}&=\left(\operatorname{random}\left(k,s_{1}\right)\cdot\left(m_{ax}\ -\ m_{in}\ +\ 1\right)\ +\ m_{in}\right)\\

f_{N}\left(a_{0},s,a,b,L\right)\ &=\ a_{0}+\sum_{n=1}^{\operatorname{count}\left(L\right)}\left(a\left[n\right]\cos\left(\frac{2\pi ns}{L\left[n\right]}\right)+b\left[n\right]\sin\left(\frac{2\pi ns}{L\left[n\right]}\right)\right)\\

g_{N}\left(a_{0},s,a,b,L\right)\ &=\ a_{0}+\sum_{n=1}^{\operatorname{count}\left(L\right)}\left(a\left[n\right]\cos\left(\frac{2\pi ns}{L\left[n\right]}\right)+b\left[n\right]\sin\left(\frac{2\pi ns}{L\left[n\right]}\right)\right)\\

P_{1}&=\left(f_{N}\left(a_{0},s,a_{L},b_{L},L_{1}\right)t,g_{N}\left(a_{0},s,a_{M},b_{M},L_{2}\right)t\right)\\

A_{1}&=\left(f_{N}\left(a_{0},t,a_{L},b_{L},L_{1}\right),g_{N}\left(a_{0},t,a_{M},b_{M},L_{2}\right)\right)\\

f_{N1}\left(a_{0},m,t,a,b,L\right)\ &=\ a_{0}+a\left[n\right]\cos\left(\frac{2\pi m\left[n\right]t}{L\left[m\left[n\right]\right]}\right)+b\left[n\right]\sin\left(\frac{2\pi m\left[n\right]t}{L\left[m\left[n\right]\right]}\right)\ \operatorname{for}\ n\ =\left[1,...,\operatorname{count}\left(m\right)\right]\\

g_{N1}\left(a_{0},m,t,a,b,L\right)\ &=\ a_{0}+a\left[n\right]\cos\left(\frac{2\pi m\left[n\right]t}{L\left[m\left[n\right]\right]}\right)+b\left[n\right]\sin\left(\frac{2\pi m\left[n\right]t}{L\left[m\left[n\right]\right]}\right)\ \operatorname{for}\ n\ =\left[1,...,\operatorname{count}\left(m\right)\right]\\

P_{2}&=\left(f_{N1}\left(a_{0},m,s,a_{L},b_{L},L_{1}\right),g_{N1}\left(a_{0},m,s,a_{M},b_{M},L_{2}\right)\right)\\

A_{2}&=\left(f_{N1}\left(a_{0},m,t,a_{L},b_{L},L_{1}\right),g_{N1}\left(a_{0},m,t,a_{M},b_{M},L_{2}\right)\right)\\

m\& =\left[1,...,k\right]\\

s&=5.37\\

s_{1}&=-210\\
\end{aligned}
$$