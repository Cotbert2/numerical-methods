trueSolution_1 = pi 
aprox = 3.14

absoulteError_1 = abs(trueSolution_1 - aprox)
absoulteError_1

relativeError_1 = abs(trueSolution_1 - aprox)/trueSolution_1
absoulteError_1


trueSolution_2 = 1000000
aprox_2 = 999996

absoulteError_2 = abs(trueSolution_2 - aprox_2)
absoulteError_2

relativeError_2 = abs(trueSolution_2 - aprox_2)/trueSolution_2
absoulteError_2


trueSolution_3 = 0.000012
aprox_3 = 0.000009

absoulteError_3 = abs(trueSolution_3 - aprox_3)
absoulteError_3

relativeError_3 = abs(trueSolution_3 - aprox_3)/trueSolution_3
absoulteError_3

sigfig(relativeError_1)
sigfig(relativeError_2)
sigfig(relativeError_3)
sigfig(absoulteError_1)
sigfig(absoulteError_2)
sigfig(absoulteError_3)