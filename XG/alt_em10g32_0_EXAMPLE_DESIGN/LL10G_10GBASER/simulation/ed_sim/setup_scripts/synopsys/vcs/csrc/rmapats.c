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
void  hsM_3_0__simv_daidir (UB  * pcode, scalar  val)
{
    UB  * I1391;
    typedef
    UB
     * TermTypePtr;
    U  I1128;
    U  I947;
    TermTypePtr  I1141;
    scalar  * I850;
    I1141 = (TermTypePtr )pcode;
    I947 = *I1141;
    I1141 -= I947;
    I850 = (scalar  *)(I1141 + 2U);
    if (I850[I947] == val) {
        return  ;
    }
    I850[I947] = val;
    val = I850[0];
    val = Xunion[(val << 7) + I850[1U]];
    pcode = ((UB  *)I1141) + 4U;
    {
        U  I1158 = 0;
        pcode = (UB  *)((UB  *)(((RP )pcode + I1158 + 7) & ~7));
    }
    {
        struct dummyq_struct * I1093;
        EBLK  * I1094;
        I1093 = (struct dummyq_struct *)&vcs_clocks;
        if (*(scalar  *)((pcode + 0) + 24U) != val) {
            RmaEblk  * I1094 = (RmaEblk  *)(pcode + 0);
            *(scalar  *)((pcode + 0) + 24U) = val;
            if (!(I1094->I697)) {
                I1093->I1048->I697 = (EBLK  *)I1094;
                I1093->I1048 = (EBLK  *)I1094;
            }
        }
    }
}
void  hsM_3_5__simv_daidir (UB  * pcode, UB  val)
{
    typedef
    UB
     * TermTypePtr;
    U  I1128;
    U  I947;
    TermTypePtr  I1141;
    scalar  * I850;
    I1141 = (TermTypePtr )pcode;
    I947 = *I1141;
    I1141 -= I947;
    I850 = (scalar  *)(I1141 + 2U);
    val = I850[I947];
    I850[I947] = 0xff;
    hsM_3_0__simv_daidir(pcode, val);
}
void  hsM_3_9__simv_daidir (UB  * pcode, scalar  val)
{
    val = *(scalar  *)((pcode + 0) + 24U);
    if (*(pcode + 40) == val) {
        return  ;
    }
    *(pcode + 40) = val;
    {
        RP  I1274;
        RP  * I691 = (RP  *)(pcode + 48);
        {
            I1274 = *I691;
            if (I1274) {
                hsimDispatchCbkMemOptNoDynElabS(I691, val, 1U);
            }
        }
    }
    {
        RmaNbaGate1  * I1188 = (RmaNbaGate1  *)(pcode + 56);
        scalar  I941 = X4val[val];
        I1188->I948.I789.I765 = I941;
        NBA_Semiler(0, &I1188->I948);
    }
    {
        scalar  I1108;
        I1108 = val;
        pcode += 136;
        (*(FP  *)(pcode + 0))(*(UB  **)(pcode + 8), I1108);
    }
}
void  hsM_12_0__simv_daidir (UB  * pcode, scalar  val)
{
    UB  * I1391;
    typedef
    UB
     * TermTypePtr;
    U  I1128;
    U  I947;
    TermTypePtr  I1141;
    scalar  * I850;
    I1141 = (TermTypePtr )pcode;
    I947 = *I1141;
    I1141 -= I947;
    I850 = (scalar  *)(I1141 + 2U);
    if (I850[I947] == val) {
        return  ;
    }
    I850[I947] = val;
    val = I850[0];
    val = Xunion[(val << 7) + I850[1U]];
    pcode = ((UB  *)I1141) + 4U;
    {
        U  I1158 = 0;
        pcode = (UB  *)((UB  *)(((RP )pcode + I1158 + 7) & ~7));
    }
    {
        struct dummyq_struct * I1093;
        EBLK  * I1094;
        I1093 = (struct dummyq_struct *)&vcs_clocks;
        if (*(scalar  *)((pcode + 0) + 24U) != val) {
            RmaEblk  * I1094 = (RmaEblk  *)(pcode + 0);
            *(scalar  *)((pcode + 0) + 24U) = val;
            if (!(I1094->I697)) {
                I1093->I1048->I697 = (EBLK  *)I1094;
                I1093->I1048 = (EBLK  *)I1094;
            }
        }
    }
}
void  hsM_12_5__simv_daidir (UB  * pcode, UB  val)
{
    typedef
    UB
     * TermTypePtr;
    U  I1128;
    U  I947;
    TermTypePtr  I1141;
    scalar  * I850;
    I1141 = (TermTypePtr )pcode;
    I947 = *I1141;
    I1141 -= I947;
    I850 = (scalar  *)(I1141 + 2U);
    val = I850[I947];
    I850[I947] = 0xff;
    hsM_12_0__simv_daidir(pcode, val);
}
void  hsM_12_9__simv_daidir (UB  * pcode, scalar  val)
{
    val = *(scalar  *)((pcode + 0) + 24U);
    if (*(pcode + 40) == val) {
        return  ;
    }
    *(pcode + 40) = val;
    {
        RP  I1274;
        RP  * I691 = (RP  *)(pcode + 48);
        {
            I1274 = *I691;
            if (I1274) {
                hsimDispatchCbkMemOptNoDynElabS(I691, val, 1U);
            }
        }
    }
    {
        RmaNbaGate1  * I1188 = (RmaNbaGate1  *)(pcode + 56);
        scalar  I941 = X4val[val];
        I1188->I948.I789.I765 = I941;
        NBA_Semiler(0, &I1188->I948);
    }
}
void  hsM_13_0__simv_daidir (UB  * pcode, scalar  val)
{
    UB  * I1391;
    typedef
    UB
     * TermTypePtr;
    U  I1128;
    U  I947;
    TermTypePtr  I1141;
    scalar  * I850;
    I1141 = (TermTypePtr )pcode;
    I947 = *I1141;
    I1141 -= I947;
    I850 = (scalar  *)(I1141 + 2U);
    if (I850[I947] == val) {
        return  ;
    }
    I850[I947] = val;
    val = I850[0];
    val = Xunion[(val << 7) + I850[1U]];
    pcode = ((UB  *)I1141) + 4U;
    {
        U  I1158 = 0;
        pcode = (UB  *)((UB  *)(((RP )pcode + I1158 + 7) & ~7));
    }
    {
        struct dummyq_struct * I1093;
        EBLK  * I1094;
        I1093 = (struct dummyq_struct *)&vcs_clocks;
        if (*(scalar  *)((pcode + 0) + 24U) != val) {
            RmaEblk  * I1094 = (RmaEblk  *)(pcode + 0);
            *(scalar  *)((pcode + 0) + 24U) = val;
            if (!(I1094->I697)) {
                I1093->I1048->I697 = (EBLK  *)I1094;
                I1093->I1048 = (EBLK  *)I1094;
            }
        }
    }
}
void  hsM_13_5__simv_daidir (UB  * pcode, UB  val)
{
    typedef
    UB
     * TermTypePtr;
    U  I1128;
    U  I947;
    TermTypePtr  I1141;
    scalar  * I850;
    I1141 = (TermTypePtr )pcode;
    I947 = *I1141;
    I1141 -= I947;
    I850 = (scalar  *)(I1141 + 2U);
    val = I850[I947];
    I850[I947] = 0xff;
    hsM_13_0__simv_daidir(pcode, val);
}
void  hsM_13_9__simv_daidir (UB  * pcode, scalar  val)
{
    val = *(scalar  *)((pcode + 0) + 24U);
    if (*(pcode + 40) == val) {
        return  ;
    }
    *(pcode + 40) = val;
    {
        RP  I1274;
        RP  * I691 = (RP  *)(pcode + 48);
        {
            I1274 = *I691;
            if (I1274) {
                hsimDispatchCbkMemOptNoDynElabS(I691, val, 1U);
            }
        }
    }
    {
        RmaNbaGate1  * I1188 = (RmaNbaGate1  *)(pcode + 56);
        scalar  I941 = X4val[val];
        I1188->I948.I789.I765 = I941;
        NBA_Semiler(0, &I1188->I948);
    }
}
#ifdef __cplusplus
extern "C" {
#endif
void SinitHsimPats(void);
#ifdef __cplusplus
}
#endif
