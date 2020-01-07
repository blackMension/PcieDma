// file = 0; split type = patterns; threshold = 100000; total count = 0.
#include <stdio.h>
#include <stdlib.h>
#include <strings.h>
#include "rmapats.h"

scalar dummyScalar;
scalar fScalarIsForced=0;
scalar fScalarIsReleased=0;
scalar fScalarHasChanged=0;
scalar fForceFromNonRoot=0;
scalar fNettypeIsForced=0;
scalar fNettypeIsReleased=0;
void  hsG_0 (struct dummyq_struct * I1093, EBLK  * I1094, U  I651);
void  hsG_0 (struct dummyq_struct * I1093, EBLK  * I1094, U  I651)
{
    U  I1337;
    U  I1338;
    U  I1339;
    struct futq * I1340;
    I1337 = ((U )vcs_clocks) + I651;
    I1339 = I1337 & ((1 << fHashTableSize) - 1);
    I1094->I697 = (EBLK  *)(-1);
    I1094->I701 = I1337;
    if (I1337 < (U )vcs_clocks) {
        I1338 = ((U  *)&vcs_clocks)[1];
        sched_millenium(I1093, I1094, I1338 + 1, I1337);
    }
    else if ((peblkFutQ1Head != ((void *)0)) && (I651 == 1)) {
        I1094->I702 = (struct eblk *)peblkFutQ1Tail;
        peblkFutQ1Tail->I697 = I1094;
        peblkFutQ1Tail = I1094;
    }
    else if ((I1340 = I1093->I1053[I1339].I714)) {
        I1094->I702 = (struct eblk *)I1340->I713;
        I1340->I713->I697 = (RP )I1094;
        I1340->I713 = (RmaEblk  *)I1094;
    }
    else {
        sched_hsopt(I1093, I1094, I1337);
    }
}
void  hsM_1122_0__simv_daidir (UB  * pcode, scalar  * I925, U  I851)
{
    UB  * I1391;
    typedef
    UB
     * TermTypePtr;
    U  I1140;
    U  I1138;
    scalar  * I1172;
    UB  * pcode1;
    TermTypePtr  I1141;
    scalar  * I1174;
    I1141 = (TermTypePtr )pcode;
    I1140 = *I1141;
    I1141 -= I1140;
    I1138 = 2U;
    pcode1 = (UB  *)(I1141 + 2U);
    pcode1 = (UB  *)((((RP )pcode1) + 7) & (~7));
    I1172 = *(scalar  **)pcode1;
    I1174 = (scalar  *)((UB  *)pcode1 + sizeof(RP ));
    U  I1159 = 0;
    if (!memcmp(I925, I1174 + I1140 * I851, I851)) {
        return  ;
    }
    memcpy(I1174 + I1140 * I851, I925, I851);
    I925 = I1174 + I1138 * I851;
    memcpy(I925, I1174, I851);
    {
        U  I1128;
        U  I1177;
        for (I1128 = 1; I1128 < I1138; I1128++) {
            scalar  * I1162 = (scalar  *)I1174 + I1128 * I851;
            for (I1177 = 0; I1177 < I851; I1177++) {
                scalar  * I745 = (scalar  *)I925;
                I745[I1177] = I1172[I745[I1177] | (I1162[I1177] << 7)];
            }
        }
    }
    {
        U  I1158 = 0;
        pcode = I1174 + (I1138 + 1) * I851 + I1158;
    }
    pcode = (UB  *)(((UP )(pcode + 0) + 7U) & ~7LU);
    I851 = *(U  *)((pcode + 0));
    {
        struct dummyq_struct * I1093;
        EBLK  * I1094;
        I1093 = (struct dummyq_struct *)&vcs_clocks;
        {
            RmaEblk  * I1094 = (RmaEblk  *)(pcode + 8);
            scalar  * I1355 = (scalar  *)((pcode + 48));
            if (memcmp(I1355, I925, 1U * I851)) {
                memcpy(I1355, I925, 1U * I851);
                if (!(I1094->I697)) {
                    I1093->I1048->I697 = (EBLK  *)I1094;
                    I1093->I1048 = (EBLK  *)I1094;
                }
            }
        }
    }
}
void  hsM_1122_9__simv_daidir (UB  * pcode, scalar  * I925)
{
    U  I851;
    I851 = *(U  *)((pcode + 0) - sizeof(RP ));
    I925 = (scalar  *)(pcode + 40);
    {
        U  I1356 = sizeof(scalar ) * I851;
        pcode = ((UB  *)I925) + I1356;
    }
    pcode = (UB  *)(((UP )(pcode + 0) + 7U) & ~7LU);
    I851 = *(U  *)((pcode + 0));
    scalar  * I1185;
    {
        I1185 = (scalar  *)((pcode + 4));
        memcpy(I1185, I925, I851 * 1);
        pcode += 4 + (I851 * 1);
    }
    {
        pcode = (UB  *)((((RP )pcode + 0) + 7) & (~7));
        ((void)0);
        {
            RP  * I691 = (RP  *)(pcode + 0);
            RP  I1274;
            I1274 = *I691;
            if (I1274) {
                hsimDispatchCbkMemOptNoDynElabVector(I691, I925, 3, I851);
            }
        }
    }
    {
        RmaRootForceCbkCg  * I1260;
    }
    {
        U  I1128;
        U  I1131;
        U  I1116;
        U  I840;
        RmaIbfPcode  * I942;
        pcode = (UB  *)((((RP )pcode + 16) + 3) & (~3));
        I1131 = *(U  *)(pcode + 4);
        I1116 = *(U  *)(pcode + 8);
        I840 = *(U  *)(pcode + 12);
        pcode = (UB  *)((((RP )pcode + 16) + 7) & (~7));
        I942 = (RmaIbfPcode  *)(pcode + 0);
        for (; I840 > 0; I840--) {
            RP  I1012 = 0;
            scalar  I765 = 0;
            I765 = ((scalar  *)I925)[I1116];
            I1012 = (RP )I942->I923;
            ((void (*)(RP   , scalar   ))(I1012))(I942->pcode, I765);
            I1116 += 1 + I1131;
            I942++;
        }
        pcode = (UB  *)I942;
    }
}
void  hsM_1127_0__simv_daidir (UB  * pcode, scalar  * I925, U  I851)
{
    UB  * I1391;
    typedef
    UB
     * TermTypePtr;
    U  I1140;
    U  I1138;
    scalar  * I1172;
    UB  * pcode1;
    TermTypePtr  I1141;
    scalar  * I1174;
    I1141 = (TermTypePtr )pcode;
    I1140 = *I1141;
    I1141 -= I1140;
    I1138 = 2U;
    pcode1 = (UB  *)(I1141 + 2U);
    pcode1 = (UB  *)((((RP )pcode1) + 7) & (~7));
    I1172 = *(scalar  **)pcode1;
    I1174 = (scalar  *)((UB  *)pcode1 + sizeof(RP ));
    U  I1159 = 0;
    if (!memcmp(I925, I1174 + I1140 * I851, I851)) {
        return  ;
    }
    memcpy(I1174 + I1140 * I851, I925, I851);
    I925 = I1174 + I1138 * I851;
    memcpy(I925, I1174, I851);
    {
        U  I1128;
        U  I1177;
        for (I1128 = 1; I1128 < I1138; I1128++) {
            scalar  * I1162 = (scalar  *)I1174 + I1128 * I851;
            for (I1177 = 0; I1177 < I851; I1177++) {
                scalar  * I745 = (scalar  *)I925;
                I745[I1177] = I1172[I745[I1177] | (I1162[I1177] << 7)];
            }
        }
    }
    {
        U  I1158 = 0;
        pcode = I1174 + (I1138 + 1) * I851 + I1158;
    }
    pcode = (UB  *)(((UP )(pcode + 0) + 7U) & ~7LU);
    I851 = *(U  *)((pcode + 0));
    {
        struct dummyq_struct * I1093;
        EBLK  * I1094;
        I1093 = (struct dummyq_struct *)&vcs_clocks;
        {
            RmaEblk  * I1094 = (RmaEblk  *)(pcode + 8);
            scalar  * I1355 = (scalar  *)((pcode + 48));
            if (memcmp(I1355, I925, 1U * I851)) {
                memcpy(I1355, I925, 1U * I851);
                if (!(I1094->I697)) {
                    I1093->I1048->I697 = (EBLK  *)I1094;
                    I1093->I1048 = (EBLK  *)I1094;
                }
            }
        }
    }
}
void  hsM_1127_9__simv_daidir (UB  * pcode, scalar  * I925)
{
    U  I851;
    I851 = *(U  *)((pcode + 0) - sizeof(RP ));
    I925 = (scalar  *)(pcode + 40);
    {
        U  I1356 = sizeof(scalar ) * I851;
        pcode = ((UB  *)I925) + I1356;
    }
    pcode = (UB  *)(((UP )(pcode + 0) + 7U) & ~7LU);
    I851 = *(U  *)((pcode + 0));
    scalar  * I1185;
    {
        I1185 = (scalar  *)((pcode + 4));
        memcpy(I1185, I925, I851 * 1);
        pcode += 4 + (I851 * 1);
    }
    {
        pcode = (UB  *)((((RP )pcode + 0) + 7) & (~7));
        ((void)0);
        {
            RP  * I691 = (RP  *)(pcode + 0);
            RP  I1274;
            I1274 = *I691;
            if (I1274) {
                hsimDispatchCbkMemOptNoDynElabVector(I691, I925, 3, I851);
            }
        }
    }
    {
        RmaRootCbkCg  * I1260;
        pcode = (UB  *)((((RP )pcode + 8) + 7) & (~7));
        I1260 = (RmaRootCbkCg  *)(pcode + 0);
        if (I1260->I928) {
            copyAndPropRootCbkCgE(I1260, I925);
        }
    }
    {
        RmaRootForceCbkCg  * I1260;
    }
    {
        U  I1128;
        U  I1131;
        U  I1116;
        U  I840;
        RmaIbfPcode  * I942;
        pcode = (UB  *)((((RP )pcode + 16) + 3) & (~3));
        I1131 = *(U  *)(pcode + 4);
        I1116 = *(U  *)(pcode + 8);
        I840 = *(U  *)(pcode + 12);
        pcode = (UB  *)((((RP )pcode + 16) + 7) & (~7));
        I942 = (RmaIbfPcode  *)(pcode + 0);
        for (; I840 > 0; I840--) {
            RP  I1012 = 0;
            scalar  I765 = 0;
            I765 = ((scalar  *)I925)[I1116];
            I1012 = (RP )I942->I923;
            ((void (*)(RP   , scalar   ))(I1012))(I942->pcode, I765);
            I1116 += 1 + I1131;
            I942++;
        }
        pcode = (UB  *)I942;
    }
}
void  hsM_1284_0__simv_daidir (UB  * pcode, scalar  val)
{
    UB  * I1391;
    *(pcode + 0) = val;
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1101;
        UB  * I1194;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 8);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1190 = 1;
                if (I1190) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    pcode += 16;
    UB  * I764 = *(UB  **)(pcode + 0);
    if (I764 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1406 = (RmaSwitchGate  *)I764;
        RmaSwitchGate  * I843 = 0;
        do {
            RmaIbfPcode  * I923 = (RmaIbfPcode  *)(((UB  *)I1406) + 24U);
            ((FP )(I923->I923))((void *)I923->pcode, val);
            RmaDoublyLinkedListElem  I1407;
            I1407.I843 = 0;
            RmaSwitchGateInCbkListInfo  I1408;
            I1408.I1020 = 0;
            I843 = (RmaSwitchGate  *)I1406->I665.I1409.I843;
        } while ((UB  *)(I1406 = I843) != (UB  *)I764);
    }
}
void  hsM_1294_0__simv_daidir (UB  * pcode, scalar  val)
{
    UB  * I1391;
    *(pcode + 0) = val;
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1101;
        UB  * I1194;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 8);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1190 = 1;
                if (I1190) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 16);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1190 = 1;
                if (I1190) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    pcode += 24;
    UB  * I764 = *(UB  **)(pcode + 0);
    if (I764 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1406 = (RmaSwitchGate  *)I764;
        RmaSwitchGate  * I843 = 0;
        do {
            RmaIbfPcode  * I923 = (RmaIbfPcode  *)(((UB  *)I1406) + 24U);
            ((FP )(I923->I923))((void *)I923->pcode, val);
            RmaDoublyLinkedListElem  I1407;
            I1407.I843 = 0;
            RmaSwitchGateInCbkListInfo  I1408;
            I1408.I1020 = 0;
            I843 = (RmaSwitchGate  *)I1406->I665.I1409.I843;
        } while ((UB  *)(I1406 = I843) != (UB  *)I764);
    }
}
void  hsM_1295_0__simv_daidir (UB  * pcode, scalar  val)
{
    UB  * I1391;
    *(pcode + 0) = val;
    pcode += 8;
    UB  * I764 = *(UB  **)(pcode + 0);
    if (I764 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1406 = (RmaSwitchGate  *)I764;
        RmaSwitchGate  * I843 = 0;
        do {
            RmaIbfPcode  * I923 = (RmaIbfPcode  *)(((UB  *)I1406) + 24U);
            ((FP )(I923->I923))((void *)I923->pcode, val);
            RmaDoublyLinkedListElem  I1407;
            I1407.I843 = 0;
            RmaSwitchGateInCbkListInfo  I1408;
            I1408.I1020 = 0;
            I843 = (RmaSwitchGate  *)I1406->I665.I1409.I843;
        } while ((UB  *)(I1406 = I843) != (UB  *)I764);
    }
}
void  hsM_1494_0__simv_daidir (UB  * pcode, scalar  * I925, U  I851)
{
    UB  * I1391;
    typedef
    UB
     * TermTypePtr;
    U  I1140;
    U  I1138;
    scalar  * I1172;
    UB  * pcode1;
    TermTypePtr  I1141;
    scalar  * I1174;
    I1141 = (TermTypePtr )pcode;
    I1140 = *I1141;
    I1141 -= I1140;
    I1138 = 2U;
    pcode1 = (UB  *)(I1141 + 2U);
    pcode1 = (UB  *)((((RP )pcode1) + 7) & (~7));
    I1172 = *(scalar  **)pcode1;
    I1174 = (scalar  *)((UB  *)pcode1 + sizeof(RP ));
    U  I1159 = 0;
    if (!memcmp(I925, I1174 + I1140 * I851, I851)) {
        return  ;
    }
    memcpy(I1174 + I1140 * I851, I925, I851);
    I925 = I1174 + I1138 * I851;
    memcpy(I925, I1174, I851);
    {
        U  I1128;
        U  I1177;
        for (I1128 = 1; I1128 < I1138; I1128++) {
            scalar  * I1162 = (scalar  *)I1174 + I1128 * I851;
            for (I1177 = 0; I1177 < I851; I1177++) {
                scalar  * I745 = (scalar  *)I925;
                I745[I1177] = I1172[I745[I1177] | (I1162[I1177] << 7)];
            }
        }
    }
    {
        U  I1158 = 0;
        pcode = I1174 + (I1138 + 1) * I851 + I1158;
    }
    pcode = (UB  *)(((UP )(pcode + 0) + 7U) & ~7LU);
    I851 = *(U  *)((pcode + 0));
    {
        struct dummyq_struct * I1093;
        EBLK  * I1094;
        I1093 = (struct dummyq_struct *)&vcs_clocks;
        {
            RmaEblk  * I1094 = (RmaEblk  *)(pcode + 8);
            scalar  * I1355 = (scalar  *)((pcode + 48));
            if (memcmp(I1355, I925, 1U * I851)) {
                memcpy(I1355, I925, 1U * I851);
                if (!(I1094->I697)) {
                    I1093->I1048->I697 = (EBLK  *)I1094;
                    I1093->I1048 = (EBLK  *)I1094;
                }
            }
        }
    }
}
void  hsM_1494_9__simv_daidir (UB  * pcode, scalar  * I925)
{
    U  I851;
    I851 = *(U  *)((pcode + 0) - sizeof(RP ));
    I925 = (scalar  *)(pcode + 40);
    {
        U  I1356 = sizeof(scalar ) * I851;
        pcode = ((UB  *)I925) + I1356;
    }
    pcode = (UB  *)(((UP )(pcode + 0) + 7U) & ~7LU);
    I851 = *(U  *)((pcode + 0));
    scalar  * I1185;
    {
        I1185 = (scalar  *)((pcode + 4));
        memcpy(I1185, I925, I851 * 1);
        pcode += 4 + (I851 * 1);
    }
    {
        pcode = (UB  *)((((RP )pcode + 0) + 7) & (~7));
        ((void)0);
        {
            RP  * I691 = (RP  *)(pcode + 0);
            RP  I1274;
            I1274 = *I691;
            if (I1274) {
                hsimDispatchCbkMemOptNoDynElabVector(I691, I925, 3, I851);
            }
        }
    }
    {
        RmaRootForceCbkCg  * I1260;
    }
    {
        U  I1128;
        U  I1131;
        U  I1116;
        U  I840;
        RmaIbfPcode  * I942;
        pcode = (UB  *)((((RP )pcode + 16) + 3) & (~3));
        I1131 = *(U  *)(pcode + 4);
        I1116 = *(U  *)(pcode + 8);
        I840 = *(U  *)(pcode + 12);
        pcode = (UB  *)((((RP )pcode + 16) + 7) & (~7));
        I942 = (RmaIbfPcode  *)(pcode + 0);
        for (; I840 > 0; I840--) {
            RP  I1012 = 0;
            scalar  I765 = 0;
            I765 = ((scalar  *)I925)[I1116];
            I1012 = (RP )I942->I923;
            ((void (*)(RP   , scalar   ))(I1012))(I942->pcode, I765);
            I1116 += 1 + I1131;
            I942++;
        }
        pcode = (UB  *)I942;
    }
}
#ifdef __cplusplus
extern "C" {
#endif
void SinitHsimPats(void);
#ifdef __cplusplus
}
#endif
