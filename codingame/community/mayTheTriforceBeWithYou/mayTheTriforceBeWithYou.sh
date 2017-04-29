read N

for (( i = 0; i < N; i++)); do

    (( numspaces = 2 * N - i - 1 ));
            
    (( numstars = 2 * i + 1 ));

    ch=' '
    
    if (( i == 0 ))
    then (( numspacesa = 2 * N - i - 2 ));
        printf "."
        printf '%*s' "$numspacesa" | tr ' ' "$ch"        
    else printf '%*s' "$numspaces" | tr ' ' "$ch"
    fi
    chs='*'
    printf '%*s' "$numstars" | tr ' ' "$chs"
    printf '\n'

done

for (( j = 0; j < N; j++)); do

    (( numspacesb = N - j - 1 ));

    (( numspacesc = 2 * N - (2 * j) - 1 ));
    
    (( numstarsa = 2 * j + 1 ));


    printf '%*s' "$numspacesb" | tr ' ' "$ch"        
    printf '%*s' "$numstarsa" | tr ' ' "$chs"
    printf '%*s' "$numspacesc" | tr ' ' "$ch"
    printf '%*s' "$numstarsa" | tr ' ' "$chs"
    printf '\n'

done
