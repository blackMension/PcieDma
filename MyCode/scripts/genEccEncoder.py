import os
import sys

def flat(inputList):
    '''flat all sublist to father list'''
    res = []
    for i in inputList:
        if isinstance(i, list):
            res.extend(flat(i))
        else:
            res.append(i)
    return res

class genHamming:
    def __init__(self, inputLen):
        '''input data is original length'''
        ########################
        # judge input number type
        ########################
        if inputLen[0:2] == '0x':
            inputNum = int(inputLen,16)
        else:
            inputNum = int(inputLen,10)
        self.originLen = inputNum
        ########################
        # find k
        ########################
        tmpk = 0
        while 1:        #find k
            if pow(2, tmpk) >= self.originLen + tmpk + 1:
                self.k = tmpk + 1
                break
            tmpk += 1
        self.hammingLen = self.originLen + self.k

    def calcP(self):
        '''find all Ps' location and insert them into original, then calculate there value'''
        ########################
        # find early Ps' location
        ########################
        self.pLocationList = []
        for n in range(self.k-1):           #insert early P
            i = pow(2,n)-1
            self.pLocationList.append(i)
        ########################
        # find early Ps' formula
        ########################
        self.sumList = []        #save bits to calculate early P
        self.numList = []        #save bits location
        for n in range(self.k-1):           #calculate early P
            i = pow(2,n)-1
            self.numList.append([])
            tmp = 0
            while tmp < pow(2,n):
                self.numList[n] += list(range(i+tmp,self.hammingLen,pow(2,n+1)))
                tmp += 1
        ########################
        # find the last Ps' formula
        ########################
        self.numListFlat = flat(self.numList)
        self.numList.append([])
        lastSum = 0
        for idx in range(self.hammingLen-1):
            if self.numListFlat.count(idx) % 2 == 0:
                self.numList[-1].append(idx)
        self.pLocationList.append(self.hammingLen-1)
        return 0

    def genHammingFile(self):
        '''use to generate data with Hamming code'''
        self.calcP()
        for element in self.numList:
            element.sort()
        #print(self.numList)
        ########################
        # generate location dict
        ########################
        pidx = 0
        didx = 0
        locationList = []
        for j in range(self.hammingLen):
            if j in self.pLocationList:
                valueStr = 'P[' + str(pidx) + ']'
                pidx += 1
            else:
                valueStr = 'EDI[' + str(didx) + ']'
                didx += 1
            locationList.append(valueStr)
        ########################
        # write module header
        ########################
        formulaString = "module ECC"+str(didx)+"_encoder (EDI, EDO);\n"      #formula result string
        ########################
        # write formula result to file
        ########################
        formulaString += "\n   input   ["+str(didx-1)+":0]   EDI;\n"
        formulaString += "   output  ["+str(self.hammingLen-1)+":0]   EDO;\n\n"
        j = 0
        for i in range(self.hammingLen):
            formulaString += "   assign EDO[" + str(i) + "]="
            if i in self.pLocationList:
                for element in self.numList[j]:
                    if not locationList[element][0] == 'P':
                        formulaString += locationList[element] + "^"
                j += 1
            else:
                formulaString += locationList[i] + '\n'
            formulaString = formulaString[:-1] + "\n"
        formulaString += "\nendmodule\n"
        print(formulaString)
        with open("ECC"+str(didx)+"_encoder.v", 'w') as f:
            f.write(formulaString)
        return 0




if __name__ == "__main__":
    try:
        inputLen = sys.argv[1]
    except IndexError:
        inputLen = ''
    Hamm = genHamming(inputLen)
    outputData = Hamm.genHammingFile()
