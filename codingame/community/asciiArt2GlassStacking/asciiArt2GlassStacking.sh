read n

(( sum = 0 ));

for (( i = 1; i <= n; i++ )); do
   (( sum = sum + i ));
   if (( sum <= n ))
   then (( rows = i ));
   fi
done

for (( j = 1; j <= rows; j++)); do

    (( offset = 3 *(rows - j) ));
    
    ch=' ';
    glassone='  *** ';
    glasstwo='  * * ';
    glassthr=' *****';
    glassonea=' *** ';
    glasstwoa=' * * ';
    glassthra='*****';
    
    if (( offset > 0 ))
    then
        printf '%*s' "$offset" | tr ' ' "$ch"
    fi
    
    printf "$glassonea"
    
    for ((k = 2; k <= j; k++)); 
    do
        printf "$glassone"
    done

    if (( offset > 0 ))
    then
        printf '%*s' "$offset" | tr ' ' "$ch"
    fi
    
    printf '\n';

###########################################################

    if (( offset > 0 ))
    then
        printf '%*s' "$offset" | tr ' ' "$ch"
    fi

    printf "$glasstwoa"
    
    for ((k = 2; k <= j; k++)); 
    do
        printf "$glasstwo"
    done
 
    if (( offset > 0 ))
    then
        printf '%*s' "$offset" | tr ' ' "$ch"
    fi
    
    printf '\n';

###########################################################
    
    if (( offset > 0 ))
    then
        printf '%*s' "$offset" | tr ' ' "$ch"
    fi

    printf "$glasstwoa"
    
    for ((k = 2; k <= j; k++)); 
    do
        printf "$glasstwo"
    done
    
    if (( offset > 0 ))
    then
        printf '%*s' "$offset" | tr ' ' "$ch"
    fi
    
    printf '\n';
 
###########################################################
        
    if (( offset > 0 ))
    then
        printf '%*s' "$offset" | tr ' ' "$ch"
    fi

    printf "$glassthra"
    
    for ((k = 2; k <= j; k++)); 
    do
        printf "$glassthr"
    done
    
    if (( offset > 0 ))
    then
        printf '%*s' "$offset" | tr ' ' "$ch"
    fi
    
    printf '\n';
    
done

  