for i in {1..30};do
    nohup python extract_patches.py -n 13 -i ${i}  >& ${i}_EP.out &
done
