.class public Lcom/iflytek/msc/MscConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APPEND_DATA_PARAMS_FORMAT:Ljava/lang/String; = "opt=apd,pc=%d\u0000"

.field public static final BEGIN_RECOG_PARAMS:Ljava/lang/String; = "ssm=0,cmd=ssb,sub=hcr\u0000"

.field private static final CFG_PATH:Ljava/lang/String;

.field public static final ContactParams16K:Ljava/lang/String; = "aue=speex-wb,ssm=1,auf=audio/L16;rate=16000\u0000"

.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "utf-8"

.field public static final DEF_SAMPLE:I = 0x3e80

.field public static final DNM_CANTONESE:Ljava/lang/String; = "yueyu"

.field public static final DNM_CHANGSHA:Ljava/lang/String; = "changsha"

.field public static final DNM_CHINESE:Ljava/lang/String; = "putong"

.field public static final DNM_DONGBEI:Ljava/lang/String; = "dongbei"

.field public static final DNM_ENGLISH:Ljava/lang/String; = "en"

.field public static final DNM_EN_2_ZH:Ljava/lang/String; = "en2zh"

.field public static final DNM_GUIZHOU:Ljava/lang/String; = "guizhou"

.field public static final DNM_HEFEI:Ljava/lang/String; = "hefei"

.field public static final DNM_HENAN:Ljava/lang/String; = "henan"

.field public static final DNM_KEJIA:Ljava/lang/String; = "kejia"

.field public static final DNM_MINNAN:Ljava/lang/String; = "minnan"

.field public static final DNM_NANCHANG:Ljava/lang/String; = "nanchang"

.field public static final DNM_NANJING:Ljava/lang/String; = "nanjing"

.field public static final DNM_SHANDONG:Ljava/lang/String; = "shandong"

.field public static final DNM_SHANGHAI:Ljava/lang/String; = "shanghai"

.field public static final DNM_SHANXI:Ljava/lang/String; = "shanxi"

.field public static final DNM_SHANXITAIYUAN:Ljava/lang/String; = "taiyuan"

.field public static final DNM_SHANXIXIAN:Ljava/lang/String; = "xian"

.field public static final DNM_SICUAN:Ljava/lang/String; = "sichuan"

.field public static final DNM_TIANJIN:Ljava/lang/String; = "tianjin"

.field public static final DNM_WEIYU:Ljava/lang/String; = "weiyu"

.field public static final DNM_WUHAN:Ljava/lang/String; = "wuhan"

.field public static final DNM_YUNGUI:Ljava/lang/String; = "yungui"

.field public static final DNM_YUNNAN:Ljava/lang/String; = "yunnan"

.field public static final DNM_ZANGYU:Ljava/lang/String; = "zangyu"

.field public static final DNM_ZH_2_EN:Ljava/lang/String; = "zh2en"

.field public static final DTT_CONTACT:Ljava/lang/String; = "contact"

.field public static final DTT_NW:Ljava/lang/String; = "newword"

.field public static final DTT_UW:Ljava/lang/String; = "userword"

.field public static final END_DATA_PARAMS_FORMAT:Ljava/lang/String; = "opt=apd\u0000"

.field public static final END_RECOG_PARAMS:Ljava/lang/String; = "normal end\u0000"

.field public static final GRAMMAR_NONE:Ljava/lang/String; = "\u0000"

.field private static final GRAMMAR_SMS_CNEN:Ljava/lang/String; = "<english>sms-en16k</english><chinese>sms16k</chinese>"

.field private static final GRAMMAR_URL:Ljava/lang/String; = "file:///c:/url.abnf\u0000"

.field public static final INIT_PARAMS_FORMAT:Ljava/lang/String; = "timeout=%d\u0000"

.field public static final KEY_ACP:Ljava/lang/String; = "acp=1"

.field public static final KEY_ADDR:Ljava/lang/String; = "server_url="

.field public static final KEY_AND:Ljava/lang/String; = "&"

.field public static final KEY_APPID:Ljava/lang/String; = "appid="

.field public static final KEY_AUTH:Ljava/lang/String; = "auth="

.field public static final KEY_AUTH_ID:Ljava/lang/String; = "auth_id_usr="

.field public static final KEY_CALLER:Ljava/lang/String; = "tel_number="

.field public static final KEY_CONTACTS:Ljava/lang/String; = "contacts"

.field public static final KEY_DF:Ljava/lang/String; = "downfrom="

.field public static final KEY_DIV:Ljava/lang/String; = "|"

.field public static final KEY_DTT:Ljava/lang/String; = "dtt="

.field public static final KEY_DVC:Ljava/lang/String; = "dvc="

.field public static final KEY_DWA:Ljava/lang/String; = "dwa=1"

.field public static final KEY_ENT:Ljava/lang/String; = "ent="

.field public static final KEY_EOS:Ljava/lang/String; = "eos="

.field public static final KEY_EXTID:Ljava/lang/String; = "extid="

.field public static final KEY_GRAY:Ljava/lang/String; = "ent=gray16k"

.field public static final KEY_HCR_MODE:Ljava/lang/String; = "mod="

.field public static final KEY_IMEI:Ljava/lang/String; = "imei="

.field public static final KEY_IMSI:Ljava/lang/String; = "imsi="

.field public static final KEY_LAFT_TIMEOUT:Ljava/lang/String; = "lafr_timeout="

.field public static final KEY_MTYPE:Ljava/lang/String; = "m_type="

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_NET_SUBTYPE:Ljava/lang/String; = "net_subtype="

.field public static final KEY_NET_TYPE:Ljava/lang/String; = "net_type="

.field public static final KEY_NEWWORD:Ljava/lang/String; = "newword"

.field public static final KEY_OVER:Ljava/lang/String; = "\u0000"

.field public static final KEY_PPT:Ljava/lang/String; = "ppt="

.field public static final KEY_PROT:Ljava/lang/String; = "prot_ver"

.field public static final KEY_PRS:Ljava/lang/String; = "prs="

.field public static final KEY_RSE:Ljava/lang/String; = "rse="

.field public static final KEY_RST:Ljava/lang/String; = "rst="

.field public static final KEY_SEP:Ljava/lang/String; = ","

.field public static final KEY_SSM:Ljava/lang/String; = "ssm="

.field public static final KEY_SUB:Ljava/lang/String; = "sub="

.field public static final KEY_TIMEOUT:Ljava/lang/String; = "timeout="

.field public static final KEY_UID:Ljava/lang/String; = "sid="

.field public static final KEY_USERWORD:Ljava/lang/String; = "userword"

.field public static final KEY_USERWORD_WORDS:Ljava/lang/String; = "words"

.field public static final KEY_VACLIENTVER:Ljava/lang/String; = "vaclientver="

.field public static final KEY_VER:Ljava/lang/String; = "ver="

.field public static final KEY_VIP:Ljava/lang/String; = "ent=sms-vip16k"

.field public static final KEY_VUID:Ljava/lang/String; = "vuid="

.field public static final KEY_WBEST:Ljava/lang/String; = "wbest=4"

.field public static final KEY_WORD:Ljava/lang/String; = "word"

.field public static final LANGUAGE_AUTO:I = 0x17

.field public static final LANGUAGE_CANTONESE:I = 0x1

.field public static final LANGUAGE_CHANGSHA:I = 0x7

.field public static final LANGUAGE_CHINESE:I = 0x0

.field public static final LANGUAGE_CN_EN:I = 0x18

.field public static final LANGUAGE_DONGBEI:I = 0x5

.field public static final LANGUAGE_ENGLISH:I = 0x2

.field public static final LANGUAGE_EN_2_ZH:I = 0x14

.field public static final LANGUAGE_GRAY:I = 0x16

.field public static final LANGUAGE_GUIZHOU:I = 0x11

.field public static final LANGUAGE_HEFEI:I = 0xa

.field public static final LANGUAGE_HENAN:I = 0x4

.field public static final LANGUAGE_KEJIA:I = 0x12

.field public static final LANGUAGE_MINNAN:I = 0xc

.field public static final LANGUAGE_NANCHANG:I = 0xb

.field public static final LANGUAGE_NANJING:I = 0xe

.field public static final LANGUAGE_SHANDONG:I = 0x8

.field public static final LANGUAGE_SHANGHAI:I = 0x10

.field public static final LANGUAGE_SHANXITAIYUAN:I = 0xf

.field public static final LANGUAGE_SHANXIXIAN:I = 0xd

.field public static final LANGUAGE_SICUAN:I = 0x3

.field public static final LANGUAGE_TIANJIN:I = 0x6

.field public static final LANGUAGE_VIP:I = 0x19

.field public static final LANGUAGE_WUHAN:I = 0x9

.field public static final LANGUAGE_YUNNAN:I = 0x15

.field public static final LANGUAGE_ZH_2_EN:I = 0x13

.field private static final Params16K:Ljava/lang/String; = "ssm=1,sub=iat,auf=audio/L16;rate=16000\u0000"

.field public static final RST_JSON:Ljava/lang/String; = "json"

.field public static final START_DATA_PARAMS_FORMAT:Ljava/lang/String; = "opt=sta,rl=%d,rmn=%d,rmd=%d,cmcn=%d,hal=%d,hat=%d,har=%d,hab=%d,pc=%d\u0000"

.field public static final SUB_IAT:Ljava/lang/String; = "iat"

.field public static final SUB_NUP:Ljava/lang/String; = "nup"

.field public static final SUB_UUP:Ljava/lang/String; = "uup"

.field private static final SmsParams16K:Ljava/lang/String; = "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=sms16k\u0000"

.field private static final SmsParams8K:Ljava/lang/String; = "ssm=1,sub=iat,auf=audio/L16;rate=8000,ent=sms8k\u0000"

.field private static final SmsParamsAuto16K:Ljava/lang/String; = "ssm=1,sub=src,auf=audio/L16;rate=16000,ent=sms16k,dsc=1,scm=idr\u0000"

.field private static final SmsParamsCantonese16K:Ljava/lang/String; = "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=cantonese16k\u0000"

.field private static final SmsParamsChangSha16K:Ljava/lang/String; = "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=changshanese16k\u0000"

.field private static final SmsParamsDongBei16K:Ljava/lang/String; = "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=dongbeiese16k\u0000"

.field private static final SmsParamsEn2Zh16K:Ljava/lang/String; = "sch=1,vascn=translation,from=en,to=zh,ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=sms-en16k\u0000"

.field private static final SmsParamsEnglish16K:Ljava/lang/String; = "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=sms-en16k\u0000"

.field private static final SmsParamsGray16K:Ljava/lang/String; = "ssm=1,sub=iat,clg=1,auf=audio/L16;rate=16000,ent=gray16k\u0000"

.field private static final SmsParamsGuiZhou16K:Ljava/lang/String; = "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=guizhounese16k\u0000"

.field private static final SmsParamsHeNan16K:Ljava/lang/String; = "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=henanese16k\u0000"

.field private static final SmsParamsHefei16K:Ljava/lang/String; = "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=hefeinese16k\u0000"

.field private static final SmsParamsKeJia16K:Ljava/lang/String; = "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=hakkanese16k\u0000"

.field private static final SmsParamsMinNan16K:Ljava/lang/String; = "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=minnanese16k\u0000"

.field private static final SmsParamsNanChang16K:Ljava/lang/String; = "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=nanchangnese16k\u0000"

.field private static final SmsParamsNanJing16K:Ljava/lang/String; = "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=nankinese16k\u0000"

.field private static final SmsParamsShanDong16K:Ljava/lang/String; = "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=shandongnese16k\u0000"

.field private static final SmsParamsShanXiTaiYuan16K:Ljava/lang/String; = "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=taiyuanese16k\u0000"

.field private static final SmsParamsShangHai16K:Ljava/lang/String; = "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=shanghainese16k\u0000"

.field private static final SmsParamsSiCuan16K:Ljava/lang/String; = "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=lmz16k\u0000"

.field private static final SmsParamsTianJin16K:Ljava/lang/String; = "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=tianjinese16k\u0000"

.field private static final SmsParamsVip16K:Ljava/lang/String; = "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=sms-vip16k\u0000"

.field private static final SmsParamsWuHan16K:Ljava/lang/String; = "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=wuhanese16k\u0000"

.field private static final SmsParamsXiAn16K:Ljava/lang/String; = "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=shanxinese16k\u0000"

.field private static final SmsParamsYunNan16K:Ljava/lang/String; = "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=yunnanese16k\u0000"

.field private static final SmsParamsZh2En16K:Ljava/lang/String; = "sch=1,vascn=translation,from=zh,to=en,ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=sms16k\u0000"

.field private static final SmsParamsZh2En16K_VIP:Ljava/lang/String; = "sch=1,vascn=translation,from=zh,to=en,ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=sms-vip16k\u0000"

.field private static final TAG:Ljava/lang/String; = "SPEECH_MscConfig"

.field private static final UrlParams16K:Ljava/lang/String; = "ssm=1,sub=asr,rst=plain,auf=audio/L16;rate=16000\u0000"

.field private static final UrlParams8K:Ljava/lang/String; = "ssm=1,sub=asr,rst=plain,auf=audio/L16;rate=8000\u0000"

.field public static final VALUE_FALSE:Ljava/lang/String; = "0"

.field public static final VALUE_GRAY:Ljava/lang/String; = "gray16k"

.field public static final VALUE_IAT:Ljava/lang/String; = "iat"

.field public static final VALUE_PROT1:Ljava/lang/String; = "1"

.field public static final VALUE_PROT50:Ljava/lang/String; = "50"

.field public static final VALUE_TRUE:Ljava/lang/String; = "1"

.field private static final VoiceSearchParams16K:Ljava/lang/String; = "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=vsearch16k\u0000"

.field private static final VoiceSearchParams8K:Ljava/lang/String; = "ssm=1,sub=iat,auf=audio/L16;rate=8000,ent=vsearch8k\u0000"

.field private static final WhisperParams16K:Ljava/lang/String; = "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=whisper16k\u0000"


# instance fields
.field private mAcp:Z

.field private mAid:Ljava/lang/String;

.field private mAuthId:Ljava/lang/String;

.field private mCaller:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDownloadFromID:Ljava/lang/String;

.field private mDynamicWord:Z

.field private mFeatureAue:Z

.field private mIsPersonal:Z

.field private mLanguage:I

.field private mServerUrl:Ljava/lang/String;

.field private mSmsGrammar:Ljava/lang/String;

.field private mSmsParams:Ljava/lang/String;

.field private mSpeechMultiCand:Z

.field private mUid:Ljava/lang/String;

.field private mVadEos:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "sdcard"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "iFlytekIME.cfg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/msc/MscConfig;->CFG_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/iflytek/msc/MscConfig;->mVadEos:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/msc/MscConfig;->mLanguage:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/msc/MscConfig;->mServerUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/msc/MscConfig;->mSmsGrammar:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/msc/MscConfig;->mSmsParams:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/iflytek/msc/MscConfig;->mFeatureAue:Z

    iput-boolean v0, p0, Lcom/iflytek/msc/MscConfig;->mSpeechMultiCand:Z

    iput-boolean v0, p0, Lcom/iflytek/msc/MscConfig;->mDynamicWord:Z

    iput-boolean v0, p0, Lcom/iflytek/msc/MscConfig;->mAcp:Z

    iput-boolean v0, p0, Lcom/iflytek/msc/MscConfig;->mIsPersonal:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/iflytek/msc/MscConfig;->mVadEos:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/msc/MscConfig;->mLanguage:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/msc/MscConfig;->mServerUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/msc/MscConfig;->mSmsGrammar:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/msc/MscConfig;->mSmsParams:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/iflytek/msc/MscConfig;->mFeatureAue:Z

    iput-boolean v0, p0, Lcom/iflytek/msc/MscConfig;->mSpeechMultiCand:Z

    iput-boolean v0, p0, Lcom/iflytek/msc/MscConfig;->mDynamicWord:Z

    iput-boolean v0, p0, Lcom/iflytek/msc/MscConfig;->mAcp:Z

    iput-boolean v0, p0, Lcom/iflytek/msc/MscConfig;->mIsPersonal:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/msc/MscConfig;->mContext:Landroid/content/Context;

    return-void
.end method

.method private GetBuildParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    new-instance v0, Landroid/os/Build;

    invoke-direct {v0}, Landroid/os/Build;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private GetServerCfg()V
    .locals 9

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/iflytek/msc/MscConfig;->CFG_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x400

    new-array v1, v1, [B

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    :try_start_2
    const-string v5, "SmsGrammar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v6, "\u0000"

    const/4 v7, -0x1

    const-string v8, "="

    if-eqz v5, :cond_0

    :try_start_3
    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v7, v5, :cond_1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/msc/MscConfig;->mSmsGrammar:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/iflytek/msc/MscConfig;->mSmsGrammar:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/msc/MscConfig;->mSmsGrammar:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v5, "SmsParams"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v7, v5, :cond_1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/msc/MscConfig;->mSmsParams:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/iflytek/msc/MscConfig;->mSmsParams:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/msc/MscConfig;->mSmsParams:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_2
    :try_start_5
    const-string v1, "SPEECH_MscConfig"

    const-string v3, "GetServerCfg: "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :goto_3
    move-object v3, v2

    :goto_4
    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    :cond_3
    throw v0

    :catch_3
    :cond_4
    :goto_5
    return-void
.end method

.method private getLauguageParams()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/iflytek/msc/MscConfig;->mLanguage:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=sms-vip16k\u0000"

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "ssm=1,sub=iat,auf=audio/L16;rate=16000\u0000"

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "ssm=1,sub=src,auf=audio/L16;rate=16000,ent=sms16k,dsc=1,scm=idr\u0000"

    goto :goto_0

    :pswitch_3
    const-string v0, "ssm=1,sub=iat,clg=1,auf=audio/L16;rate=16000,ent=gray16k\u0000"

    goto :goto_0

    :pswitch_4
    const-string v0, "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=yunnanese16k\u0000"

    goto :goto_0

    :pswitch_5
    const-string v0, "sch=1,vascn=translation,from=en,to=zh,ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=sms-en16k\u0000"

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/iflytek/msc/MscConfig;->getAuthId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sch=1,vascn=translation,from=zh,to=en,ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=sms-vip16k\u0000"

    goto :goto_0

    :cond_0
    const-string v0, "sch=1,vascn=translation,from=zh,to=en,ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=sms16k\u0000"

    goto :goto_0

    :pswitch_7
    const-string v0, "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=hakkanese16k\u0000"

    goto :goto_0

    :pswitch_8
    const-string v0, "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=guizhounese16k\u0000"

    goto :goto_0

    :pswitch_9
    const-string v0, "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=shanghainese16k\u0000"

    goto :goto_0

    :pswitch_a
    const-string v0, "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=taiyuanese16k\u0000"

    goto :goto_0

    :pswitch_b
    const-string v0, "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=nankinese16k\u0000"

    goto :goto_0

    :pswitch_c
    const-string v0, "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=shanxinese16k\u0000"

    goto :goto_0

    :pswitch_d
    const-string v0, "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=minnanese16k\u0000"

    goto :goto_0

    :pswitch_e
    const-string v0, "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=nanchangnese16k\u0000"

    goto :goto_0

    :pswitch_f
    const-string v0, "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=hefeinese16k\u0000"

    goto :goto_0

    :pswitch_10
    const-string v0, "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=wuhanese16k\u0000"

    goto :goto_0

    :pswitch_11
    const-string v0, "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=shandongnese16k\u0000"

    goto :goto_0

    :pswitch_12
    const-string v0, "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=changshanese16k\u0000"

    goto :goto_0

    :pswitch_13
    const-string v0, "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=tianjinese16k\u0000"

    goto :goto_0

    :pswitch_14
    const-string v0, "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=dongbeiese16k\u0000"

    goto :goto_0

    :pswitch_15
    const-string v0, "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=henanese16k\u0000"

    goto :goto_0

    :pswitch_16
    const-string v0, "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=lmz16k\u0000"

    goto :goto_0

    :pswitch_17
    const-string v0, "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=sms-en16k\u0000"

    goto :goto_0

    :pswitch_18
    const-string v0, "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=cantonese16k\u0000"

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getOsInfoParam()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MANUFACTURER"

    invoke-direct {p0, v1}, Lcom/iflytek/msc/MscConfig;->GetBuildParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "osmanufact="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "MODEL"

    invoke-direct {p0, v1}, Lcom/iflytek/msc/MscConfig;->GetBuildParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "osmodel="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "PRODUCT"

    invoke-direct {p0, v1}, Lcom/iflytek/msc/MscConfig;->GetBuildParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "osproduct="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "osversion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ossystem=Android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSmsGrammar(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/msc/MscConfig;->mSmsGrammar:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/iflytek/msc/MscConfig;->GetServerCfg()V

    iget-object v0, p0, Lcom/iflytek/msc/MscConfig;->mSmsGrammar:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method


# virtual methods
.method public appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "SPEECH"

    if-nez v0, :cond_1

    const-string p1, "appendParams empty KEY"

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "appendParams empty Value key="

    :goto_1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/16 v0, 0x2c

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "erroe value:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " key="

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3d

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    return-void
.end method

.method public getAuthId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/msc/MscConfig;->mAuthId:Ljava/lang/String;

    return-object v0
.end method

.method public getCaller()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/msc/MscConfig;->mCaller:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/msc/MscConfig;->mCaller:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getDownloadFromID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/msc/MscConfig;->mDownloadFromID:Ljava/lang/String;

    return-object v0
.end method

.method public getInitParam(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "xzhd"

    iget-object v1, p0, Lcom/iflytek/msc/MscConfig;->mDownloadFromID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/msc/MscConfig;->getInitParamForXZ(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    iput-object p1, p0, Lcom/iflytek/msc/MscConfig;->mAid:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iflytek/msc/IflyEnviroment;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "downfrom="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/iflytek/msc/MscConfig;->mDownloadFromID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "net_type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iflytek/msc/IflyEnviroment;->getApnType()Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "net_subtype="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iflytek/msc/IflyEnviroment;->getNetSubName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "vad_enable=false,auth=1,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "dvc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iflytek/msc/IflyEnviroment;->getIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iflytek/msc/MscConfig;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "imei="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iflytek/msc/IflyEnviroment;->getIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iflytek/msc/IflyEnviroment;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "imsi="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, "sid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iflytek/msc/MscConfig;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "tel_number="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iflytek/msc/MscConfig;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "appid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/iflytek/msc/MscConfig;->getOsInfoParam()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/iflytek/msc/MscConfig;->mCaller:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/iflytek/msc/MscConfig;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0, p3}, Lcom/iflytek/msc/MscConfig;->setServerUrl(Ljava/lang/String;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "server_url="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/msc/MscConfig;->getAuthId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "auth_id_usr="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iflytek/msc/MscConfig;->getAuthId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string p1, "timeout="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u0000"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getInitParamForXZ(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "auth"

    const-string v2, "1"

    invoke-virtual {p0, v0, v1, v2}, Lcom/iflytek/msc/MscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appid"

    invoke-virtual {p0, v0, v1, p1}, Lcom/iflytek/msc/MscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "lvl"

    const-string v1, "15"

    invoke-virtual {p0, v0, p1, v1}, Lcom/iflytek/msc/MscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "output"

    invoke-virtual {p0, v0, p1, v2}, Lcom/iflytek/msc/MscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "unique_id"

    const-string v1, "null"

    invoke-virtual {p0, v0, p1, v1}, Lcom/iflytek/msc/MscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "timeout"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1}, Lcom/iflytek/msc/MscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "app.name"

    const-string p2, "\u5fc3\u667a\u65e0\u969c\u788d\u52a9\u624b"

    invoke-virtual {p0, v0, p1, p2}, Lcom/iflytek/msc/MscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "app.pkg"

    const-string p2, "com.aaa.xzhd.xzreader.voiceback"

    invoke-virtual {p0, v0, p1, p2}, Lcom/iflytek/msc/MscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "app.path"

    const-string p2, "/data/user/0/org.nobody.multitts"

    invoke-virtual {p0, v0, p1, p2}, Lcom/iflytek/msc/MscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "app.ver.code"

    const-string p2, "799"

    invoke-virtual {p0, v0, p1, p2}, Lcom/iflytek/msc/MscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "app.ver.name"

    const-string p2, "v3.1.1.799.230320_104306"

    invoke-virtual {p0, v0, p1, p2}, Lcom/iflytek/msc/MscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "msc.ver"

    const-string p2, "4.6.1142.1290"

    invoke-virtual {p0, v0, p1, p2}, Lcom/iflytek/msc/MscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "net_type"

    const-string p2, "wifi"

    invoke-virtual {p0, v0, p1, p2}, Lcom/iflytek/msc/MscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "net_subtype"

    invoke-virtual {p0, v0, p1, p2}, Lcom/iflytek/msc/MscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "dvc"

    invoke-virtual {p0, v0, p1, v1}, Lcom/iflytek/msc/MscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "os.system"

    const-string p2, "Android"

    invoke-virtual {p0, v0, p1, p2}, Lcom/iflytek/msc/MscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "os.android_id"

    invoke-virtual {p0, v0, p1, v1}, Lcom/iflytek/msc/MscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "os.version"

    const-string p2, "30"

    invoke-virtual {p0, v0, p1, p2}, Lcom/iflytek/msc/MscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLanguage()I
    .locals 1

    iget v0, p0, Lcom/iflytek/msc/MscConfig;->mLanguage:I

    return v0
.end method

.method public getLoginParam(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iflytek/msc/IflyEnviroment;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "downfrom="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/iflytek/msc/MscConfig;->mDownloadFromID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "net_type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iflytek/msc/IflyEnviroment;->getApnType()Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "net_subtype="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iflytek/msc/IflyEnviroment;->getNetSubName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "auth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "appid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/iflytek/msc/MscConfig;->mAid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "imei="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iflytek/msc/IflyEnviroment;->getIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iflytek/msc/IflyEnviroment;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "imsi="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "sid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iflytek/msc/MscConfig;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iflytek/msc/MscConfig;->getAuthId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "auth_id_usr="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iflytek/msc/MscConfig;->getAuthId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, "timeout="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/iflytek/msc/MscConfig;->getOsInfoParam()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "rse="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "utf-8"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "login param = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SPEECH_MscConfig"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/msc/MscConfig;->mServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionGrammar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget p1, p0, Lcom/iflytek/msc/MscConfig;->mLanguage:I

    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    const-string p1, "<english>sms-en16k</english><chinese>sms16k</chinese>"

    goto :goto_0

    :cond_0
    const-string p1, "\u0000"

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sessBegin grammar = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SPEECH_MscConfig"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public getSessionParam(Ljava/lang/String;III)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "net_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iflytek/msc/IflyEnviroment;->getApnType()Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "net_subtype="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iflytek/msc/IflyEnviroment;->getNetSubName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "timeout="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "lafr_timeout="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "eos="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/iflytek/msc/MscConfig;->mVadEos:I

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "imei="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iflytek/msc/IflyEnviroment;->getIMEI()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iflytek/msc/IflyEnviroment;->getIMSI()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    const-string p4, "imsi="

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p3, "sid="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iflytek/msc/MscConfig;->getUid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iflytek/msc/MscConfig;->getAuthId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p3, "auth_id_usr="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iflytek/msc/MscConfig;->getAuthId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p3, "prs="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/iflytek/msc/MscConfig;->mIsPersonal:Z

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/iflytek/msc/MscConfig;->mSpeechMultiCand:Z

    if-eqz p3, :cond_2

    const-string p3, "wbest=4"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean p3, p0, Lcom/iflytek/msc/MscConfig;->mDynamicWord:Z

    if-eqz p3, :cond_3

    const-string p3, "dwa=1"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean p3, p0, Lcom/iflytek/msc/MscConfig;->mAcp:Z

    if-eqz p3, :cond_4

    const-string p3, "acp=1"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget p3, p0, Lcom/iflytek/msc/MscConfig;->mLanguage:I

    const/16 p4, 0x13

    if-eq p3, p4, :cond_5

    const/16 p4, 0x14

    if-ne p3, p4, :cond_6

    :cond_5
    const-string p3, "vaclientver="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iflytek/msc/IflyEnviroment;->getVersionName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "vuid="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iflytek/msc/MscConfig;->getUid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    sget-object p3, Lcom/iflytek/msc/IflyEnviroment$MscType;->sms:Lcom/iflytek/msc/IflyEnviroment$MscType;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-direct {p0}, Lcom/iflytek/msc/MscConfig;->getLauguageParams()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    const-string p1, "ssm=1,sub=iat,auf=audio/L16;rate=16000,ent=sms16k\u0000"

    :cond_7
    const/16 p3, 0x3e80

    if-eq p2, p3, :cond_8

    const-string p1, "ssm=1,sub=iat,auf=audio/L16;rate=8000,ent=sms8k\u0000"

    :cond_8
    invoke-virtual {p0, p1}, Lcom/iflytek/msc/MscConfig;->getSmsParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sessBegin param = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "SPEECH_MscConfig"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_9
    return-object p1
.end method

.method public getSmsParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/msc/MscConfig;->mSmsParams:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/iflytek/msc/MscConfig;->GetServerCfg()V

    iget-object v0, p0, Lcom/iflytek/msc/MscConfig;->mSmsParams:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/msc/MscConfig;->mUid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/msc/MscConfig;->mUid:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getUploadSessionParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sub="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "dtt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/iflytek/msc/MscConfig;->mLanguage:I

    const/16 v1, 0x16

    if-ne p2, v1, :cond_0

    const-string p2, "ent=gray16k"

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/msc/MscConfig;->getAuthId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    iget p2, p0, Lcom/iflytek/msc/MscConfig;->mLanguage:I

    const/16 v1, 0x19

    if-eq p2, v1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    const-string p2, "ent=sms-vip16k"

    goto :goto_0

    :cond_2
    :goto_1
    const-string p2, "net_type="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iflytek/msc/IflyEnviroment;->getApnType()Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "net_subtype="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iflytek/msc/IflyEnviroment;->getNetSubName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "imei="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iflytek/msc/IflyEnviroment;->getIMEI()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iflytek/msc/IflyEnviroment;->getIMSI()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "imsi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string p2, "sid="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iflytek/msc/MscConfig;->getUid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iflytek/msc/MscConfig;->getAuthId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "auth_id_usr="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iflytek/msc/MscConfig;->getAuthId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string p2, "ssm="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "0"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "rst="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "json"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "rse="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "utf-8"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "upload param = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "SPEECH_MscConfig"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isFeatureAue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/msc/MscConfig;->mFeatureAue:Z

    return v0
.end method

.method public isSpeechMultiCand()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/msc/MscConfig;->mSpeechMultiCand:Z

    return v0
.end method

.method public setAcp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/msc/MscConfig;->mAcp:Z

    return-void
.end method

.method public setAuthId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/msc/MscConfig;->mAuthId:Ljava/lang/String;

    return-void
.end method

.method public setCaller(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/msc/MscConfig;->mCaller:Ljava/lang/String;

    return-void
.end method

.method public setDownloadFromID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/msc/MscConfig;->mDownloadFromID:Ljava/lang/String;

    return-void
.end method

.method public setDynamicWord(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/msc/MscConfig;->mDynamicWord:Z

    return-void
.end method

.method public setFeatureAue(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/msc/MscConfig;->mFeatureAue:Z

    return-void
.end method

.method public setIsPersonal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/msc/MscConfig;->mIsPersonal:Z

    return-void
.end method

.method public setLanguage(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/msc/MscConfig;->mLanguage:I

    return-void
.end method

.method public setServerUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/msc/MscConfig;->mServerUrl:Ljava/lang/String;

    return-void
.end method

.method public setSpeechMultiCand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/msc/MscConfig;->mSpeechMultiCand:Z

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/msc/MscConfig;->mUid:Ljava/lang/String;

    return-void
.end method

.method public setVadEos(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/msc/MscConfig;->mVadEos:I

    return-void
.end method
