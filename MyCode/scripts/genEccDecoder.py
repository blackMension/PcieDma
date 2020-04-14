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

class genDecoder:
    def __init__(self, inputLen):
        '''input data is hamming code length'''
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

    def genDecoderFile(self):
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
        self.dLocationList = []
        for j in range(self.hammingLen):
            valueStr = 'XI[' + str(j) + ']'
            if j in self.pLocationList:
                pidx += 1
            else:
                didx += 1
                self.dLocationList.append(j)
            locationList.append(valueStr)
        ########################
        # write module header
        ########################
        formulaString = "module ECC"+str(didx)+"_decoder (DDI, DDO, E1, E2);\n"
        formulaString += "\n"
        formulaString += "   input   ["+str(self.hammingLen-1)+":0]   DDI;\n"
        formulaString += "   output  ["+str(didx-1)+":0]   DDO;\n"
        formulaString += "   output  E1;\n"
        formulaString += "   output  E2;\n"
        formulaString += "\n"
        formulaString += "   wire    ["+str(self.k-1)+":0]   nc;\n"
        formulaString += "   wire    ["+str(didx-1)+":0]   errBit;\n"
        formulaString += "   wire    ["+str(self.hammingLen-1)+":0]   XI;\n"
        formulaString += "\n"
        formulaString += "   assign XI = DDI;\n"
        formulaString += "\n"
        ########################
        # nc    TODO:Check
        ########################
        formulaString += "   // Create a new syndrome\n"
        for i in range(self.k):
            formulaString += "   assign nc[" + str(i) + "] = "
            for element in self.numList[i]:
                formulaString += locationList[element] + "^"
            formulaString = formulaString[:-1] + ";\n"
        formulaString += "\n"
        ########################
        # E1 and E2
        ########################
        formulaString += "   // Is there an error ?\n"
        formulaString += "   assign E1 = |nc ;\n"
        formulaString += "   assign E2 = E1 && !(^nc) ;\n"
        formulaString += "\n"
        ########################
        # errBit    TODO:Check
        ########################
        formulaString += "   // For x in 0 to 13; errBit[x] is '1' if it is found faulty\n"
        for i in range(didx):
            formulaString += "   assign errBit[" + str(i) + "] = "
            iBinStr = str(bin(self.dLocationList[i]+1))[2:].zfill(self.k)
            for j in range(self.k-1):
                if iBinStr[j+1] == '0':
                    formulaString += '!'
                formulaString += "nc[" +str(self.k-j-2)+ "] & "
            formulaString = formulaString[:-2] + ";\n"
        formulaString += "\n"
        ########################
        # DDO    TODO:Check
        ########################
        formulaString += "   // Flip a bit if it is faulty\n"
        j = 0
        for i in range(didx):
            formulaString += "   assign DDO["+str(i)+"] = "
            while 1:
                j += 1
                if j-1 in self.pLocationList:
                    pass
                else:
                    break
            formulaString += "   XI["+str(j-1)+"] & !errBit["+str(i)+"] | !XI["+str(j-1)+"] & errBit["+str(i)+"];\n"

        ########################
        # Write to file
        ########################
        formulaString += "\nendmodule\n"
        print(formulaString)
        with open("ECC"+str(didx)+"_decoder.v", 'w') as f:
            f.write(formulaString)
        return 0




if __name__ == "__main__":
    try:
        inputLen = sys.argv[1]
    except IndexError:
        inputLen = ''
    Hamm = genDecoder(inputLen)
    outputData = Hamm.genDecoderFile()
