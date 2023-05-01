using Performance2

# Read the source code for `create_hashtable` and `push_hashtable!` in `src/Performance2.jl`.
# (You can read `hash2index` too, although you won't call it directly.)

# For the letters of the alphabet, `'a':'z'`, push each once onto a hashtable that you create
# with `create_hashtable`. Do this four times, for hash tables of size 16, 32, 64, and 128.
# Be sure you look at the result. Then fill in the table in the README with the number of
# collisions you observe for each table size.

for tablesize in [16, 32, 64, 128]
    table = create_hashtable(Char, tablesize)

    for c in 'a':'z'
        push_hashtable!(table, c)
    end

    num_collisions = 0
    for bucket in table
        if length(bucket) > 1
            num_collisions += length(bucket) - 1
        end
    end

    println("Table size $tablesize: $num_collisions collisions")
end

