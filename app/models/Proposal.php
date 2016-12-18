<?php
namespace Filic\Models;

use Phalcon\Mvc\Model;
use Phalcon\Mvc\Model\Validator\Uniqueness;

class Proposal extends Model
{
/*    public $SC_CODE;

    public $ENTRY;

    public $BATCHNO;

    public $PROPOSAL_N;

    public $PROPOSAL_D;

    public $POLICY_NO;

    public $CHKDIGIT;

    public $MODE_;

    public $RISKDATE;

    public $TABLE_ID;

    public $TERM;

    public $SUM_INSURE;

    public $SUMATRISK;

    public $PROPOSER;

    public $S_CODE;

    public $SALUTE;

    public $ADDRESS1;

    public $ADDRESS2;

    public $ADDRESS3;

    public $CITY;

    public $ZIP;

    public $MOBILE;

    public $TELEPHONE;

    public $LOCALITY;

    public $ASSURED;

    public $DOB;

    public $AGE;

    public $AGE_P_CODE;

    public $FATHERHUSB;

    public $SEX;

    public $OCCUPATION;

    public $CAGE;

    public $CNAME;

    public $MINORITY;

    public $PREGNANT;

    public $FPR_NO;

    public $FPR_DATE;

    public $INSTMODE;

    public $TOTALINST;

    public $INSTNO;

    public $YEAR;

    public $PREMIUM;

    public $ACCIDENT;

    public $ACCCODE;

    public $CLASS;

    public $ACCPREM;

    public $EXTRAOE;

    public $OERATE;

    public $OEPREM;

    public $EXTRAHOS;

    public $HOSPREMIUM;

    public $OTHER;

    public $EXT_PREM;

    public $TOTAL_PREM;

    public $PAID;

    public $STATUS;

    public $STATUS_DAT;

    public $OPTION_;

    public $MEDICAL;

    public $STANDARD;

    public $SESSION_;

    public $QUARTER;

    public $MATURITY;

    public $SUSPENSE;

    public $SUMREINS;

    public $LASTPAID;

    public $NEXTPREM;

    public $NOTICE;

    public $JNAME;

    public $JDOB;

    public $JAGE;

    public $LIEN;

    public $PERCENTAGE;

    public $CLOSINGINS;

    public $NOTICEL;

    public $AGENT_ID;

    public $AGENTNAME;

    public $AGENTCOMM;

    public $AGCOMP;

    public $MO_ID;

    public $MONAME;

    public $MOCOMM;

    public $MOCOMP;

    public $MMANAGER_I;

    public $MMANNAME;

    public $MMANCOMM;

    public $MMCOMP;

    public $BMNAME;

    public $BMCOMM;

    public $BMCOMP;

    public $BMVALUE;

    public $ZMCODE;

    public $ZMNAME;

    public $ZMCOMM;

    public $ZMCOMP;

    public $ZMVALUE;

    public $AVPCODE;

    public $AVPNAME;

    public $AVPCOMM;

    public $AVPCOMP;

    public $SAVP_CODE;

    public $SAVP_NAME;

    public $SAVP_COMM;

    public $VP_CODE;

    public $VP_NAME;

    public $VPCOMM;

    public $VPCOMP;

    public $SVP_CODE;

    public $SVP_NAME;

    public $SVPCOMM;

    public $SVPCOMP;

    public $BRANCH_ID;

    public $SUBZONE_ID;

    public $ZONE_ID;

    public $USERID;

    public $USERTIME;

    public $PSAG;

    public $PSSO;

    public $PSAM;

    public $PSRM;

    public $PSDM;

    public $PSSDM;

    public $FLAG1;

    public $FLAG2;

    public $FLAG3;

    public $FERATE;

    public $COMMYEAR;

    public $LAST_INST_DATE;

    public $UP_SATAUS;

    public $JEVPCODE;

    public $JEVPNAME;

    public $JEVPCOMM;

    public $AL_TYPE;

    public $AL_DATE;

    public $AL_RMKS;

    public $JVPCODE;

    public $JVPNAME;

    public $JVPCOMM;

    public $JSVPCODE;

    public $JSVPNAME;

    public $JSVPCOMM;

    public $RSV01;

    public $RSV02;

    public $RSV03;

    public $RSV04;

    public $RSV05;

    public $RSV06;

    public $RSV07;

    public $RSV08;

    public $ADD_DATE;

    public $U1;

    public $U2;

    public $U3;

    public $P_ADDRESS;

    public $BUS_YR;

    public $CH_ST;

    public $TR_LOC;

    public $TR_DATE;

    public $TR_ST;

    public $PRNO1;

    public $PRDT1;

    public $PRAMT1;

    public $PRNO2;

    public $PRDT2;

    public $PRAMT2;

    public $PRNO3;

    public $PRDT3;

    public $PRAMT3;

    public $BC_CODE;

    public $BC_NAME;

    public $DC_CODE;

    public $DC_NAME;

    public $YYMM;

    public $OFCODE;

    public $BM_ID;

    public $POL_SETUP_DT;

    public $RE_CODE;

    public $TOTPAID;

    public $INSTPAID;

    public $FA;

    public $UM;

    public $BM;

    public $BC;

    public $DC;

    public $RC;

    public $DIVC;

    public $DIV_ID;

    public $INSTPREM;

    public $POLOPT;
*/

    /**
     *
     * @var varchar2
     */
    public $POLICY_NO;

    /**
     *
     * @var string
     */
    public $PROPOSER;

    /**
     *
     * @var string
     */
    public $AGE;

    /**
     *
     * @var string
     */
    public $SEX;

    public function initialize()
    {
        $this->setConnectionService('dbOracle');
    }
}