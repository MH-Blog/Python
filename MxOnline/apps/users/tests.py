from django.test import TestCase

# Create your tests here.


list01 = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]]
for i in range(len(list01)):
    for j in range(len(list01[i])):
        print(list01[i][j],end='\t')
    print('')