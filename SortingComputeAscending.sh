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

echo "The dict values are ${Compute[@]}

arr[1]=${Compute[a1]}
arr[2]=${Compute[a2]}
arr[3]=${Compute[a3]}
arr[4]=${Compute[a4]}

echo "Before sorting ${arr[@]}"


for (( i = 1; i<4; i++ ))
do

    for(( j = 1; j<4-i-1; j++ ))
    do

        if [[ ${arr[j]} -lt ${arr[$((j+1))]} ]]
        then
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
        fi
    done
done

echo "After sorting ${arr[@]}"
