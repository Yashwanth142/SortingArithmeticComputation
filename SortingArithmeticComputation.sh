read -p "Enter a value :" a;
read -p "Enter b value :" b;
read -p "Enter c value :" c;

a1=$((a+b*c))

a2=$((a*b+c))

a3=$((c+a/b))

a4=$((a%b+c))

declare -A Compute
Compute[a1]=$a1
Compute[a2]=$a2
Compute[a3]=$a3
Compute[a4]=$a4

arr=(${Compute[a1]} ${Compute[a2]} ${Compute[a3]} ${Compute[a4]})
echo ${arr[@]}
