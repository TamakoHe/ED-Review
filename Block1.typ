#set text(size: 15pt)
= Crystal Properties and Growth of Semiconductors
== electrical conductivities(电导率)
电导率($sigma$)与电阻率($rho$) conductivity resistivity
$ sigma=1/rho $
$sigma$的量纲是$s\/ m$
$ R=l/(sigma A)"电导率基本公式" $
= 半导体的分类
- elemental semiconductors:仅由硅族(column IV)元素组成的单质,包括 silicon and germanium.
- 如果还包括了来自其他族的元素，那么就叫做compound(化合物) semiconductors
- #figure(caption: "不一定要有硅族")[#image("2024-12-09-08-27-53.png")]
= Crystal Lattices(晶体点阵)
== 固体的三种类型
+ crystalline(晶体) 具有长程有序的原子序列
+ amorphous(非晶体) 原子排列无序
+ polycrystalline(多晶的) 由多个小的单晶区域组成，每个区域内原子排列有序，但不同区域的排列方向可能不同。 are composed of many small regions of single-Crystal material
== 晶体结构的定义
晶体的周期性是通过空间中对称排列的点阵来定义的，这些点阵叫做晶格(lattice),
把基元(basis,可以是一个原子或者一组原子)放在晶格上,就形成了晶体.
#figure(caption: [在晶格中的点可以用$bold(r)= p bold(a)+q bold(b)+s bold(c)$来表示])[#image("2024-12-09-08-46-46.png")]
#figure(caption: [常见的三种晶格])[#image("2024-12-09-08-48-21.png")]
如果是Close Packing(密堆积的情况),原子半径和晶胞参数(lattice constant)就有一定关系了.
#figure(caption: [最密堆积])[#image("2024-12-09-08-57-08.png")]
体心的是体对角线接触,面心的是面对角线接触,六方的是
$ a=2 r, c= 2 r dot sqrt(8/3) $
六分是一层一层的四面体结构形成的(ABABAB...)
== 用Miller indices来表示晶体结构中的一个平面
+ 找到晶面和三个主轴(x,y,z)相交的位置, 设截距为a,b,c 
+ 计算截距的倒数$1/a$,$1/b$,$1/c$, 截距为无穷大,那么倒数就认为是0就好
+ 通过乘以一部分,转换为最小整数比$h,k,l$,表示为$(h,k,l)$
Miller indices集合:\
比如{1,0,0}就代表[1,0,0][0,1,0][0,0,1]这组平面, 在这个例子中,会形成一个长方体
因为晶轴的选取的原因, 导致这个长方体的每一个面的具体表示不同,但是总是这个集合中的.
#figure(caption: [钻石的晶体结构])[#image("2024-12-09-09-18-32.png")]
里面占据了一半的四面体空隙,也可以认为是所有fcc原子都朝同一方向平移$(bold(a)/4,bold(b)/4,bold(c)/4)$之后和原来的叠加在一起了.
#figure(caption: [fcc空隙])[#image("2024-12-09-09-21-16.png")]
== Atomic packing factor(堆积参数,APF)
$ "APF"="晶胞体积"/"原始体积" $
- 简单立方:一个晶胞一个原子$"APF"=(4/3 pi (0.5a)^3)/a^3 approx 0.524$
- 体心立方:一个晶胞两个原子,体对角线接触:$"APF"=((4pi)/3 dot 2 dot (sqrt(3)/4 a)^3)/a^3 approx 0.680 $
- 面心立方:一个晶胞四个原子,面对角线接触:$"APF"=(4 dot (4pi)/3 (sqrt(2)/4 a)^3)/a^3 approx 0.740$
