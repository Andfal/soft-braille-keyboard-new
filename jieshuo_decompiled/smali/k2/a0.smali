.class public Lk2/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static b:[Ljava/lang/String;

.field public static c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 39

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x5208

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lk2/a0;->a:Ljava/util/HashMap;

    const/16 v0, 0x82b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "a1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "a2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "a3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "a4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "a5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ai1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ai2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ai3"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ai4"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ai5"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "an1"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "an2"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "an3"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "an4"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "an5"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ang1"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ang2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ang3"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ang4"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "ang5"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "ao1"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "ao2"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "ao3"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "ao4"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "ao5"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ba1"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "ba2"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "ba3"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "ba4"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "ba5"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "bai1"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "bai2"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "bai3"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "bai4"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "bai5"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "ban1"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "ban2"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "ban3"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "ban4"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "ban5"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "bang1"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "bang2"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "bang3"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "bang4"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "bang5"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "bao1"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "bao2"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "bao3"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "bao4"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "bao5"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "bei1"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "bei2"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "bei3"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "bei4"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "bei5"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "ben1"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "ben2"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "ben3"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "ben4"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "ben5"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "beng1"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "beng2"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "beng3"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "beng4"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "beng5"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "bi1"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "bi2"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "bi3"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "bi4"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "bi5"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "bian1"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "bian2"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "bian3"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "bian4"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "bian5"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "biao1"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "biao2"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "biao3"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "biao4"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "biao5"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "bie1"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "bie2"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "bie3"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "bie4"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "bie5"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "bin1"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "bin2"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "bin3"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "bin4"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "bin5"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "bing1"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "bing2"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "bing3"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "bing4"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "bing5"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "bo1"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "bo2"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "bo3"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "bo4"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "bo5"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "bu1"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "bu2"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "bu3"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "bu4"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "bu5"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "ca1"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "ca2"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "ca3"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "ca4"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "ca5"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "cai1"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "cai2"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "cai3"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "cai4"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "cai5"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "can1"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "can2"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "can3"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "can4"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "can5"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "cang1"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "cang2"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "cang3"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "cang4"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "cang5"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "cao1"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "cao2"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "cao3"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "cao4"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "cao5"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "ce1"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "ce2"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "ce3"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "ce4"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "ce5"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "cen1"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "cen2"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "cen3"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "cen4"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "cen5"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "ceng1"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "ceng2"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "ceng3"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "ceng4"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "ceng5"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "cha1"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "cha2"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "cha3"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "cha4"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "cha5"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "chai1"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "chai2"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "chai3"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "chai4"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "chai5"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "chan1"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "chan2"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "chan3"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "chan4"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "chan5"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "chang1"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "chang2"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "chang3"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "chang4"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "chang5"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "chao1"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "chao2"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "chao3"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "chao4"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "chao5"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "che1"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "che2"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "che3"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "che4"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "che5"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "chen1"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "chen2"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "chen3"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "chen4"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "chen5"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "cheng1"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "cheng2"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "cheng3"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "cheng4"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "cheng5"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "chi1"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "chi2"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "chi3"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "chi4"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "chi5"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "chong1"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "chong2"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "chong3"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "chong4"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "chong5"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "chou1"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "chou2"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "chou3"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "chou4"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "chou5"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "chu1"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "chu2"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "chu3"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "chu4"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "chu5"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "chua1"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "chua2"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "chua3"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "chua4"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "chua5"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "chuai1"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "chuai2"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "chuai3"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "chuai4"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "chuai5"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "chuan1"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "chuan2"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "chuan3"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "chuan4"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "chuan5"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "chuang1"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "chuang2"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "chuang3"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "chuang4"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "chuang5"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "chui1"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "chui2"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "chui3"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "chui4"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "chui5"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "chun1"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "chun2"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "chun3"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "chun4"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "chun5"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "chuo1"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "chuo2"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "chuo3"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "chuo4"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "chuo5"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "ci1"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "ci2"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "ci3"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "ci4"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "ci5"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "cong1"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "cong2"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "cong3"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "cong4"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "cong5"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "cou1"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "cou2"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "cou3"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "cou4"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "cou5"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "cu1"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const-string v2, "cu2"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string v2, "cu3"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string v2, "cu4"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string v2, "cu5"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string v2, "cuan1"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string v2, "cuan2"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string v2, "cuan3"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string v2, "cuan4"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string v2, "cuan5"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string v2, "cui1"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string v2, "cui2"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string v2, "cui3"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string v2, "cui4"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string v2, "cui5"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string v2, "cun1"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string v2, "cun2"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string v2, "cun3"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string v2, "cun4"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string v2, "cun5"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string v2, "cuo1"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string v2, "cuo2"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string v2, "cuo3"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string v2, "cuo4"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string v2, "cuo5"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string v2, "da1"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string v2, "da2"

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const-string v2, "da3"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const-string v2, "da4"

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    const-string v2, "da5"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string v2, "dai1"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string v2, "dai2"

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    const-string v2, "dai3"

    aput-object v2, v0, v1

    const/16 v1, 0x120

    const-string v2, "dai4"

    aput-object v2, v0, v1

    const/16 v1, 0x121

    const-string v2, "dai5"

    aput-object v2, v0, v1

    const/16 v1, 0x122

    const-string v2, "dan1"

    aput-object v2, v0, v1

    const/16 v1, 0x123

    const-string v2, "dan2"

    aput-object v2, v0, v1

    const/16 v1, 0x124

    const-string v2, "dan3"

    aput-object v2, v0, v1

    const/16 v1, 0x125

    const-string v2, "dan4"

    aput-object v2, v0, v1

    const/16 v1, 0x126

    const-string v2, "dan5"

    aput-object v2, v0, v1

    const/16 v1, 0x127

    const-string v2, "dang1"

    aput-object v2, v0, v1

    const/16 v1, 0x128

    const-string v2, "dang2"

    aput-object v2, v0, v1

    const/16 v1, 0x129

    const-string v2, "dang3"

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    const-string v2, "dang4"

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    const-string v2, "dang5"

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    const-string v2, "dao1"

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    const-string v2, "dao2"

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    const-string v2, "dao3"

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    const-string v2, "dao4"

    aput-object v2, v0, v1

    const/16 v1, 0x130

    const-string v2, "dao5"

    aput-object v2, v0, v1

    const/16 v1, 0x131

    const-string v2, "de1"

    aput-object v2, v0, v1

    const/16 v1, 0x132

    const-string v2, "de2"

    aput-object v2, v0, v1

    const/16 v1, 0x133

    const-string v2, "de3"

    aput-object v2, v0, v1

    const/16 v1, 0x134

    const-string v2, "de4"

    aput-object v2, v0, v1

    const/16 v1, 0x135

    const-string v2, "de5"

    aput-object v2, v0, v1

    const/16 v1, 0x136

    const-string v2, "den1"

    aput-object v2, v0, v1

    const/16 v1, 0x137

    const-string v2, "den2"

    aput-object v2, v0, v1

    const/16 v1, 0x138

    const-string v2, "den3"

    aput-object v2, v0, v1

    const/16 v1, 0x139

    const-string v2, "den4"

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    const-string v2, "den5"

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    const-string v2, "dei1"

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    const-string v2, "dei2"

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    const-string v2, "dei3"

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    const-string v2, "dei4"

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    const-string v2, "dei5"

    aput-object v2, v0, v1

    const/16 v1, 0x140

    const-string v2, "deng1"

    aput-object v2, v0, v1

    const/16 v1, 0x141

    const-string v2, "deng2"

    aput-object v2, v0, v1

    const/16 v1, 0x142

    const-string v2, "deng3"

    aput-object v2, v0, v1

    const/16 v1, 0x143

    const-string v2, "deng4"

    aput-object v2, v0, v1

    const/16 v1, 0x144

    const-string v2, "deng5"

    aput-object v2, v0, v1

    const/16 v1, 0x145

    const-string v2, "di1"

    aput-object v2, v0, v1

    const/16 v1, 0x146

    const-string v2, "di2"

    aput-object v2, v0, v1

    const/16 v1, 0x147

    const-string v2, "di3"

    aput-object v2, v0, v1

    const/16 v1, 0x148

    const-string v2, "di4"

    aput-object v2, v0, v1

    const/16 v1, 0x149

    const-string v2, "di5"

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    const-string v2, "dia1"

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    const-string v2, "dia2"

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    const-string v2, "dia3"

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    const-string v2, "dia4"

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    const-string v2, "dia5"

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    const-string v2, "dian1"

    aput-object v2, v0, v1

    const/16 v1, 0x150

    const-string v2, "dian2"

    aput-object v2, v0, v1

    const/16 v1, 0x151

    const-string v2, "dian3"

    aput-object v2, v0, v1

    const/16 v1, 0x152

    const-string v2, "dian4"

    aput-object v2, v0, v1

    const/16 v1, 0x153

    const-string v2, "dian5"

    aput-object v2, v0, v1

    const/16 v1, 0x154

    const-string v2, "diao1"

    aput-object v2, v0, v1

    const/16 v1, 0x155

    const-string v2, "diao2"

    aput-object v2, v0, v1

    const/16 v1, 0x156

    const-string v2, "diao3"

    aput-object v2, v0, v1

    const/16 v1, 0x157

    const-string v2, "diao4"

    aput-object v2, v0, v1

    const/16 v1, 0x158

    const-string v2, "diao5"

    aput-object v2, v0, v1

    const/16 v1, 0x159

    const-string v2, "die1"

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    const-string v2, "die2"

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    const-string v2, "die3"

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    const-string v2, "die4"

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    const-string v2, "die5"

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    const-string v2, "ding1"

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    const-string v2, "ding2"

    aput-object v2, v0, v1

    const/16 v1, 0x160

    const-string v2, "ding3"

    aput-object v2, v0, v1

    const/16 v1, 0x161

    const-string v2, "ding4"

    aput-object v2, v0, v1

    const/16 v1, 0x162

    const-string v2, "ding5"

    aput-object v2, v0, v1

    const/16 v1, 0x163

    const-string v2, "diu1"

    aput-object v2, v0, v1

    const/16 v1, 0x164

    const-string v2, "diu2"

    aput-object v2, v0, v1

    const/16 v1, 0x165

    const-string v2, "diu3"

    aput-object v2, v0, v1

    const/16 v1, 0x166

    const-string v2, "diu4"

    aput-object v2, v0, v1

    const/16 v1, 0x167

    const-string v2, "diu5"

    aput-object v2, v0, v1

    const/16 v1, 0x168

    const-string v2, "dong1"

    aput-object v2, v0, v1

    const/16 v1, 0x169

    const-string v2, "dong2"

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    const-string v2, "dong3"

    aput-object v2, v0, v1

    const/16 v1, 0x16b

    const-string v2, "dong4"

    aput-object v2, v0, v1

    const/16 v1, 0x16c

    const-string v2, "dong5"

    aput-object v2, v0, v1

    const/16 v1, 0x16d

    const-string v2, "dou1"

    aput-object v2, v0, v1

    const/16 v1, 0x16e

    const-string v2, "dou2"

    aput-object v2, v0, v1

    const/16 v1, 0x16f

    const-string v2, "dou3"

    aput-object v2, v0, v1

    const/16 v1, 0x170

    const-string v2, "dou4"

    aput-object v2, v0, v1

    const/16 v1, 0x171

    const-string v2, "dou5"

    aput-object v2, v0, v1

    const/16 v1, 0x172

    const-string v2, "du1"

    aput-object v2, v0, v1

    const/16 v1, 0x173

    const-string v2, "du2"

    aput-object v2, v0, v1

    const/16 v1, 0x174

    const-string v2, "du3"

    aput-object v2, v0, v1

    const/16 v1, 0x175

    const-string v2, "du4"

    aput-object v2, v0, v1

    const/16 v1, 0x176

    const-string v2, "du5"

    aput-object v2, v0, v1

    const/16 v1, 0x177

    const-string v2, "duan1"

    aput-object v2, v0, v1

    const/16 v1, 0x178

    const-string v2, "duan2"

    aput-object v2, v0, v1

    const/16 v1, 0x179

    const-string v2, "duan3"

    aput-object v2, v0, v1

    const/16 v1, 0x17a

    const-string v2, "duan4"

    aput-object v2, v0, v1

    const/16 v1, 0x17b

    const-string v2, "duan5"

    aput-object v2, v0, v1

    const/16 v1, 0x17c

    const-string v2, "dui1"

    aput-object v2, v0, v1

    const/16 v1, 0x17d

    const-string v2, "dui2"

    aput-object v2, v0, v1

    const/16 v1, 0x17e

    const-string v2, "dui3"

    aput-object v2, v0, v1

    const/16 v1, 0x17f

    const-string v2, "dui4"

    aput-object v2, v0, v1

    const/16 v1, 0x180

    const-string v2, "dui5"

    aput-object v2, v0, v1

    const/16 v1, 0x181

    const-string v2, "dun1"

    aput-object v2, v0, v1

    const/16 v1, 0x182

    const-string v2, "dun2"

    aput-object v2, v0, v1

    const/16 v1, 0x183

    const-string v2, "dun3"

    aput-object v2, v0, v1

    const/16 v1, 0x184

    const-string v2, "dun4"

    aput-object v2, v0, v1

    const/16 v1, 0x185

    const-string v2, "dun5"

    aput-object v2, v0, v1

    const/16 v1, 0x186

    const-string v2, "duo1"

    aput-object v2, v0, v1

    const/16 v1, 0x187

    const-string v2, "duo2"

    aput-object v2, v0, v1

    const/16 v1, 0x188

    const-string v2, "duo3"

    aput-object v2, v0, v1

    const/16 v1, 0x189

    const-string v2, "duo4"

    aput-object v2, v0, v1

    const/16 v1, 0x18a

    const-string v2, "duo5"

    aput-object v2, v0, v1

    const/16 v1, 0x18b

    const-string v2, "e1"

    aput-object v2, v0, v1

    const/16 v1, 0x18c

    const-string v2, "e2"

    aput-object v2, v0, v1

    const/16 v1, 0x18d

    const-string v2, "e3"

    aput-object v2, v0, v1

    const/16 v1, 0x18e

    const-string v2, "e4"

    aput-object v2, v0, v1

    const/16 v1, 0x18f

    const-string v2, "e5"

    aput-object v2, v0, v1

    const/16 v1, 0x190

    const-string v2, "ei1"

    aput-object v2, v0, v1

    const/16 v1, 0x191

    const-string v2, "ei2"

    aput-object v2, v0, v1

    const/16 v1, 0x192

    const-string v2, "ei3"

    aput-object v2, v0, v1

    const/16 v1, 0x193

    const-string v2, "ei4"

    aput-object v2, v0, v1

    const/16 v1, 0x194

    const-string v2, "ei5"

    aput-object v2, v0, v1

    const/16 v1, 0x195

    const-string v2, "en1"

    aput-object v2, v0, v1

    const/16 v1, 0x196

    const-string v2, "en2"

    aput-object v2, v0, v1

    const/16 v1, 0x197

    const-string v2, "en3"

    aput-object v2, v0, v1

    const/16 v1, 0x198

    const-string v2, "en4"

    aput-object v2, v0, v1

    const/16 v1, 0x199

    const-string v2, "en5"

    aput-object v2, v0, v1

    const/16 v1, 0x19a

    const-string v2, "eng1"

    aput-object v2, v0, v1

    const/16 v1, 0x19b

    const-string v2, "eng2"

    aput-object v2, v0, v1

    const/16 v1, 0x19c

    const-string v2, "eng3"

    aput-object v2, v0, v1

    const/16 v1, 0x19d

    const-string v2, "eng4"

    aput-object v2, v0, v1

    const/16 v1, 0x19e

    const-string v2, "eng5"

    aput-object v2, v0, v1

    const/16 v1, 0x19f

    const-string v2, "er1"

    aput-object v2, v0, v1

    const/16 v1, 0x1a0

    const-string v2, "er2"

    aput-object v2, v0, v1

    const/16 v1, 0x1a1

    const-string v2, "er3"

    aput-object v2, v0, v1

    const/16 v1, 0x1a2

    const-string v2, "er4"

    aput-object v2, v0, v1

    const/16 v1, 0x1a3

    const-string v2, "er5"

    aput-object v2, v0, v1

    const/16 v1, 0x1a4

    const-string v2, "fa1"

    aput-object v2, v0, v1

    const/16 v1, 0x1a5

    const-string v2, "fa2"

    aput-object v2, v0, v1

    const/16 v1, 0x1a6

    const-string v2, "fa3"

    aput-object v2, v0, v1

    const/16 v1, 0x1a7

    const-string v2, "fa4"

    aput-object v2, v0, v1

    const/16 v1, 0x1a8

    const-string v2, "fa5"

    aput-object v2, v0, v1

    const/16 v1, 0x1a9

    const-string v2, "fan1"

    aput-object v2, v0, v1

    const/16 v1, 0x1aa

    const-string v2, "fan2"

    aput-object v2, v0, v1

    const/16 v1, 0x1ab

    const-string v2, "fan3"

    aput-object v2, v0, v1

    const/16 v1, 0x1ac

    const-string v2, "fan4"

    aput-object v2, v0, v1

    const/16 v1, 0x1ad

    const-string v2, "fan5"

    aput-object v2, v0, v1

    const/16 v1, 0x1ae

    const-string v2, "fang1"

    aput-object v2, v0, v1

    const/16 v1, 0x1af

    const-string v2, "fang2"

    aput-object v2, v0, v1

    const/16 v1, 0x1b0

    const-string v2, "fang3"

    aput-object v2, v0, v1

    const/16 v1, 0x1b1

    const-string v2, "fang4"

    aput-object v2, v0, v1

    const/16 v1, 0x1b2

    const-string v2, "fang5"

    aput-object v2, v0, v1

    const/16 v1, 0x1b3

    const-string v2, "fei1"

    aput-object v2, v0, v1

    const/16 v1, 0x1b4

    const-string v2, "fei2"

    aput-object v2, v0, v1

    const/16 v1, 0x1b5

    const-string v2, "fei3"

    aput-object v2, v0, v1

    const/16 v1, 0x1b6

    const-string v2, "fei4"

    aput-object v2, v0, v1

    const/16 v1, 0x1b7

    const-string v2, "fei5"

    aput-object v2, v0, v1

    const/16 v1, 0x1b8

    const-string v2, "fen1"

    aput-object v2, v0, v1

    const/16 v1, 0x1b9

    const-string v2, "fen2"

    aput-object v2, v0, v1

    const/16 v1, 0x1ba

    const-string v2, "fen3"

    aput-object v2, v0, v1

    const/16 v1, 0x1bb

    const-string v2, "fen4"

    aput-object v2, v0, v1

    const/16 v1, 0x1bc

    const-string v2, "fen5"

    aput-object v2, v0, v1

    const/16 v1, 0x1bd

    const-string v2, "feng1"

    aput-object v2, v0, v1

    const/16 v1, 0x1be

    const-string v2, "feng2"

    aput-object v2, v0, v1

    const/16 v1, 0x1bf

    const-string v2, "feng3"

    aput-object v2, v0, v1

    const/16 v1, 0x1c0

    const-string v2, "feng4"

    aput-object v2, v0, v1

    const/16 v1, 0x1c1

    const-string v2, "feng5"

    aput-object v2, v0, v1

    const/16 v1, 0x1c2

    const-string v2, "fo1"

    aput-object v2, v0, v1

    const/16 v1, 0x1c3

    const-string v2, "fo2"

    aput-object v2, v0, v1

    const/16 v1, 0x1c4

    const-string v2, "fo3"

    aput-object v2, v0, v1

    const/16 v1, 0x1c5

    const-string v2, "fo4"

    aput-object v2, v0, v1

    const/16 v1, 0x1c6

    const-string v2, "fo5"

    aput-object v2, v0, v1

    const/16 v1, 0x1c7

    const-string v2, "fou1"

    aput-object v2, v0, v1

    const/16 v1, 0x1c8

    const-string v2, "fou2"

    aput-object v2, v0, v1

    const/16 v1, 0x1c9

    const-string v2, "fou3"

    aput-object v2, v0, v1

    const/16 v1, 0x1ca

    const-string v2, "fou4"

    aput-object v2, v0, v1

    const/16 v1, 0x1cb

    const-string v2, "fou5"

    aput-object v2, v0, v1

    const/16 v1, 0x1cc

    const-string v2, "fu1"

    aput-object v2, v0, v1

    const/16 v1, 0x1cd

    const-string v2, "fu2"

    aput-object v2, v0, v1

    const/16 v1, 0x1ce

    const-string v2, "fu3"

    aput-object v2, v0, v1

    const/16 v1, 0x1cf

    const-string v2, "fu4"

    aput-object v2, v0, v1

    const/16 v1, 0x1d0

    const-string v2, "fu5"

    aput-object v2, v0, v1

    const/16 v1, 0x1d1

    const-string v2, "ga1"

    aput-object v2, v0, v1

    const/16 v1, 0x1d2

    const-string v2, "ga2"

    aput-object v2, v0, v1

    const/16 v1, 0x1d3

    const-string v2, "ga3"

    aput-object v2, v0, v1

    const/16 v1, 0x1d4

    const-string v2, "ga4"

    aput-object v2, v0, v1

    const/16 v1, 0x1d5

    const-string v2, "ga5"

    aput-object v2, v0, v1

    const/16 v1, 0x1d6

    const-string v2, "gai1"

    aput-object v2, v0, v1

    const/16 v1, 0x1d7

    const-string v2, "gai2"

    aput-object v2, v0, v1

    const/16 v1, 0x1d8

    const-string v2, "gai3"

    aput-object v2, v0, v1

    const/16 v1, 0x1d9

    const-string v2, "gai4"

    aput-object v2, v0, v1

    const/16 v1, 0x1da

    const-string v2, "gai5"

    aput-object v2, v0, v1

    const/16 v1, 0x1db

    const-string v2, "gan1"

    aput-object v2, v0, v1

    const/16 v1, 0x1dc

    const-string v2, "gan2"

    aput-object v2, v0, v1

    const/16 v1, 0x1dd

    const-string v2, "gan3"

    aput-object v2, v0, v1

    const/16 v1, 0x1de

    const-string v2, "gan4"

    aput-object v2, v0, v1

    const/16 v1, 0x1df

    const-string v2, "gan5"

    aput-object v2, v0, v1

    const/16 v1, 0x1e0

    const-string v2, "gang1"

    aput-object v2, v0, v1

    const/16 v1, 0x1e1

    const-string v2, "gang2"

    aput-object v2, v0, v1

    const/16 v1, 0x1e2

    const-string v2, "gang3"

    aput-object v2, v0, v1

    const/16 v1, 0x1e3

    const-string v2, "gang4"

    aput-object v2, v0, v1

    const/16 v1, 0x1e4

    const-string v2, "gang5"

    aput-object v2, v0, v1

    const/16 v1, 0x1e5

    const-string v2, "gao1"

    aput-object v2, v0, v1

    const/16 v1, 0x1e6

    const-string v2, "gao2"

    aput-object v2, v0, v1

    const/16 v1, 0x1e7

    const-string v2, "gao3"

    aput-object v2, v0, v1

    const/16 v1, 0x1e8

    const-string v2, "gao4"

    aput-object v2, v0, v1

    const/16 v1, 0x1e9

    const-string v2, "gao5"

    aput-object v2, v0, v1

    const/16 v1, 0x1ea

    const-string v2, "ge1"

    aput-object v2, v0, v1

    const/16 v1, 0x1eb

    const-string v2, "ge2"

    aput-object v2, v0, v1

    const/16 v1, 0x1ec

    const-string v2, "ge3"

    aput-object v2, v0, v1

    const/16 v1, 0x1ed

    const-string v2, "ge4"

    aput-object v2, v0, v1

    const/16 v1, 0x1ee

    const-string v2, "ge5"

    aput-object v2, v0, v1

    const/16 v1, 0x1ef

    const-string v2, "gei1"

    aput-object v2, v0, v1

    const/16 v1, 0x1f0

    const-string v2, "gei2"

    aput-object v2, v0, v1

    const/16 v1, 0x1f1

    const-string v2, "gei3"

    aput-object v2, v0, v1

    const/16 v1, 0x1f2

    const-string v2, "gei4"

    aput-object v2, v0, v1

    const/16 v1, 0x1f3

    const-string v2, "gei5"

    aput-object v2, v0, v1

    const/16 v1, 0x1f4

    const-string v2, "gen1"

    aput-object v2, v0, v1

    const/16 v1, 0x1f5

    const-string v2, "gen2"

    aput-object v2, v0, v1

    const/16 v1, 0x1f6

    const-string v2, "gen3"

    aput-object v2, v0, v1

    const/16 v1, 0x1f7

    const-string v2, "gen4"

    aput-object v2, v0, v1

    const/16 v1, 0x1f8

    const-string v2, "gen5"

    aput-object v2, v0, v1

    const/16 v1, 0x1f9

    const-string v2, "geng1"

    aput-object v2, v0, v1

    const/16 v1, 0x1fa

    const-string v2, "geng2"

    aput-object v2, v0, v1

    const/16 v1, 0x1fb

    const-string v2, "geng3"

    aput-object v2, v0, v1

    const/16 v1, 0x1fc

    const-string v2, "geng4"

    aput-object v2, v0, v1

    const/16 v1, 0x1fd

    const-string v2, "geng5"

    aput-object v2, v0, v1

    const/16 v1, 0x1fe

    const-string v2, "gong1"

    aput-object v2, v0, v1

    const/16 v1, 0x1ff

    const-string v2, "gong2"

    aput-object v2, v0, v1

    const/16 v1, 0x200

    const-string v2, "gong3"

    aput-object v2, v0, v1

    const/16 v1, 0x201

    const-string v2, "gong4"

    aput-object v2, v0, v1

    const/16 v1, 0x202

    const-string v2, "gong5"

    aput-object v2, v0, v1

    const/16 v1, 0x203

    const-string v2, "gou1"

    aput-object v2, v0, v1

    const/16 v1, 0x204

    const-string v2, "gou2"

    aput-object v2, v0, v1

    const/16 v1, 0x205

    const-string v2, "gou3"

    aput-object v2, v0, v1

    const/16 v1, 0x206

    const-string v2, "gou4"

    aput-object v2, v0, v1

    const/16 v1, 0x207

    const-string v2, "gou5"

    aput-object v2, v0, v1

    const/16 v1, 0x208

    const-string v2, "gu1"

    aput-object v2, v0, v1

    const/16 v1, 0x209

    const-string v2, "gu2"

    aput-object v2, v0, v1

    const/16 v1, 0x20a

    const-string v2, "gu3"

    aput-object v2, v0, v1

    const/16 v1, 0x20b

    const-string v2, "gu4"

    aput-object v2, v0, v1

    const/16 v1, 0x20c

    const-string v2, "gu5"

    aput-object v2, v0, v1

    const/16 v1, 0x20d

    const-string v2, "gua1"

    aput-object v2, v0, v1

    const/16 v1, 0x20e

    const-string v2, "gua2"

    aput-object v2, v0, v1

    const/16 v1, 0x20f

    const-string v2, "gua3"

    aput-object v2, v0, v1

    const/16 v1, 0x210

    const-string v2, "gua4"

    aput-object v2, v0, v1

    const/16 v1, 0x211

    const-string v2, "gua5"

    aput-object v2, v0, v1

    const/16 v1, 0x212

    const-string v2, "guai1"

    aput-object v2, v0, v1

    const/16 v1, 0x213

    const-string v2, "guai2"

    aput-object v2, v0, v1

    const/16 v1, 0x214

    const-string v2, "guai3"

    aput-object v2, v0, v1

    const/16 v1, 0x215

    const-string v2, "guai4"

    aput-object v2, v0, v1

    const/16 v1, 0x216

    const-string v2, "guai5"

    aput-object v2, v0, v1

    const/16 v1, 0x217

    const-string v2, "guan1"

    aput-object v2, v0, v1

    const/16 v1, 0x218

    const-string v2, "guan2"

    aput-object v2, v0, v1

    const/16 v1, 0x219

    const-string v2, "guan3"

    aput-object v2, v0, v1

    const/16 v1, 0x21a

    const-string v2, "guan4"

    aput-object v2, v0, v1

    const/16 v1, 0x21b

    const-string v2, "guan5"

    aput-object v2, v0, v1

    const/16 v1, 0x21c

    const-string v2, "guang1"

    aput-object v2, v0, v1

    const/16 v1, 0x21d

    const-string v2, "guang2"

    aput-object v2, v0, v1

    const/16 v1, 0x21e

    const-string v2, "guang3"

    aput-object v2, v0, v1

    const/16 v1, 0x21f

    const-string v2, "guang4"

    aput-object v2, v0, v1

    const/16 v1, 0x220

    const-string v2, "guang5"

    aput-object v2, v0, v1

    const/16 v1, 0x221

    const-string v2, "gui1"

    aput-object v2, v0, v1

    const/16 v1, 0x222

    const-string v2, "gui2"

    aput-object v2, v0, v1

    const/16 v1, 0x223

    const-string v2, "gui3"

    aput-object v2, v0, v1

    const/16 v1, 0x224

    const-string v2, "gui4"

    aput-object v2, v0, v1

    const/16 v1, 0x225

    const-string v2, "gui5"

    aput-object v2, v0, v1

    const/16 v1, 0x226

    const-string v2, "gun1"

    aput-object v2, v0, v1

    const/16 v1, 0x227

    const-string v2, "gun2"

    aput-object v2, v0, v1

    const/16 v1, 0x228

    const-string v2, "gun3"

    aput-object v2, v0, v1

    const/16 v1, 0x229

    const-string v2, "gun4"

    aput-object v2, v0, v1

    const/16 v1, 0x22a

    const-string v2, "gun5"

    aput-object v2, v0, v1

    const/16 v1, 0x22b

    const-string v2, "guo1"

    aput-object v2, v0, v1

    const/16 v1, 0x22c

    const-string v2, "guo2"

    aput-object v2, v0, v1

    const/16 v1, 0x22d

    const-string v2, "guo3"

    aput-object v2, v0, v1

    const/16 v1, 0x22e

    const-string v2, "guo4"

    aput-object v2, v0, v1

    const/16 v1, 0x22f

    const-string v2, "guo5"

    aput-object v2, v0, v1

    const/16 v1, 0x230

    const-string v2, "ha1"

    aput-object v2, v0, v1

    const/16 v1, 0x231

    const-string v2, "ha2"

    aput-object v2, v0, v1

    const/16 v1, 0x232

    const-string v2, "ha3"

    aput-object v2, v0, v1

    const/16 v1, 0x233

    const-string v2, "ha4"

    aput-object v2, v0, v1

    const/16 v1, 0x234

    const-string v2, "ha5"

    aput-object v2, v0, v1

    const/16 v1, 0x235

    const-string v2, "hai1"

    aput-object v2, v0, v1

    const/16 v1, 0x236

    const-string v2, "hai2"

    aput-object v2, v0, v1

    const/16 v1, 0x237

    const-string v2, "hai3"

    aput-object v2, v0, v1

    const/16 v1, 0x238

    const-string v2, "hai4"

    aput-object v2, v0, v1

    const/16 v1, 0x239

    const-string v2, "hai5"

    aput-object v2, v0, v1

    const/16 v1, 0x23a

    const-string v2, "han1"

    aput-object v2, v0, v1

    const/16 v1, 0x23b

    const-string v2, "han2"

    aput-object v2, v0, v1

    const/16 v1, 0x23c

    const-string v2, "han3"

    aput-object v2, v0, v1

    const/16 v1, 0x23d

    const-string v2, "han4"

    aput-object v2, v0, v1

    const/16 v1, 0x23e

    const-string v2, "han5"

    aput-object v2, v0, v1

    const/16 v1, 0x23f

    const-string v2, "hang1"

    aput-object v2, v0, v1

    const/16 v1, 0x240

    const-string v2, "hang2"

    aput-object v2, v0, v1

    const/16 v1, 0x241

    const-string v2, "hang3"

    aput-object v2, v0, v1

    const/16 v1, 0x242

    const-string v2, "hang4"

    aput-object v2, v0, v1

    const/16 v1, 0x243

    const-string v2, "hang5"

    aput-object v2, v0, v1

    const/16 v1, 0x244

    const-string v2, "hao1"

    aput-object v2, v0, v1

    const/16 v1, 0x245

    const-string v2, "hao2"

    aput-object v2, v0, v1

    const/16 v1, 0x246

    const-string v2, "hao3"

    aput-object v2, v0, v1

    const/16 v1, 0x247

    const-string v2, "hao4"

    aput-object v2, v0, v1

    const/16 v1, 0x248

    const-string v2, "hao5"

    aput-object v2, v0, v1

    const/16 v1, 0x249

    const-string v2, "he1"

    aput-object v2, v0, v1

    const/16 v1, 0x24a

    const-string v2, "he2"

    aput-object v2, v0, v1

    const/16 v1, 0x24b

    const-string v2, "he3"

    aput-object v2, v0, v1

    const/16 v1, 0x24c

    const-string v2, "he4"

    aput-object v2, v0, v1

    const/16 v1, 0x24d

    const-string v2, "he5"

    aput-object v2, v0, v1

    const/16 v1, 0x24e

    const-string v2, "hei1"

    aput-object v2, v0, v1

    const/16 v1, 0x24f

    const-string v2, "hei2"

    aput-object v2, v0, v1

    const/16 v1, 0x250

    const-string v2, "hei3"

    aput-object v2, v0, v1

    const/16 v1, 0x251

    const-string v2, "hei4"

    aput-object v2, v0, v1

    const/16 v1, 0x252

    const-string v2, "hei5"

    aput-object v2, v0, v1

    const/16 v1, 0x253

    const-string v2, "hen1"

    aput-object v2, v0, v1

    const/16 v1, 0x254

    const-string v2, "hen2"

    aput-object v2, v0, v1

    const/16 v1, 0x255

    const-string v2, "hen3"

    aput-object v2, v0, v1

    const/16 v1, 0x256

    const-string v2, "hen4"

    aput-object v2, v0, v1

    const/16 v1, 0x257

    const-string v2, "hen5"

    aput-object v2, v0, v1

    const/16 v1, 0x258

    const-string v2, "heng1"

    aput-object v2, v0, v1

    const/16 v1, 0x259

    const-string v2, "heng2"

    aput-object v2, v0, v1

    const/16 v1, 0x25a

    const-string v2, "heng3"

    aput-object v2, v0, v1

    const/16 v1, 0x25b

    const-string v2, "heng4"

    aput-object v2, v0, v1

    const/16 v1, 0x25c

    const-string v2, "heng5"

    aput-object v2, v0, v1

    const/16 v1, 0x25d

    const-string v2, "hong1"

    aput-object v2, v0, v1

    const/16 v1, 0x25e

    const-string v2, "hong2"

    aput-object v2, v0, v1

    const/16 v1, 0x25f

    const-string v2, "hong3"

    aput-object v2, v0, v1

    const/16 v1, 0x260

    const-string v2, "hong4"

    aput-object v2, v0, v1

    const/16 v1, 0x261

    const-string v2, "hong5"

    aput-object v2, v0, v1

    const/16 v1, 0x262

    const-string v2, "hou1"

    aput-object v2, v0, v1

    const/16 v1, 0x263

    const-string v2, "hou2"

    aput-object v2, v0, v1

    const/16 v1, 0x264

    const-string v2, "hou3"

    aput-object v2, v0, v1

    const/16 v1, 0x265

    const-string v2, "hou4"

    aput-object v2, v0, v1

    const/16 v1, 0x266

    const-string v2, "hou5"

    aput-object v2, v0, v1

    const/16 v1, 0x267

    const-string v2, "hu1"

    aput-object v2, v0, v1

    const/16 v1, 0x268

    const-string v2, "hu2"

    aput-object v2, v0, v1

    const/16 v1, 0x269

    const-string v2, "hu3"

    aput-object v2, v0, v1

    const/16 v1, 0x26a

    const-string v2, "hu4"

    aput-object v2, v0, v1

    const/16 v1, 0x26b

    const-string v2, "hu5"

    aput-object v2, v0, v1

    const/16 v1, 0x26c

    const-string v2, "hua1"

    aput-object v2, v0, v1

    const/16 v1, 0x26d

    const-string v2, "hua2"

    aput-object v2, v0, v1

    const/16 v1, 0x26e

    const-string v2, "hua3"

    aput-object v2, v0, v1

    const/16 v1, 0x26f

    const-string v2, "hua4"

    aput-object v2, v0, v1

    const/16 v1, 0x270

    const-string v2, "hua5"

    aput-object v2, v0, v1

    const/16 v1, 0x271

    const-string v2, "huai1"

    aput-object v2, v0, v1

    const/16 v1, 0x272

    const-string v2, "huai2"

    aput-object v2, v0, v1

    const/16 v1, 0x273

    const-string v2, "huai3"

    aput-object v2, v0, v1

    const/16 v1, 0x274

    const-string v2, "huai4"

    aput-object v2, v0, v1

    const/16 v1, 0x275

    const-string v2, "huai5"

    aput-object v2, v0, v1

    const/16 v1, 0x276

    const-string v2, "huan1"

    aput-object v2, v0, v1

    const/16 v1, 0x277

    const-string v2, "huan2"

    aput-object v2, v0, v1

    const/16 v1, 0x278

    const-string v2, "huan3"

    aput-object v2, v0, v1

    const/16 v1, 0x279

    const-string v2, "huan4"

    aput-object v2, v0, v1

    const/16 v1, 0x27a

    const-string v2, "huan5"

    aput-object v2, v0, v1

    const/16 v1, 0x27b

    const-string v2, "huang1"

    aput-object v2, v0, v1

    const/16 v1, 0x27c

    const-string v2, "huang2"

    aput-object v2, v0, v1

    const/16 v1, 0x27d

    const-string v2, "huang3"

    aput-object v2, v0, v1

    const/16 v1, 0x27e

    const-string v2, "huang4"

    aput-object v2, v0, v1

    const/16 v1, 0x27f

    const-string v2, "huang5"

    aput-object v2, v0, v1

    const/16 v1, 0x280

    const-string v2, "hui1"

    aput-object v2, v0, v1

    const/16 v1, 0x281

    const-string v2, "hui2"

    aput-object v2, v0, v1

    const/16 v1, 0x282

    const-string v2, "hui3"

    aput-object v2, v0, v1

    const/16 v1, 0x283

    const-string v2, "hui4"

    aput-object v2, v0, v1

    const/16 v1, 0x284

    const-string v2, "hui5"

    aput-object v2, v0, v1

    const/16 v1, 0x285

    const-string v2, "hun1"

    aput-object v2, v0, v1

    const/16 v1, 0x286

    const-string v2, "hun2"

    aput-object v2, v0, v1

    const/16 v1, 0x287

    const-string v2, "hun3"

    aput-object v2, v0, v1

    const/16 v1, 0x288

    const-string v2, "hun4"

    aput-object v2, v0, v1

    const/16 v1, 0x289

    const-string v2, "hun5"

    aput-object v2, v0, v1

    const/16 v1, 0x28a

    const-string v2, "huo1"

    aput-object v2, v0, v1

    const/16 v1, 0x28b

    const-string v2, "huo2"

    aput-object v2, v0, v1

    const/16 v1, 0x28c

    const-string v2, "huo3"

    aput-object v2, v0, v1

    const/16 v1, 0x28d

    const-string v2, "huo4"

    aput-object v2, v0, v1

    const/16 v1, 0x28e

    const-string v2, "huo5"

    aput-object v2, v0, v1

    const/16 v1, 0x28f

    const-string v2, "ji1"

    aput-object v2, v0, v1

    const/16 v1, 0x290

    const-string v2, "ji2"

    aput-object v2, v0, v1

    const/16 v1, 0x291

    const-string v2, "ji3"

    aput-object v2, v0, v1

    const/16 v1, 0x292

    const-string v2, "ji4"

    aput-object v2, v0, v1

    const/16 v1, 0x293

    const-string v2, "ji5"

    aput-object v2, v0, v1

    const/16 v1, 0x294

    const-string v2, "jia1"

    aput-object v2, v0, v1

    const/16 v1, 0x295

    const-string v2, "jia2"

    aput-object v2, v0, v1

    const/16 v1, 0x296

    const-string v2, "jia3"

    aput-object v2, v0, v1

    const/16 v1, 0x297

    const-string v2, "jia4"

    aput-object v2, v0, v1

    const/16 v1, 0x298

    const-string v2, "jia5"

    aput-object v2, v0, v1

    const/16 v1, 0x299

    const-string v2, "jian1"

    aput-object v2, v0, v1

    const/16 v1, 0x29a

    const-string v2, "jian2"

    aput-object v2, v0, v1

    const/16 v1, 0x29b

    const-string v2, "jian3"

    aput-object v2, v0, v1

    const/16 v1, 0x29c

    const-string v2, "jian4"

    aput-object v2, v0, v1

    const/16 v1, 0x29d

    const-string v2, "jian5"

    aput-object v2, v0, v1

    const/16 v1, 0x29e

    const-string v2, "jiang1"

    aput-object v2, v0, v1

    const/16 v1, 0x29f

    const-string v2, "jiang2"

    aput-object v2, v0, v1

    const/16 v1, 0x2a0

    const-string v2, "jiang3"

    aput-object v2, v0, v1

    const/16 v1, 0x2a1

    const-string v2, "jiang4"

    aput-object v2, v0, v1

    const/16 v1, 0x2a2

    const-string v2, "jiang5"

    aput-object v2, v0, v1

    const/16 v1, 0x2a3

    const-string v2, "jiao1"

    aput-object v2, v0, v1

    const/16 v1, 0x2a4

    const-string v2, "jiao2"

    aput-object v2, v0, v1

    const/16 v1, 0x2a5

    const-string v2, "jiao3"

    aput-object v2, v0, v1

    const/16 v1, 0x2a6

    const-string v2, "jiao4"

    aput-object v2, v0, v1

    const/16 v1, 0x2a7

    const-string v2, "jiao5"

    aput-object v2, v0, v1

    const/16 v1, 0x2a8

    const-string v2, "jie1"

    aput-object v2, v0, v1

    const/16 v1, 0x2a9

    const-string v2, "jie2"

    aput-object v2, v0, v1

    const/16 v1, 0x2aa

    const-string v2, "jie3"

    aput-object v2, v0, v1

    const/16 v1, 0x2ab

    const-string v2, "jie4"

    aput-object v2, v0, v1

    const/16 v1, 0x2ac

    const-string v2, "jie5"

    aput-object v2, v0, v1

    const/16 v1, 0x2ad

    const-string v2, "jin1"

    aput-object v2, v0, v1

    const/16 v1, 0x2ae

    const-string v2, "jin2"

    aput-object v2, v0, v1

    const/16 v1, 0x2af

    const-string v2, "jin3"

    aput-object v2, v0, v1

    const/16 v1, 0x2b0

    const-string v2, "jin4"

    aput-object v2, v0, v1

    const/16 v1, 0x2b1

    const-string v2, "jin5"

    aput-object v2, v0, v1

    const/16 v1, 0x2b2

    const-string v2, "jing1"

    aput-object v2, v0, v1

    const/16 v1, 0x2b3

    const-string v2, "jing2"

    aput-object v2, v0, v1

    const/16 v1, 0x2b4

    const-string v2, "jing3"

    aput-object v2, v0, v1

    const/16 v1, 0x2b5

    const-string v2, "jing4"

    aput-object v2, v0, v1

    const/16 v1, 0x2b6

    const-string v2, "jing5"

    aput-object v2, v0, v1

    const/16 v1, 0x2b7

    const-string v2, "jiong1"

    aput-object v2, v0, v1

    const/16 v1, 0x2b8

    const-string v2, "jiong2"

    aput-object v2, v0, v1

    const/16 v1, 0x2b9

    const-string v2, "jiong3"

    aput-object v2, v0, v1

    const/16 v1, 0x2ba

    const-string v2, "jiong4"

    aput-object v2, v0, v1

    const/16 v1, 0x2bb

    const-string v2, "jiong5"

    aput-object v2, v0, v1

    const/16 v1, 0x2bc

    const-string v2, "jiu1"

    aput-object v2, v0, v1

    const/16 v1, 0x2bd

    const-string v2, "jiu2"

    aput-object v2, v0, v1

    const/16 v1, 0x2be

    const-string v2, "jiu3"

    aput-object v2, v0, v1

    const/16 v1, 0x2bf

    const-string v2, "jiu4"

    aput-object v2, v0, v1

    const/16 v1, 0x2c0

    const-string v2, "jiu5"

    aput-object v2, v0, v1

    const/16 v1, 0x2c1

    const-string v2, "ju1"

    aput-object v2, v0, v1

    const/16 v1, 0x2c2

    const-string v2, "ju2"

    aput-object v2, v0, v1

    const/16 v1, 0x2c3

    const-string v2, "ju3"

    aput-object v2, v0, v1

    const/16 v1, 0x2c4

    const-string v2, "ju4"

    aput-object v2, v0, v1

    const/16 v1, 0x2c5

    const-string v2, "ju5"

    aput-object v2, v0, v1

    const/16 v1, 0x2c6

    const-string v2, "juan1"

    aput-object v2, v0, v1

    const/16 v1, 0x2c7

    const-string v2, "juan2"

    aput-object v2, v0, v1

    const/16 v1, 0x2c8

    const-string v2, "juan3"

    aput-object v2, v0, v1

    const/16 v1, 0x2c9

    const-string v2, "juan4"

    aput-object v2, v0, v1

    const/16 v1, 0x2ca

    const-string v2, "juan5"

    aput-object v2, v0, v1

    const/16 v1, 0x2cb

    const-string v2, "jue1"

    aput-object v2, v0, v1

    const/16 v1, 0x2cc

    const-string v2, "jue2"

    aput-object v2, v0, v1

    const/16 v1, 0x2cd

    const-string v2, "jue3"

    aput-object v2, v0, v1

    const/16 v1, 0x2ce

    const-string v2, "jue4"

    aput-object v2, v0, v1

    const/16 v1, 0x2cf

    const-string v2, "jue5"

    aput-object v2, v0, v1

    const/16 v1, 0x2d0

    const-string v2, "jun1"

    aput-object v2, v0, v1

    const/16 v1, 0x2d1

    const-string v2, "jun2"

    aput-object v2, v0, v1

    const/16 v1, 0x2d2

    const-string v2, "jun3"

    aput-object v2, v0, v1

    const/16 v1, 0x2d3

    const-string v2, "jun4"

    aput-object v2, v0, v1

    const/16 v1, 0x2d4

    const-string v2, "jun5"

    aput-object v2, v0, v1

    const/16 v1, 0x2d5

    const-string v2, "ka1"

    aput-object v2, v0, v1

    const/16 v1, 0x2d6

    const-string v2, "ka2"

    aput-object v2, v0, v1

    const/16 v1, 0x2d7

    const-string v2, "ka3"

    aput-object v2, v0, v1

    const/16 v1, 0x2d8

    const-string v2, "ka4"

    aput-object v2, v0, v1

    const/16 v1, 0x2d9

    const-string v2, "ka5"

    aput-object v2, v0, v1

    const/16 v1, 0x2da

    const-string v2, "kai1"

    aput-object v2, v0, v1

    const/16 v1, 0x2db

    const-string v2, "kai2"

    aput-object v2, v0, v1

    const/16 v1, 0x2dc

    const-string v2, "kai3"

    aput-object v2, v0, v1

    const/16 v1, 0x2dd

    const-string v2, "kai4"

    aput-object v2, v0, v1

    const/16 v1, 0x2de

    const-string v2, "kai5"

    aput-object v2, v0, v1

    const/16 v1, 0x2df

    const-string v2, "kan1"

    aput-object v2, v0, v1

    const/16 v1, 0x2e0

    const-string v2, "kan2"

    aput-object v2, v0, v1

    const/16 v1, 0x2e1

    const-string v2, "kan3"

    aput-object v2, v0, v1

    const/16 v1, 0x2e2

    const-string v2, "kan4"

    aput-object v2, v0, v1

    const/16 v1, 0x2e3

    const-string v2, "kan5"

    aput-object v2, v0, v1

    const/16 v1, 0x2e4

    const-string v2, "kang1"

    aput-object v2, v0, v1

    const/16 v1, 0x2e5

    const-string v2, "kang2"

    aput-object v2, v0, v1

    const/16 v1, 0x2e6

    const-string v2, "kang3"

    aput-object v2, v0, v1

    const/16 v1, 0x2e7

    const-string v2, "kang4"

    aput-object v2, v0, v1

    const/16 v1, 0x2e8

    const-string v2, "kang5"

    aput-object v2, v0, v1

    const/16 v1, 0x2e9

    const-string v2, "kao1"

    aput-object v2, v0, v1

    const/16 v1, 0x2ea

    const-string v2, "kao2"

    aput-object v2, v0, v1

    const/16 v1, 0x2eb

    const-string v2, "kao3"

    aput-object v2, v0, v1

    const/16 v1, 0x2ec

    const-string v2, "kao4"

    aput-object v2, v0, v1

    const/16 v1, 0x2ed

    const-string v2, "kao5"

    aput-object v2, v0, v1

    const/16 v1, 0x2ee

    const-string v2, "ke1"

    aput-object v2, v0, v1

    const/16 v1, 0x2ef

    const-string v2, "ke2"

    aput-object v2, v0, v1

    const/16 v1, 0x2f0

    const-string v2, "ke3"

    aput-object v2, v0, v1

    const/16 v1, 0x2f1

    const-string v2, "ke4"

    aput-object v2, v0, v1

    const/16 v1, 0x2f2

    const-string v2, "ke5"

    aput-object v2, v0, v1

    const/16 v1, 0x2f3

    const-string v2, "ken1"

    aput-object v2, v0, v1

    const/16 v1, 0x2f4

    const-string v2, "ken2"

    aput-object v2, v0, v1

    const/16 v1, 0x2f5

    const-string v2, "ken3"

    aput-object v2, v0, v1

    const/16 v1, 0x2f6

    const-string v2, "ken4"

    aput-object v2, v0, v1

    const/16 v1, 0x2f7

    const-string v2, "ken5"

    aput-object v2, v0, v1

    const/16 v1, 0x2f8

    const-string v2, "keng1"

    aput-object v2, v0, v1

    const/16 v1, 0x2f9

    const-string v2, "keng2"

    aput-object v2, v0, v1

    const/16 v1, 0x2fa

    const-string v2, "keng3"

    aput-object v2, v0, v1

    const/16 v1, 0x2fb

    const-string v2, "keng4"

    aput-object v2, v0, v1

    const/16 v1, 0x2fc

    const-string v2, "keng5"

    aput-object v2, v0, v1

    const/16 v1, 0x2fd

    const-string v2, "kong1"

    aput-object v2, v0, v1

    const/16 v1, 0x2fe

    const-string v2, "kong2"

    aput-object v2, v0, v1

    const/16 v1, 0x2ff

    const-string v2, "kong3"

    aput-object v2, v0, v1

    const/16 v1, 0x300

    const-string v2, "kong4"

    aput-object v2, v0, v1

    const/16 v1, 0x301

    const-string v2, "kong5"

    aput-object v2, v0, v1

    const/16 v1, 0x302

    const-string v2, "kou1"

    aput-object v2, v0, v1

    const/16 v1, 0x303

    const-string v2, "kou2"

    aput-object v2, v0, v1

    const/16 v1, 0x304

    const-string v2, "kou3"

    aput-object v2, v0, v1

    const/16 v1, 0x305

    const-string v2, "kou4"

    aput-object v2, v0, v1

    const/16 v1, 0x306

    const-string v2, "kou5"

    aput-object v2, v0, v1

    const/16 v1, 0x307

    const-string v2, "ku1"

    aput-object v2, v0, v1

    const/16 v1, 0x308

    const-string v2, "ku2"

    aput-object v2, v0, v1

    const/16 v1, 0x309

    const-string v2, "ku3"

    aput-object v2, v0, v1

    const/16 v1, 0x30a

    const-string v2, "ku4"

    aput-object v2, v0, v1

    const/16 v1, 0x30b

    const-string v2, "ku5"

    aput-object v2, v0, v1

    const/16 v1, 0x30c

    const-string v2, "kua1"

    aput-object v2, v0, v1

    const/16 v1, 0x30d

    const-string v2, "kua2"

    aput-object v2, v0, v1

    const/16 v1, 0x30e

    const-string v2, "kua3"

    aput-object v2, v0, v1

    const/16 v1, 0x30f

    const-string v2, "kua4"

    aput-object v2, v0, v1

    const/16 v1, 0x310

    const-string v2, "kua5"

    aput-object v2, v0, v1

    const/16 v1, 0x311

    const-string v2, "kuai1"

    aput-object v2, v0, v1

    const/16 v1, 0x312

    const-string v2, "kuai2"

    aput-object v2, v0, v1

    const/16 v1, 0x313

    const-string v2, "kuai3"

    aput-object v2, v0, v1

    const/16 v1, 0x314

    const-string v2, "kuai4"

    aput-object v2, v0, v1

    const/16 v1, 0x315

    const-string v2, "kuai5"

    aput-object v2, v0, v1

    const/16 v1, 0x316

    const-string v2, "kuan1"

    aput-object v2, v0, v1

    const/16 v1, 0x317

    const-string v2, "kuan2"

    aput-object v2, v0, v1

    const/16 v1, 0x318

    const-string v2, "kuan3"

    aput-object v2, v0, v1

    const/16 v1, 0x319

    const-string v2, "kuan4"

    aput-object v2, v0, v1

    const/16 v1, 0x31a

    const-string v2, "kuan5"

    aput-object v2, v0, v1

    const/16 v1, 0x31b

    const-string v2, "kuang1"

    aput-object v2, v0, v1

    const/16 v1, 0x31c

    const-string v2, "kuang2"

    aput-object v2, v0, v1

    const/16 v1, 0x31d

    const-string v2, "kuang3"

    aput-object v2, v0, v1

    const/16 v1, 0x31e

    const-string v2, "kuang4"

    aput-object v2, v0, v1

    const/16 v1, 0x31f

    const-string v2, "kuang5"

    aput-object v2, v0, v1

    const/16 v1, 0x320

    const-string v2, "kui1"

    aput-object v2, v0, v1

    const/16 v1, 0x321

    const-string v2, "kui2"

    aput-object v2, v0, v1

    const/16 v1, 0x322

    const-string v2, "kui3"

    aput-object v2, v0, v1

    const/16 v1, 0x323

    const-string v2, "kui4"

    aput-object v2, v0, v1

    const/16 v1, 0x324

    const-string v2, "kui5"

    aput-object v2, v0, v1

    const/16 v1, 0x325

    const-string v2, "kun1"

    aput-object v2, v0, v1

    const/16 v1, 0x326

    const-string v2, "kun2"

    aput-object v2, v0, v1

    const/16 v1, 0x327

    const-string v2, "kun3"

    aput-object v2, v0, v1

    const/16 v1, 0x328

    const-string v2, "kun4"

    aput-object v2, v0, v1

    const/16 v1, 0x329

    const-string v2, "kun5"

    aput-object v2, v0, v1

    const/16 v1, 0x32a

    const-string v2, "kuo1"

    aput-object v2, v0, v1

    const/16 v1, 0x32b

    const-string v2, "kuo2"

    aput-object v2, v0, v1

    const/16 v1, 0x32c

    const-string v2, "kuo3"

    aput-object v2, v0, v1

    const/16 v1, 0x32d

    const-string v2, "kuo4"

    aput-object v2, v0, v1

    const/16 v1, 0x32e

    const-string v2, "kuo5"

    aput-object v2, v0, v1

    const/16 v1, 0x32f

    const-string v2, "la1"

    aput-object v2, v0, v1

    const/16 v1, 0x330

    const-string v2, "la2"

    aput-object v2, v0, v1

    const/16 v1, 0x331

    const-string v2, "la3"

    aput-object v2, v0, v1

    const/16 v1, 0x332

    const-string v2, "la4"

    aput-object v2, v0, v1

    const/16 v1, 0x333

    const-string v2, "la5"

    aput-object v2, v0, v1

    const/16 v1, 0x334

    const-string v2, "lai1"

    aput-object v2, v0, v1

    const/16 v1, 0x335

    const-string v2, "lai2"

    aput-object v2, v0, v1

    const/16 v1, 0x336

    const-string v2, "lai3"

    aput-object v2, v0, v1

    const/16 v1, 0x337

    const-string v2, "lai4"

    aput-object v2, v0, v1

    const/16 v1, 0x338

    const-string v2, "lai5"

    aput-object v2, v0, v1

    const/16 v1, 0x339

    const-string v2, "lan1"

    aput-object v2, v0, v1

    const/16 v1, 0x33a

    const-string v2, "lan2"

    aput-object v2, v0, v1

    const/16 v1, 0x33b

    const-string v2, "lan3"

    aput-object v2, v0, v1

    const/16 v1, 0x33c

    const-string v2, "lan4"

    aput-object v2, v0, v1

    const/16 v1, 0x33d

    const-string v2, "lan5"

    aput-object v2, v0, v1

    const/16 v1, 0x33e

    const-string v2, "lang1"

    aput-object v2, v0, v1

    const/16 v1, 0x33f

    const-string v2, "lang2"

    aput-object v2, v0, v1

    const/16 v1, 0x340

    const-string v2, "lang3"

    aput-object v2, v0, v1

    const/16 v1, 0x341

    const-string v2, "lang4"

    aput-object v2, v0, v1

    const/16 v1, 0x342

    const-string v2, "lang5"

    aput-object v2, v0, v1

    const/16 v1, 0x343

    const-string v2, "lao1"

    aput-object v2, v0, v1

    const/16 v1, 0x344

    const-string v2, "lao2"

    aput-object v2, v0, v1

    const/16 v1, 0x345

    const-string v2, "lao3"

    aput-object v2, v0, v1

    const/16 v1, 0x346

    const-string v2, "lao4"

    aput-object v2, v0, v1

    const/16 v1, 0x347

    const-string v2, "lao5"

    aput-object v2, v0, v1

    const/16 v1, 0x348

    const-string v2, "le1"

    aput-object v2, v0, v1

    const/16 v1, 0x349

    const-string v2, "le2"

    aput-object v2, v0, v1

    const/16 v1, 0x34a

    const-string v2, "le3"

    aput-object v2, v0, v1

    const/16 v1, 0x34b

    const-string v2, "le4"

    aput-object v2, v0, v1

    const/16 v1, 0x34c

    const-string v2, "le5"

    aput-object v2, v0, v1

    const/16 v1, 0x34d

    const-string v2, "lei1"

    aput-object v2, v0, v1

    const/16 v1, 0x34e

    const-string v2, "lei2"

    aput-object v2, v0, v1

    const/16 v1, 0x34f

    const-string v2, "lei3"

    aput-object v2, v0, v1

    const/16 v1, 0x350

    const-string v2, "lei4"

    aput-object v2, v0, v1

    const/16 v1, 0x351

    const-string v2, "lei5"

    aput-object v2, v0, v1

    const/16 v1, 0x352

    const-string v2, "leng1"

    aput-object v2, v0, v1

    const/16 v1, 0x353

    const-string v2, "leng2"

    aput-object v2, v0, v1

    const/16 v1, 0x354

    const-string v2, "leng3"

    aput-object v2, v0, v1

    const/16 v1, 0x355

    const-string v2, "leng4"

    aput-object v2, v0, v1

    const/16 v1, 0x356

    const-string v2, "leng5"

    aput-object v2, v0, v1

    const/16 v1, 0x357

    const-string v2, "li1"

    aput-object v2, v0, v1

    const/16 v1, 0x358

    const-string v2, "li2"

    aput-object v2, v0, v1

    const/16 v1, 0x359

    const-string v2, "li3"

    aput-object v2, v0, v1

    const/16 v1, 0x35a

    const-string v2, "li4"

    aput-object v2, v0, v1

    const/16 v1, 0x35b

    const-string v2, "li5"

    aput-object v2, v0, v1

    const/16 v1, 0x35c

    const-string v2, "lia1"

    aput-object v2, v0, v1

    const/16 v1, 0x35d

    const-string v2, "lia2"

    aput-object v2, v0, v1

    const/16 v1, 0x35e

    const-string v2, "lia3"

    aput-object v2, v0, v1

    const/16 v1, 0x35f

    const-string v2, "lia4"

    aput-object v2, v0, v1

    const/16 v1, 0x360

    const-string v2, "lia5"

    aput-object v2, v0, v1

    const/16 v1, 0x361

    const-string v2, "lian1"

    aput-object v2, v0, v1

    const/16 v1, 0x362

    const-string v2, "lian2"

    aput-object v2, v0, v1

    const/16 v1, 0x363

    const-string v2, "lian3"

    aput-object v2, v0, v1

    const/16 v1, 0x364

    const-string v2, "lian4"

    aput-object v2, v0, v1

    const/16 v1, 0x365

    const-string v2, "lian5"

    aput-object v2, v0, v1

    const/16 v1, 0x366

    const-string v2, "liang1"

    aput-object v2, v0, v1

    const/16 v1, 0x367

    const-string v2, "liang2"

    aput-object v2, v0, v1

    const/16 v1, 0x368

    const-string v2, "liang3"

    aput-object v2, v0, v1

    const/16 v1, 0x369

    const-string v2, "liang4"

    aput-object v2, v0, v1

    const/16 v1, 0x36a

    const-string v2, "liang5"

    aput-object v2, v0, v1

    const/16 v1, 0x36b

    const-string v2, "liao1"

    aput-object v2, v0, v1

    const/16 v1, 0x36c

    const-string v2, "liao2"

    aput-object v2, v0, v1

    const/16 v1, 0x36d

    const-string v2, "liao3"

    aput-object v2, v0, v1

    const/16 v1, 0x36e

    const-string v2, "liao4"

    aput-object v2, v0, v1

    const/16 v1, 0x36f

    const-string v2, "liao5"

    aput-object v2, v0, v1

    const/16 v1, 0x370

    const-string v2, "lie1"

    aput-object v2, v0, v1

    const/16 v1, 0x371

    const-string v2, "lie2"

    aput-object v2, v0, v1

    const/16 v1, 0x372

    const-string v2, "lie3"

    aput-object v2, v0, v1

    const/16 v1, 0x373

    const-string v2, "lie4"

    aput-object v2, v0, v1

    const/16 v1, 0x374

    const-string v2, "lie5"

    aput-object v2, v0, v1

    const/16 v1, 0x375

    const-string v2, "lin1"

    aput-object v2, v0, v1

    const/16 v1, 0x376

    const-string v2, "lin2"

    aput-object v2, v0, v1

    const/16 v1, 0x377

    const-string v2, "lin3"

    aput-object v2, v0, v1

    const/16 v1, 0x378

    const-string v2, "lin4"

    aput-object v2, v0, v1

    const/16 v1, 0x379

    const-string v2, "lin5"

    aput-object v2, v0, v1

    const/16 v1, 0x37a

    const-string v2, "ling1"

    aput-object v2, v0, v1

    const/16 v1, 0x37b

    const-string v2, "ling2"

    aput-object v2, v0, v1

    const/16 v1, 0x37c

    const-string v2, "ling3"

    aput-object v2, v0, v1

    const/16 v1, 0x37d

    const-string v2, "ling4"

    aput-object v2, v0, v1

    const/16 v1, 0x37e

    const-string v2, "ling5"

    aput-object v2, v0, v1

    const/16 v1, 0x37f

    const-string v2, "liu1"

    aput-object v2, v0, v1

    const/16 v1, 0x380

    const-string v2, "liu2"

    aput-object v2, v0, v1

    const/16 v1, 0x381

    const-string v2, "liu3"

    aput-object v2, v0, v1

    const/16 v1, 0x382

    const-string v2, "liu4"

    aput-object v2, v0, v1

    const/16 v1, 0x383

    const-string v2, "liu5"

    aput-object v2, v0, v1

    const/16 v1, 0x384

    const-string v2, "long1"

    aput-object v2, v0, v1

    const/16 v1, 0x385

    const-string v2, "long2"

    aput-object v2, v0, v1

    const/16 v1, 0x386

    const-string v2, "long3"

    aput-object v2, v0, v1

    const/16 v1, 0x387

    const-string v2, "long4"

    aput-object v2, v0, v1

    const/16 v1, 0x388

    const-string v2, "long5"

    aput-object v2, v0, v1

    const/16 v1, 0x389

    const-string v2, "lou1"

    aput-object v2, v0, v1

    const/16 v1, 0x38a

    const-string v2, "lou2"

    aput-object v2, v0, v1

    const/16 v1, 0x38b

    const-string v2, "lou3"

    aput-object v2, v0, v1

    const/16 v1, 0x38c

    const-string v2, "lou4"

    aput-object v2, v0, v1

    const/16 v1, 0x38d

    const-string v2, "lou5"

    aput-object v2, v0, v1

    const/16 v1, 0x38e

    const-string v2, "lu1"

    aput-object v2, v0, v1

    const/16 v1, 0x38f

    const-string v2, "lu2"

    aput-object v2, v0, v1

    const/16 v1, 0x390

    const-string v2, "lu3"

    aput-object v2, v0, v1

    const/16 v1, 0x391

    const-string v2, "lu4"

    aput-object v2, v0, v1

    const/16 v1, 0x392

    const-string v2, "lu5"

    aput-object v2, v0, v1

    const/16 v1, 0x393

    const-string v2, "lv1"

    aput-object v2, v0, v1

    const/16 v1, 0x394

    const-string v2, "lv2"

    aput-object v2, v0, v1

    const/16 v1, 0x395

    const-string v2, "lv3"

    aput-object v2, v0, v1

    const/16 v1, 0x396

    const-string v2, "lv4"

    aput-object v2, v0, v1

    const/16 v1, 0x397

    const-string v2, "lv5"

    aput-object v2, v0, v1

    const/16 v1, 0x398

    const-string v2, "luan1"

    aput-object v2, v0, v1

    const/16 v1, 0x399

    const-string v2, "luan2"

    aput-object v2, v0, v1

    const/16 v1, 0x39a

    const-string v2, "luan3"

    aput-object v2, v0, v1

    const/16 v1, 0x39b

    const-string v2, "luan4"

    aput-object v2, v0, v1

    const/16 v1, 0x39c

    const-string v2, "luan5"

    aput-object v2, v0, v1

    const/16 v1, 0x39d

    const-string v2, "lue1"

    aput-object v2, v0, v1

    const/16 v1, 0x39e

    const-string v2, "lue2"

    aput-object v2, v0, v1

    const/16 v1, 0x39f

    const-string v2, "lue3"

    aput-object v2, v0, v1

    const/16 v1, 0x3a0

    const-string v2, "lue4"

    aput-object v2, v0, v1

    const/16 v1, 0x3a1

    const-string v2, "lue5"

    aput-object v2, v0, v1

    const/16 v1, 0x3a2

    const-string v2, "lve1"

    aput-object v2, v0, v1

    const/16 v1, 0x3a3

    const-string v2, "lve2"

    aput-object v2, v0, v1

    const/16 v1, 0x3a4

    const-string v2, "lve3"

    aput-object v2, v0, v1

    const/16 v1, 0x3a5

    const-string v2, "lve4"

    aput-object v2, v0, v1

    const/16 v1, 0x3a6

    const-string v2, "lve5"

    aput-object v2, v0, v1

    const/16 v1, 0x3a7

    const-string v2, "lun1"

    aput-object v2, v0, v1

    const/16 v1, 0x3a8

    const-string v2, "lun2"

    aput-object v2, v0, v1

    const/16 v1, 0x3a9

    const-string v2, "lun3"

    aput-object v2, v0, v1

    const/16 v1, 0x3aa

    const-string v2, "lun4"

    aput-object v2, v0, v1

    const/16 v1, 0x3ab

    const-string v2, "lun5"

    aput-object v2, v0, v1

    const/16 v1, 0x3ac

    const-string v2, "luo1"

    aput-object v2, v0, v1

    const/16 v1, 0x3ad

    const-string v2, "luo2"

    aput-object v2, v0, v1

    const/16 v1, 0x3ae

    const-string v2, "luo3"

    aput-object v2, v0, v1

    const/16 v1, 0x3af

    const-string v2, "luo4"

    aput-object v2, v0, v1

    const/16 v1, 0x3b0

    const-string v2, "luo5"

    aput-object v2, v0, v1

    const/16 v1, 0x3b1

    const-string v2, "m1"

    aput-object v2, v0, v1

    const/16 v1, 0x3b2

    const-string v2, "m2"

    aput-object v2, v0, v1

    const/16 v1, 0x3b3

    const-string v2, "m3"

    aput-object v2, v0, v1

    const/16 v1, 0x3b4

    const-string v2, "m4"

    aput-object v2, v0, v1

    const/16 v1, 0x3b5

    const-string v2, "m5"

    aput-object v2, v0, v1

    const/16 v1, 0x3b6

    const-string v2, "ma1"

    aput-object v2, v0, v1

    const/16 v1, 0x3b7

    const-string v2, "ma2"

    aput-object v2, v0, v1

    const/16 v1, 0x3b8

    const-string v2, "ma3"

    aput-object v2, v0, v1

    const/16 v1, 0x3b9

    const-string v2, "ma4"

    aput-object v2, v0, v1

    const/16 v1, 0x3ba

    const-string v2, "ma5"

    aput-object v2, v0, v1

    const/16 v1, 0x3bb

    const-string v2, "mai1"

    aput-object v2, v0, v1

    const/16 v1, 0x3bc

    const-string v2, "mai2"

    aput-object v2, v0, v1

    const/16 v1, 0x3bd

    const-string v2, "mai3"

    aput-object v2, v0, v1

    const/16 v1, 0x3be

    const-string v2, "mai4"

    aput-object v2, v0, v1

    const/16 v1, 0x3bf

    const-string v2, "mai5"

    aput-object v2, v0, v1

    const/16 v1, 0x3c0

    const-string v2, "man1"

    aput-object v2, v0, v1

    const/16 v1, 0x3c1

    const-string v2, "man2"

    aput-object v2, v0, v1

    const/16 v1, 0x3c2

    const-string v2, "man3"

    aput-object v2, v0, v1

    const/16 v1, 0x3c3

    const-string v2, "man4"

    aput-object v2, v0, v1

    const/16 v1, 0x3c4

    const-string v2, "man5"

    aput-object v2, v0, v1

    const/16 v1, 0x3c5

    const-string v2, "mang1"

    aput-object v2, v0, v1

    const/16 v1, 0x3c6

    const-string v2, "mang2"

    aput-object v2, v0, v1

    const/16 v1, 0x3c7

    const-string v2, "mang3"

    aput-object v2, v0, v1

    const/16 v1, 0x3c8

    const-string v2, "mang4"

    aput-object v2, v0, v1

    const/16 v1, 0x3c9

    const-string v2, "mang5"

    aput-object v2, v0, v1

    const/16 v1, 0x3ca

    const-string v2, "mao1"

    aput-object v2, v0, v1

    const/16 v1, 0x3cb

    const-string v2, "mao2"

    aput-object v2, v0, v1

    const/16 v1, 0x3cc

    const-string v2, "mao3"

    aput-object v2, v0, v1

    const/16 v1, 0x3cd

    const-string v2, "mao4"

    aput-object v2, v0, v1

    const/16 v1, 0x3ce

    const-string v2, "mao5"

    aput-object v2, v0, v1

    const/16 v1, 0x3cf

    const-string v2, "me1"

    aput-object v2, v0, v1

    const/16 v1, 0x3d0

    const-string v2, "me2"

    aput-object v2, v0, v1

    const/16 v1, 0x3d1

    const-string v2, "me3"

    aput-object v2, v0, v1

    const/16 v1, 0x3d2

    const-string v2, "me4"

    aput-object v2, v0, v1

    const/16 v1, 0x3d3

    const-string v2, "me5"

    aput-object v2, v0, v1

    const/16 v1, 0x3d4

    const-string v2, "mei1"

    aput-object v2, v0, v1

    const/16 v1, 0x3d5

    const-string v2, "mei2"

    aput-object v2, v0, v1

    const/16 v1, 0x3d6

    const-string v2, "mei3"

    aput-object v2, v0, v1

    const/16 v1, 0x3d7

    const-string v2, "mei4"

    aput-object v2, v0, v1

    const/16 v1, 0x3d8

    const-string v2, "mei5"

    aput-object v2, v0, v1

    const/16 v1, 0x3d9

    const-string v2, "men1"

    aput-object v2, v0, v1

    const/16 v1, 0x3da

    const-string v2, "men2"

    aput-object v2, v0, v1

    const/16 v1, 0x3db

    const-string v2, "men3"

    aput-object v2, v0, v1

    const/16 v1, 0x3dc

    const-string v2, "men4"

    aput-object v2, v0, v1

    const/16 v1, 0x3dd

    const-string v2, "men5"

    aput-object v2, v0, v1

    const/16 v1, 0x3de

    const-string v2, "meng1"

    aput-object v2, v0, v1

    const/16 v1, 0x3df

    const-string v2, "meng2"

    aput-object v2, v0, v1

    const/16 v1, 0x3e0

    const-string v2, "meng3"

    aput-object v2, v0, v1

    const/16 v1, 0x3e1

    const-string v2, "meng4"

    aput-object v2, v0, v1

    const/16 v1, 0x3e2

    const-string v2, "meng5"

    aput-object v2, v0, v1

    const/16 v1, 0x3e3

    const-string v2, "mi1"

    aput-object v2, v0, v1

    const/16 v1, 0x3e4

    const-string v2, "mi2"

    aput-object v2, v0, v1

    const/16 v1, 0x3e5

    const-string v2, "mi3"

    aput-object v2, v0, v1

    const/16 v1, 0x3e6

    const-string v2, "mi4"

    aput-object v2, v0, v1

    const/16 v1, 0x3e7

    const-string v2, "mi5"

    aput-object v2, v0, v1

    const/16 v1, 0x3e8

    const-string v2, "mian1"

    aput-object v2, v0, v1

    const/16 v1, 0x3e9

    const-string v2, "mian2"

    aput-object v2, v0, v1

    const/16 v1, 0x3ea

    const-string v2, "mian3"

    aput-object v2, v0, v1

    const/16 v1, 0x3eb

    const-string v2, "mian4"

    aput-object v2, v0, v1

    const/16 v1, 0x3ec

    const-string v2, "mian5"

    aput-object v2, v0, v1

    const/16 v1, 0x3ed

    const-string v2, "miao1"

    aput-object v2, v0, v1

    const/16 v1, 0x3ee

    const-string v2, "miao2"

    aput-object v2, v0, v1

    const/16 v1, 0x3ef

    const-string v2, "miao3"

    aput-object v2, v0, v1

    const/16 v1, 0x3f0

    const-string v2, "miao4"

    aput-object v2, v0, v1

    const/16 v1, 0x3f1

    const-string v2, "miao5"

    aput-object v2, v0, v1

    const/16 v1, 0x3f2

    const-string v2, "mie1"

    aput-object v2, v0, v1

    const/16 v1, 0x3f3

    const-string v2, "mie2"

    aput-object v2, v0, v1

    const/16 v1, 0x3f4

    const-string v2, "mie3"

    aput-object v2, v0, v1

    const/16 v1, 0x3f5

    const-string v2, "mie4"

    aput-object v2, v0, v1

    const/16 v1, 0x3f6

    const-string v2, "mie5"

    aput-object v2, v0, v1

    const/16 v1, 0x3f7

    const-string v2, "min1"

    aput-object v2, v0, v1

    const/16 v1, 0x3f8

    const-string v2, "min2"

    aput-object v2, v0, v1

    const/16 v1, 0x3f9

    const-string v2, "min3"

    aput-object v2, v0, v1

    const/16 v1, 0x3fa

    const-string v2, "min4"

    aput-object v2, v0, v1

    const/16 v1, 0x3fb

    const-string v2, "min5"

    aput-object v2, v0, v1

    const/16 v1, 0x3fc

    const-string v2, "ming1"

    aput-object v2, v0, v1

    const/16 v1, 0x3fd

    const-string v2, "ming2"

    aput-object v2, v0, v1

    const/16 v1, 0x3fe

    const-string v2, "ming3"

    aput-object v2, v0, v1

    const/16 v1, 0x3ff

    const-string v2, "ming4"

    aput-object v2, v0, v1

    const/16 v1, 0x400

    const-string v2, "ming5"

    aput-object v2, v0, v1

    const/16 v1, 0x401

    const-string v2, "miu1"

    aput-object v2, v0, v1

    const/16 v1, 0x402

    const-string v2, "miu2"

    aput-object v2, v0, v1

    const/16 v1, 0x403

    const-string v2, "miu3"

    aput-object v2, v0, v1

    const/16 v1, 0x404

    const-string v2, "miu4"

    aput-object v2, v0, v1

    const/16 v1, 0x405

    const-string v2, "miu5"

    aput-object v2, v0, v1

    const/16 v1, 0x406

    const-string v2, "mo1"

    aput-object v2, v0, v1

    const/16 v1, 0x407

    const-string v2, "mo2"

    aput-object v2, v0, v1

    const/16 v1, 0x408

    const-string v2, "mo3"

    aput-object v2, v0, v1

    const/16 v1, 0x409

    const-string v2, "mo4"

    aput-object v2, v0, v1

    const/16 v1, 0x40a

    const-string v2, "mo5"

    aput-object v2, v0, v1

    const/16 v1, 0x40b

    const-string v2, "mou1"

    aput-object v2, v0, v1

    const/16 v1, 0x40c

    const-string v2, "mou2"

    aput-object v2, v0, v1

    const/16 v1, 0x40d

    const-string v2, "mou3"

    aput-object v2, v0, v1

    const/16 v1, 0x40e

    const-string v2, "mou4"

    aput-object v2, v0, v1

    const/16 v1, 0x40f

    const-string v2, "mou5"

    aput-object v2, v0, v1

    const/16 v1, 0x410

    const-string v2, "mu1"

    aput-object v2, v0, v1

    const/16 v1, 0x411

    const-string v2, "mu2"

    aput-object v2, v0, v1

    const/16 v1, 0x412

    const-string v2, "mu3"

    aput-object v2, v0, v1

    const/16 v1, 0x413

    const-string v2, "mu4"

    aput-object v2, v0, v1

    const/16 v1, 0x414

    const-string v2, "mu5"

    aput-object v2, v0, v1

    const/16 v1, 0x415

    const-string v2, "na1"

    aput-object v2, v0, v1

    const/16 v1, 0x416

    const-string v2, "na2"

    aput-object v2, v0, v1

    const/16 v1, 0x417

    const-string v2, "na3"

    aput-object v2, v0, v1

    const/16 v1, 0x418

    const-string v2, "na4"

    aput-object v2, v0, v1

    const/16 v1, 0x419

    const-string v2, "na5"

    aput-object v2, v0, v1

    const/16 v1, 0x41a

    const-string v2, "nai1"

    aput-object v2, v0, v1

    const/16 v1, 0x41b

    const-string v2, "nai2"

    aput-object v2, v0, v1

    const/16 v1, 0x41c

    const-string v2, "nai3"

    aput-object v2, v0, v1

    const/16 v1, 0x41d

    const-string v2, "nai4"

    aput-object v2, v0, v1

    const/16 v1, 0x41e

    const-string v2, "nai5"

    aput-object v2, v0, v1

    const/16 v1, 0x41f

    const-string v2, "nan1"

    aput-object v2, v0, v1

    const/16 v1, 0x420

    const-string v2, "nan2"

    aput-object v2, v0, v1

    const/16 v1, 0x421

    const-string v2, "nan3"

    aput-object v2, v0, v1

    const/16 v1, 0x422

    const-string v2, "nan4"

    aput-object v2, v0, v1

    const/16 v1, 0x423

    const-string v2, "nan5"

    aput-object v2, v0, v1

    const/16 v1, 0x424

    const-string v2, "nang1"

    aput-object v2, v0, v1

    const/16 v1, 0x425

    const-string v2, "nang2"

    aput-object v2, v0, v1

    const/16 v1, 0x426

    const-string v2, "nang3"

    aput-object v2, v0, v1

    const/16 v1, 0x427

    const-string v2, "nang4"

    aput-object v2, v0, v1

    const/16 v1, 0x428

    const-string v2, "nang5"

    aput-object v2, v0, v1

    const/16 v1, 0x429

    const-string v2, "nao1"

    aput-object v2, v0, v1

    const/16 v1, 0x42a

    const-string v2, "nao2"

    aput-object v2, v0, v1

    const/16 v1, 0x42b

    const-string v2, "nao3"

    aput-object v2, v0, v1

    const/16 v1, 0x42c

    const-string v2, "nao4"

    aput-object v2, v0, v1

    const/16 v1, 0x42d

    const-string v2, "nao5"

    aput-object v2, v0, v1

    const/16 v1, 0x42e

    const-string v2, "ne1"

    aput-object v2, v0, v1

    const/16 v1, 0x42f

    const-string v2, "ne2"

    aput-object v2, v0, v1

    const/16 v1, 0x430

    const-string v2, "ne3"

    aput-object v2, v0, v1

    const/16 v1, 0x431

    const-string v2, "ne4"

    aput-object v2, v0, v1

    const/16 v1, 0x432

    const-string v2, "ne5"

    aput-object v2, v0, v1

    const/16 v1, 0x433

    const-string v2, "nei1"

    aput-object v2, v0, v1

    const/16 v1, 0x434

    const-string v2, "nei2"

    aput-object v2, v0, v1

    const/16 v1, 0x435

    const-string v2, "nei3"

    aput-object v2, v0, v1

    const/16 v1, 0x436

    const-string v2, "nei4"

    aput-object v2, v0, v1

    const/16 v1, 0x437

    const-string v2, "nei5"

    aput-object v2, v0, v1

    const/16 v1, 0x438

    const-string v2, "nen1"

    aput-object v2, v0, v1

    const/16 v1, 0x439

    const-string v2, "nen2"

    aput-object v2, v0, v1

    const/16 v1, 0x43a

    const-string v2, "nen3"

    aput-object v2, v0, v1

    const/16 v1, 0x43b

    const-string v2, "nen4"

    aput-object v2, v0, v1

    const/16 v1, 0x43c

    const-string v2, "nen5"

    aput-object v2, v0, v1

    const/16 v1, 0x43d

    const-string v2, "neng1"

    aput-object v2, v0, v1

    const/16 v1, 0x43e

    const-string v2, "neng2"

    aput-object v2, v0, v1

    const/16 v1, 0x43f

    const-string v2, "neng3"

    aput-object v2, v0, v1

    const/16 v1, 0x440

    const-string v2, "neng4"

    aput-object v2, v0, v1

    const/16 v1, 0x441

    const-string v2, "neng5"

    aput-object v2, v0, v1

    const/16 v1, 0x442

    const-string v2, "ng1"

    aput-object v2, v0, v1

    const/16 v1, 0x443

    const-string v2, "ng2"

    aput-object v2, v0, v1

    const/16 v1, 0x444

    const-string v2, "ng3"

    aput-object v2, v0, v1

    const/16 v1, 0x445

    const-string v2, "ng4"

    aput-object v2, v0, v1

    const/16 v1, 0x446

    const-string v2, "ng5"

    aput-object v2, v0, v1

    const/16 v1, 0x447

    const-string v2, "ni1"

    aput-object v2, v0, v1

    const/16 v1, 0x448

    const-string v2, "ni2"

    aput-object v2, v0, v1

    const/16 v1, 0x449

    const-string v2, "ni3"

    aput-object v2, v0, v1

    const/16 v1, 0x44a

    const-string v2, "ni4"

    aput-object v2, v0, v1

    const/16 v1, 0x44b

    const-string v2, "ni5"

    aput-object v2, v0, v1

    const/16 v1, 0x44c

    const-string v2, "nian1"

    aput-object v2, v0, v1

    const/16 v1, 0x44d

    const-string v2, "nian2"

    aput-object v2, v0, v1

    const/16 v1, 0x44e

    const-string v2, "nian3"

    aput-object v2, v0, v1

    const/16 v1, 0x44f

    const-string v2, "nian4"

    aput-object v2, v0, v1

    const/16 v1, 0x450

    const-string v2, "nian5"

    aput-object v2, v0, v1

    const/16 v1, 0x451

    const-string v2, "niang1"

    aput-object v2, v0, v1

    const/16 v1, 0x452

    const-string v2, "niang2"

    aput-object v2, v0, v1

    const/16 v1, 0x453

    const-string v2, "niang3"

    aput-object v2, v0, v1

    const/16 v1, 0x454

    const-string v2, "niang4"

    aput-object v2, v0, v1

    const/16 v1, 0x455

    const-string v2, "niang5"

    aput-object v2, v0, v1

    const/16 v1, 0x456

    const-string v2, "niao1"

    aput-object v2, v0, v1

    const/16 v1, 0x457

    const-string v2, "niao2"

    aput-object v2, v0, v1

    const/16 v1, 0x458

    const-string v2, "niao3"

    aput-object v2, v0, v1

    const/16 v1, 0x459

    const-string v2, "niao4"

    aput-object v2, v0, v1

    const/16 v1, 0x45a

    const-string v2, "niao5"

    aput-object v2, v0, v1

    const/16 v1, 0x45b

    const-string v2, "nie1"

    aput-object v2, v0, v1

    const/16 v1, 0x45c

    const-string v2, "nie2"

    aput-object v2, v0, v1

    const/16 v1, 0x45d

    const-string v2, "nie3"

    aput-object v2, v0, v1

    const/16 v1, 0x45e

    const-string v2, "nie4"

    aput-object v2, v0, v1

    const/16 v1, 0x45f

    const-string v2, "nie5"

    aput-object v2, v0, v1

    const/16 v1, 0x460

    const-string v2, "nin1"

    aput-object v2, v0, v1

    const/16 v1, 0x461

    const-string v2, "nin2"

    aput-object v2, v0, v1

    const/16 v1, 0x462

    const-string v2, "nin3"

    aput-object v2, v0, v1

    const/16 v1, 0x463

    const-string v2, "nin4"

    aput-object v2, v0, v1

    const/16 v1, 0x464

    const-string v2, "nin5"

    aput-object v2, v0, v1

    const/16 v1, 0x465

    const-string v2, "ning1"

    aput-object v2, v0, v1

    const/16 v1, 0x466

    const-string v2, "ning2"

    aput-object v2, v0, v1

    const/16 v1, 0x467

    const-string v2, "ning3"

    aput-object v2, v0, v1

    const/16 v1, 0x468

    const-string v2, "ning4"

    aput-object v2, v0, v1

    const/16 v1, 0x469

    const-string v2, "ning5"

    aput-object v2, v0, v1

    const/16 v1, 0x46a

    const-string v2, "niu1"

    aput-object v2, v0, v1

    const/16 v1, 0x46b

    const-string v2, "niu2"

    aput-object v2, v0, v1

    const/16 v1, 0x46c

    const-string v2, "niu3"

    aput-object v2, v0, v1

    const/16 v1, 0x46d

    const-string v2, "niu4"

    aput-object v2, v0, v1

    const/16 v1, 0x46e

    const-string v2, "niu5"

    aput-object v2, v0, v1

    const/16 v1, 0x46f

    const-string v2, "nong1"

    aput-object v2, v0, v1

    const/16 v1, 0x470

    const-string v2, "nong2"

    aput-object v2, v0, v1

    const/16 v1, 0x471

    const-string v2, "nong3"

    aput-object v2, v0, v1

    const/16 v1, 0x472

    const-string v2, "nong4"

    aput-object v2, v0, v1

    const/16 v1, 0x473

    const-string v2, "nong5"

    aput-object v2, v0, v1

    const/16 v1, 0x474

    const-string v2, "nou1"

    aput-object v2, v0, v1

    const/16 v1, 0x475

    const-string v2, "nou2"

    aput-object v2, v0, v1

    const/16 v1, 0x476

    const-string v2, "nou3"

    aput-object v2, v0, v1

    const/16 v1, 0x477

    const-string v2, "nou4"

    aput-object v2, v0, v1

    const/16 v1, 0x478

    const-string v2, "nou5"

    aput-object v2, v0, v1

    const/16 v1, 0x479

    const-string v2, "nu1"

    aput-object v2, v0, v1

    const/16 v1, 0x47a

    const-string v2, "nu2"

    aput-object v2, v0, v1

    const/16 v1, 0x47b

    const-string v2, "nu3"

    aput-object v2, v0, v1

    const/16 v1, 0x47c

    const-string v2, "nu4"

    aput-object v2, v0, v1

    const/16 v1, 0x47d

    const-string v2, "nu5"

    aput-object v2, v0, v1

    const/16 v1, 0x47e

    const-string v2, "nv1"

    aput-object v2, v0, v1

    const/16 v1, 0x47f

    const-string v2, "nv2"

    aput-object v2, v0, v1

    const/16 v1, 0x480

    const-string v2, "nv3"

    aput-object v2, v0, v1

    const/16 v1, 0x481

    const-string v2, "nv4"

    aput-object v2, v0, v1

    const/16 v1, 0x482

    const-string v2, "nv5"

    aput-object v2, v0, v1

    const/16 v1, 0x483

    const-string v2, "nuan1"

    aput-object v2, v0, v1

    const/16 v1, 0x484

    const-string v2, "nuan2"

    aput-object v2, v0, v1

    const/16 v1, 0x485

    const-string v2, "nuan3"

    aput-object v2, v0, v1

    const/16 v1, 0x486

    const-string v2, "nuan4"

    aput-object v2, v0, v1

    const/16 v1, 0x487

    const-string v2, "nuan5"

    aput-object v2, v0, v1

    const/16 v1, 0x488

    const-string v2, "nve1"

    aput-object v2, v0, v1

    const/16 v1, 0x489

    const-string v2, "nve2"

    aput-object v2, v0, v1

    const/16 v1, 0x48a

    const-string v2, "nve3"

    aput-object v2, v0, v1

    const/16 v1, 0x48b

    const-string v2, "nve4"

    aput-object v2, v0, v1

    const/16 v1, 0x48c

    const-string v2, "nve5"

    aput-object v2, v0, v1

    const/16 v1, 0x48d

    const-string v2, "nuo1"

    aput-object v2, v0, v1

    const/16 v1, 0x48e

    const-string v2, "nuo2"

    aput-object v2, v0, v1

    const/16 v1, 0x48f

    const-string v2, "nuo3"

    aput-object v2, v0, v1

    const/16 v1, 0x490

    const-string v2, "nuo4"

    aput-object v2, v0, v1

    const/16 v1, 0x491

    const-string v2, "nuo5"

    aput-object v2, v0, v1

    const/16 v1, 0x492

    const-string v2, "nun1"

    aput-object v2, v0, v1

    const/16 v1, 0x493

    const-string v2, "nun2"

    aput-object v2, v0, v1

    const/16 v1, 0x494

    const-string v2, "nun3"

    aput-object v2, v0, v1

    const/16 v1, 0x495

    const-string v2, "nun4"

    aput-object v2, v0, v1

    const/16 v1, 0x496

    const-string v2, "nun5"

    aput-object v2, v0, v1

    const/16 v1, 0x497

    const-string v2, "o1"

    aput-object v2, v0, v1

    const/16 v1, 0x498

    const-string v2, "o2"

    aput-object v2, v0, v1

    const/16 v1, 0x499

    const-string v2, "o3"

    aput-object v2, v0, v1

    const/16 v1, 0x49a

    const-string v2, "o4"

    aput-object v2, v0, v1

    const/16 v1, 0x49b

    const-string v2, "o5"

    aput-object v2, v0, v1

    const/16 v1, 0x49c

    const-string v2, "ou1"

    aput-object v2, v0, v1

    const/16 v1, 0x49d

    const-string v2, "ou2"

    aput-object v2, v0, v1

    const/16 v1, 0x49e

    const-string v2, "ou3"

    aput-object v2, v0, v1

    const/16 v1, 0x49f

    const-string v2, "ou4"

    aput-object v2, v0, v1

    const/16 v1, 0x4a0

    const-string v2, "ou5"

    aput-object v2, v0, v1

    const/16 v1, 0x4a1

    const-string v2, "pa1"

    aput-object v2, v0, v1

    const/16 v1, 0x4a2

    const-string v2, "pa2"

    aput-object v2, v0, v1

    const/16 v1, 0x4a3

    const-string v2, "pa3"

    aput-object v2, v0, v1

    const/16 v1, 0x4a4

    const-string v2, "pa4"

    aput-object v2, v0, v1

    const/16 v1, 0x4a5

    const-string v2, "pa5"

    aput-object v2, v0, v1

    const/16 v1, 0x4a6

    const-string v2, "pai1"

    aput-object v2, v0, v1

    const/16 v1, 0x4a7

    const-string v2, "pai2"

    aput-object v2, v0, v1

    const/16 v1, 0x4a8

    const-string v2, "pai3"

    aput-object v2, v0, v1

    const/16 v1, 0x4a9

    const-string v2, "pai4"

    aput-object v2, v0, v1

    const/16 v1, 0x4aa

    const-string v2, "pai5"

    aput-object v2, v0, v1

    const/16 v1, 0x4ab

    const-string v2, "pan1"

    aput-object v2, v0, v1

    const/16 v1, 0x4ac

    const-string v2, "pan2"

    aput-object v2, v0, v1

    const/16 v1, 0x4ad

    const-string v2, "pan3"

    aput-object v2, v0, v1

    const/16 v1, 0x4ae

    const-string v2, "pan4"

    aput-object v2, v0, v1

    const/16 v1, 0x4af

    const-string v2, "pan5"

    aput-object v2, v0, v1

    const/16 v1, 0x4b0

    const-string v2, "pang1"

    aput-object v2, v0, v1

    const/16 v1, 0x4b1

    const-string v2, "pang2"

    aput-object v2, v0, v1

    const/16 v1, 0x4b2

    const-string v2, "pang3"

    aput-object v2, v0, v1

    const/16 v1, 0x4b3

    const-string v2, "pang4"

    aput-object v2, v0, v1

    const/16 v1, 0x4b4

    const-string v2, "pang5"

    aput-object v2, v0, v1

    const/16 v1, 0x4b5

    const-string v2, "pao1"

    aput-object v2, v0, v1

    const/16 v1, 0x4b6

    const-string v2, "pao2"

    aput-object v2, v0, v1

    const/16 v1, 0x4b7

    const-string v2, "pao3"

    aput-object v2, v0, v1

    const/16 v1, 0x4b8

    const-string v2, "pao4"

    aput-object v2, v0, v1

    const/16 v1, 0x4b9

    const-string v2, "pao5"

    aput-object v2, v0, v1

    const/16 v1, 0x4ba

    const-string v2, "pei1"

    aput-object v2, v0, v1

    const/16 v1, 0x4bb

    const-string v2, "pei2"

    aput-object v2, v0, v1

    const/16 v1, 0x4bc

    const-string v2, "pei3"

    aput-object v2, v0, v1

    const/16 v1, 0x4bd

    const-string v2, "pei4"

    aput-object v2, v0, v1

    const/16 v1, 0x4be

    const-string v2, "pei5"

    aput-object v2, v0, v1

    const/16 v1, 0x4bf

    const-string v2, "pen1"

    aput-object v2, v0, v1

    const/16 v1, 0x4c0

    const-string v2, "pen2"

    aput-object v2, v0, v1

    const/16 v1, 0x4c1

    const-string v2, "pen3"

    aput-object v2, v0, v1

    const/16 v1, 0x4c2

    const-string v2, "pen4"

    aput-object v2, v0, v1

    const/16 v1, 0x4c3

    const-string v2, "pen5"

    aput-object v2, v0, v1

    const/16 v1, 0x4c4

    const-string v2, "peng1"

    aput-object v2, v0, v1

    const/16 v1, 0x4c5

    const-string v2, "peng2"

    aput-object v2, v0, v1

    const/16 v1, 0x4c6

    const-string v2, "peng3"

    aput-object v2, v0, v1

    const/16 v1, 0x4c7

    const-string v2, "peng4"

    aput-object v2, v0, v1

    const/16 v1, 0x4c8

    const-string v2, "peng5"

    aput-object v2, v0, v1

    const/16 v1, 0x4c9

    const-string v2, "pi1"

    aput-object v2, v0, v1

    const/16 v1, 0x4ca

    const-string v2, "pi2"

    aput-object v2, v0, v1

    const/16 v1, 0x4cb

    const-string v2, "pi3"

    aput-object v2, v0, v1

    const/16 v1, 0x4cc

    const-string v2, "pi4"

    aput-object v2, v0, v1

    const/16 v1, 0x4cd

    const-string v2, "pi5"

    aput-object v2, v0, v1

    const/16 v1, 0x4ce

    const-string v2, "pian1"

    aput-object v2, v0, v1

    const/16 v1, 0x4cf

    const-string v2, "pian2"

    aput-object v2, v0, v1

    const/16 v1, 0x4d0

    const-string v2, "pian3"

    aput-object v2, v0, v1

    const/16 v1, 0x4d1

    const-string v2, "pian4"

    aput-object v2, v0, v1

    const/16 v1, 0x4d2

    const-string v2, "pian5"

    aput-object v2, v0, v1

    const/16 v1, 0x4d3

    const-string v2, "piao1"

    aput-object v2, v0, v1

    const/16 v1, 0x4d4

    const-string v2, "piao2"

    aput-object v2, v0, v1

    const/16 v1, 0x4d5

    const-string v2, "piao3"

    aput-object v2, v0, v1

    const/16 v1, 0x4d6

    const-string v2, "piao4"

    aput-object v2, v0, v1

    const/16 v1, 0x4d7

    const-string v2, "piao5"

    aput-object v2, v0, v1

    const/16 v1, 0x4d8

    const-string v2, "pie1"

    aput-object v2, v0, v1

    const/16 v1, 0x4d9

    const-string v2, "pie2"

    aput-object v2, v0, v1

    const/16 v1, 0x4da

    const-string v2, "pie3"

    aput-object v2, v0, v1

    const/16 v1, 0x4db

    const-string v2, "pie4"

    aput-object v2, v0, v1

    const/16 v1, 0x4dc

    const-string v2, "pie5"

    aput-object v2, v0, v1

    const/16 v1, 0x4dd

    const-string v2, "pin1"

    aput-object v2, v0, v1

    const/16 v1, 0x4de

    const-string v2, "pin2"

    aput-object v2, v0, v1

    const/16 v1, 0x4df

    const-string v2, "pin3"

    aput-object v2, v0, v1

    const/16 v1, 0x4e0

    const-string v2, "pin4"

    aput-object v2, v0, v1

    const/16 v1, 0x4e1

    const-string v2, "pin5"

    aput-object v2, v0, v1

    const/16 v1, 0x4e2

    const-string v2, "ping1"

    aput-object v2, v0, v1

    const/16 v1, 0x4e3

    const-string v2, "ping2"

    aput-object v2, v0, v1

    const/16 v1, 0x4e4

    const-string v2, "ping3"

    aput-object v2, v0, v1

    const/16 v1, 0x4e5

    const-string v2, "ping4"

    aput-object v2, v0, v1

    const/16 v1, 0x4e6

    const-string v2, "ping5"

    aput-object v2, v0, v1

    const/16 v1, 0x4e7

    const-string v2, "po1"

    aput-object v2, v0, v1

    const/16 v1, 0x4e8

    const-string v2, "po2"

    aput-object v2, v0, v1

    const/16 v1, 0x4e9

    const-string v2, "po3"

    aput-object v2, v0, v1

    const/16 v1, 0x4ea

    const-string v2, "po4"

    aput-object v2, v0, v1

    const/16 v1, 0x4eb

    const-string v2, "po5"

    aput-object v2, v0, v1

    const/16 v1, 0x4ec

    const-string v2, "pou1"

    aput-object v2, v0, v1

    const/16 v1, 0x4ed

    const-string v2, "pou2"

    aput-object v2, v0, v1

    const/16 v1, 0x4ee

    const-string v2, "pou3"

    aput-object v2, v0, v1

    const/16 v1, 0x4ef

    const-string v2, "pou4"

    aput-object v2, v0, v1

    const/16 v1, 0x4f0

    const-string v2, "pou5"

    aput-object v2, v0, v1

    const/16 v1, 0x4f1

    const-string v2, "pu1"

    aput-object v2, v0, v1

    const/16 v1, 0x4f2

    const-string v2, "pu2"

    aput-object v2, v0, v1

    const/16 v1, 0x4f3

    const-string v2, "pu3"

    aput-object v2, v0, v1

    const/16 v1, 0x4f4

    const-string v2, "pu4"

    aput-object v2, v0, v1

    const/16 v1, 0x4f5

    const-string v2, "pu5"

    aput-object v2, v0, v1

    const/16 v1, 0x4f6

    const-string v2, "qi1"

    aput-object v2, v0, v1

    const/16 v1, 0x4f7

    const-string v2, "qi2"

    aput-object v2, v0, v1

    const/16 v1, 0x4f8

    const-string v2, "qi3"

    aput-object v2, v0, v1

    const/16 v1, 0x4f9

    const-string v2, "qi4"

    aput-object v2, v0, v1

    const/16 v1, 0x4fa

    const-string v2, "qi5"

    aput-object v2, v0, v1

    const/16 v1, 0x4fb

    const-string v2, "qia1"

    aput-object v2, v0, v1

    const/16 v1, 0x4fc

    const-string v2, "qia2"

    aput-object v2, v0, v1

    const/16 v1, 0x4fd

    const-string v2, "qia3"

    aput-object v2, v0, v1

    const/16 v1, 0x4fe

    const-string v2, "qia4"

    aput-object v2, v0, v1

    const/16 v1, 0x4ff

    const-string v2, "qia5"

    aput-object v2, v0, v1

    const/16 v1, 0x500

    const-string v2, "qian1"

    aput-object v2, v0, v1

    const/16 v1, 0x501

    const-string v2, "qian2"

    aput-object v2, v0, v1

    const/16 v1, 0x502

    const-string v2, "qian3"

    aput-object v2, v0, v1

    const/16 v1, 0x503

    const-string v2, "qian4"

    aput-object v2, v0, v1

    const/16 v1, 0x504

    const-string v2, "qian5"

    aput-object v2, v0, v1

    const/16 v1, 0x505

    const-string v2, "qiang1"

    aput-object v2, v0, v1

    const/16 v1, 0x506

    const-string v2, "qiang2"

    aput-object v2, v0, v1

    const/16 v1, 0x507

    const-string v2, "qiang3"

    aput-object v2, v0, v1

    const/16 v1, 0x508

    const-string v2, "qiang4"

    aput-object v2, v0, v1

    const/16 v1, 0x509

    const-string v2, "qiang5"

    aput-object v2, v0, v1

    const/16 v1, 0x50a

    const-string v2, "qiao1"

    aput-object v2, v0, v1

    const/16 v1, 0x50b

    const-string v2, "qiao2"

    aput-object v2, v0, v1

    const/16 v1, 0x50c

    const-string v2, "qiao3"

    aput-object v2, v0, v1

    const/16 v1, 0x50d

    const-string v2, "qiao4"

    aput-object v2, v0, v1

    const/16 v1, 0x50e

    const-string v2, "qiao5"

    aput-object v2, v0, v1

    const/16 v1, 0x50f

    const-string v2, "qie1"

    aput-object v2, v0, v1

    const/16 v1, 0x510

    const-string v2, "qie2"

    aput-object v2, v0, v1

    const/16 v1, 0x511

    const-string v2, "qie3"

    aput-object v2, v0, v1

    const/16 v1, 0x512

    const-string v2, "qie4"

    aput-object v2, v0, v1

    const/16 v1, 0x513

    const-string v2, "qie5"

    aput-object v2, v0, v1

    const/16 v1, 0x514

    const-string v2, "qin1"

    aput-object v2, v0, v1

    const/16 v1, 0x515

    const-string v2, "qin2"

    aput-object v2, v0, v1

    const/16 v1, 0x516

    const-string v2, "qin3"

    aput-object v2, v0, v1

    const/16 v1, 0x517

    const-string v2, "qin4"

    aput-object v2, v0, v1

    const/16 v1, 0x518

    const-string v2, "qin5"

    aput-object v2, v0, v1

    const/16 v1, 0x519

    const-string v2, "qing1"

    aput-object v2, v0, v1

    const/16 v1, 0x51a

    const-string v2, "qing2"

    aput-object v2, v0, v1

    const/16 v1, 0x51b

    const-string v2, "qing3"

    aput-object v2, v0, v1

    const/16 v1, 0x51c

    const-string v2, "qing4"

    aput-object v2, v0, v1

    const/16 v1, 0x51d

    const-string v2, "qing5"

    aput-object v2, v0, v1

    const/16 v1, 0x51e

    const-string v2, "qiong1"

    aput-object v2, v0, v1

    const/16 v1, 0x51f

    const-string v2, "qiong2"

    aput-object v2, v0, v1

    const/16 v1, 0x520

    const-string v2, "qiong3"

    aput-object v2, v0, v1

    const/16 v1, 0x521

    const-string v2, "qiong4"

    aput-object v2, v0, v1

    const/16 v1, 0x522

    const-string v2, "qiong5"

    aput-object v2, v0, v1

    const/16 v1, 0x523

    const-string v2, "qiu1"

    aput-object v2, v0, v1

    const/16 v1, 0x524

    const-string v2, "qiu2"

    aput-object v2, v0, v1

    const/16 v1, 0x525

    const-string v2, "qiu3"

    aput-object v2, v0, v1

    const/16 v1, 0x526

    const-string v2, "qiu4"

    aput-object v2, v0, v1

    const/16 v1, 0x527

    const-string v2, "qiu5"

    aput-object v2, v0, v1

    const/16 v1, 0x528

    const-string v2, "qu1"

    aput-object v2, v0, v1

    const/16 v1, 0x529

    const-string v2, "qu2"

    aput-object v2, v0, v1

    const/16 v1, 0x52a

    const-string v2, "qu3"

    aput-object v2, v0, v1

    const/16 v1, 0x52b

    const-string v2, "qu4"

    aput-object v2, v0, v1

    const/16 v1, 0x52c

    const-string v2, "qu5"

    aput-object v2, v0, v1

    const/16 v1, 0x52d

    const-string v2, "quan1"

    aput-object v2, v0, v1

    const/16 v1, 0x52e

    const-string v2, "quan2"

    aput-object v2, v0, v1

    const/16 v1, 0x52f

    const-string v2, "quan3"

    aput-object v2, v0, v1

    const/16 v1, 0x530

    const-string v2, "quan4"

    aput-object v2, v0, v1

    const/16 v1, 0x531

    const-string v2, "quan5"

    aput-object v2, v0, v1

    const/16 v1, 0x532

    const-string v2, "que1"

    aput-object v2, v0, v1

    const/16 v1, 0x533

    const-string v2, "que2"

    aput-object v2, v0, v1

    const/16 v1, 0x534

    const-string v2, "que3"

    aput-object v2, v0, v1

    const/16 v1, 0x535

    const-string v2, "que4"

    aput-object v2, v0, v1

    const/16 v1, 0x536

    const-string v2, "que5"

    aput-object v2, v0, v1

    const/16 v1, 0x537

    const-string v2, "qun1"

    aput-object v2, v0, v1

    const/16 v1, 0x538

    const-string v2, "qun2"

    aput-object v2, v0, v1

    const/16 v1, 0x539

    const-string v2, "qun3"

    aput-object v2, v0, v1

    const/16 v1, 0x53a

    const-string v2, "qun4"

    aput-object v2, v0, v1

    const/16 v1, 0x53b

    const-string v2, "qun5"

    aput-object v2, v0, v1

    const/16 v1, 0x53c

    const-string v2, "ran1"

    aput-object v2, v0, v1

    const/16 v1, 0x53d

    const-string v2, "ran2"

    aput-object v2, v0, v1

    const/16 v1, 0x53e

    const-string v2, "ran3"

    aput-object v2, v0, v1

    const/16 v1, 0x53f

    const-string v2, "ran4"

    aput-object v2, v0, v1

    const/16 v1, 0x540

    const-string v2, "ran5"

    aput-object v2, v0, v1

    const/16 v1, 0x541

    const-string v2, "rang1"

    aput-object v2, v0, v1

    const/16 v1, 0x542

    const-string v2, "rang2"

    aput-object v2, v0, v1

    const/16 v1, 0x543

    const-string v2, "rang3"

    aput-object v2, v0, v1

    const/16 v1, 0x544

    const-string v2, "rang4"

    aput-object v2, v0, v1

    const/16 v1, 0x545

    const-string v2, "rang5"

    aput-object v2, v0, v1

    const/16 v1, 0x546

    const-string v2, "rao1"

    aput-object v2, v0, v1

    const/16 v1, 0x547

    const-string v2, "rao2"

    aput-object v2, v0, v1

    const/16 v1, 0x548

    const-string v2, "rao3"

    aput-object v2, v0, v1

    const/16 v1, 0x549

    const-string v2, "rao4"

    aput-object v2, v0, v1

    const/16 v1, 0x54a

    const-string v2, "rao5"

    aput-object v2, v0, v1

    const/16 v1, 0x54b

    const-string v2, "re1"

    aput-object v2, v0, v1

    const/16 v1, 0x54c

    const-string v2, "re2"

    aput-object v2, v0, v1

    const/16 v1, 0x54d

    const-string v2, "re3"

    aput-object v2, v0, v1

    const/16 v1, 0x54e

    const-string v2, "re4"

    aput-object v2, v0, v1

    const/16 v1, 0x54f

    const-string v2, "re5"

    aput-object v2, v0, v1

    const/16 v1, 0x550

    const-string v2, "ren1"

    aput-object v2, v0, v1

    const/16 v1, 0x551

    const-string v2, "ren2"

    aput-object v2, v0, v1

    const/16 v1, 0x552

    const-string v2, "ren3"

    aput-object v2, v0, v1

    const/16 v1, 0x553

    const-string v2, "ren4"

    aput-object v2, v0, v1

    const/16 v1, 0x554

    const-string v2, "ren5"

    aput-object v2, v0, v1

    const/16 v1, 0x555

    const-string v2, "reng1"

    aput-object v2, v0, v1

    const/16 v1, 0x556

    const-string v2, "reng2"

    aput-object v2, v0, v1

    const/16 v1, 0x557

    const-string v2, "reng3"

    aput-object v2, v0, v1

    const/16 v1, 0x558

    const-string v2, "reng4"

    aput-object v2, v0, v1

    const/16 v1, 0x559

    const-string v2, "reng5"

    aput-object v2, v0, v1

    const/16 v1, 0x55a

    const-string v2, "ri1"

    aput-object v2, v0, v1

    const/16 v1, 0x55b

    const-string v2, "ri2"

    aput-object v2, v0, v1

    const/16 v1, 0x55c

    const-string v2, "ri3"

    aput-object v2, v0, v1

    const/16 v1, 0x55d

    const-string v2, "ri4"

    aput-object v2, v0, v1

    const/16 v1, 0x55e

    const-string v2, "ri5"

    aput-object v2, v0, v1

    const/16 v1, 0x55f

    const-string v2, "rong1"

    aput-object v2, v0, v1

    const/16 v1, 0x560

    const-string v2, "rong2"

    aput-object v2, v0, v1

    const/16 v1, 0x561

    const-string v2, "rong3"

    aput-object v2, v0, v1

    const/16 v1, 0x562

    const-string v2, "rong4"

    aput-object v2, v0, v1

    const/16 v1, 0x563

    const-string v2, "rong5"

    aput-object v2, v0, v1

    const/16 v1, 0x564

    const-string v2, "rou1"

    aput-object v2, v0, v1

    const/16 v1, 0x565

    const-string v2, "rou2"

    aput-object v2, v0, v1

    const/16 v1, 0x566

    const-string v2, "rou3"

    aput-object v2, v0, v1

    const/16 v1, 0x567

    const-string v2, "rou4"

    aput-object v2, v0, v1

    const/16 v1, 0x568

    const-string v2, "rou5"

    aput-object v2, v0, v1

    const/16 v1, 0x569

    const-string v2, "ru1"

    aput-object v2, v0, v1

    const/16 v1, 0x56a

    const-string v2, "ru2"

    aput-object v2, v0, v1

    const/16 v1, 0x56b

    const-string v2, "ru3"

    aput-object v2, v0, v1

    const/16 v1, 0x56c

    const-string v2, "ru4"

    aput-object v2, v0, v1

    const/16 v1, 0x56d

    const-string v2, "ru5"

    aput-object v2, v0, v1

    const/16 v1, 0x56e

    const-string v2, "ruan1"

    aput-object v2, v0, v1

    const/16 v1, 0x56f

    const-string v2, "ruan2"

    aput-object v2, v0, v1

    const/16 v1, 0x570

    const-string v2, "ruan3"

    aput-object v2, v0, v1

    const/16 v1, 0x571

    const-string v2, "ruan4"

    aput-object v2, v0, v1

    const/16 v1, 0x572

    const-string v2, "ruan5"

    aput-object v2, v0, v1

    const/16 v1, 0x573

    const-string v2, "rui1"

    aput-object v2, v0, v1

    const/16 v1, 0x574

    const-string v2, "rui2"

    aput-object v2, v0, v1

    const/16 v1, 0x575

    const-string v2, "rui3"

    aput-object v2, v0, v1

    const/16 v1, 0x576

    const-string v2, "rui4"

    aput-object v2, v0, v1

    const/16 v1, 0x577

    const-string v2, "rui5"

    aput-object v2, v0, v1

    const/16 v1, 0x578

    const-string v2, "run1"

    aput-object v2, v0, v1

    const/16 v1, 0x579

    const-string v2, "run2"

    aput-object v2, v0, v1

    const/16 v1, 0x57a

    const-string v2, "run3"

    aput-object v2, v0, v1

    const/16 v1, 0x57b

    const-string v2, "run4"

    aput-object v2, v0, v1

    const/16 v1, 0x57c

    const-string v2, "run5"

    aput-object v2, v0, v1

    const/16 v1, 0x57d

    const-string v2, "ruo1"

    aput-object v2, v0, v1

    const/16 v1, 0x57e

    const-string v2, "ruo2"

    aput-object v2, v0, v1

    const/16 v1, 0x57f

    const-string v2, "ruo3"

    aput-object v2, v0, v1

    const/16 v1, 0x580

    const-string v2, "ruo4"

    aput-object v2, v0, v1

    const/16 v1, 0x581

    const-string v2, "ruo5"

    aput-object v2, v0, v1

    const/16 v1, 0x582

    const-string v2, "sa1"

    aput-object v2, v0, v1

    const/16 v1, 0x583

    const-string v2, "sa2"

    aput-object v2, v0, v1

    const/16 v1, 0x584

    const-string v2, "sa3"

    aput-object v2, v0, v1

    const/16 v1, 0x585

    const-string v2, "sa4"

    aput-object v2, v0, v1

    const/16 v1, 0x586

    const-string v2, "sa5"

    aput-object v2, v0, v1

    const/16 v1, 0x587

    const-string v2, "sai1"

    aput-object v2, v0, v1

    const/16 v1, 0x588

    const-string v2, "sai2"

    aput-object v2, v0, v1

    const/16 v1, 0x589

    const-string v2, "sai3"

    aput-object v2, v0, v1

    const/16 v1, 0x58a

    const-string v2, "sai4"

    aput-object v2, v0, v1

    const/16 v1, 0x58b

    const-string v2, "sai5"

    aput-object v2, v0, v1

    const/16 v1, 0x58c

    const-string v2, "san1"

    aput-object v2, v0, v1

    const/16 v1, 0x58d

    const-string v2, "san2"

    aput-object v2, v0, v1

    const/16 v1, 0x58e

    const-string v2, "san3"

    aput-object v2, v0, v1

    const/16 v1, 0x58f

    const-string v2, "san4"

    aput-object v2, v0, v1

    const/16 v1, 0x590

    const-string v2, "san5"

    aput-object v2, v0, v1

    const/16 v1, 0x591

    const-string v2, "sang1"

    aput-object v2, v0, v1

    const/16 v1, 0x592

    const-string v2, "sang2"

    aput-object v2, v0, v1

    const/16 v1, 0x593    # 2.0E-42f

    const-string v2, "sang3"

    aput-object v2, v0, v1

    const/16 v1, 0x594

    const-string v2, "sang4"

    aput-object v2, v0, v1

    const/16 v1, 0x595

    const-string v2, "sang5"

    aput-object v2, v0, v1

    const/16 v1, 0x596

    const-string v2, "sao1"

    aput-object v2, v0, v1

    const/16 v1, 0x597

    const-string v2, "sao2"

    aput-object v2, v0, v1

    const/16 v1, 0x598

    const-string v2, "sao3"

    aput-object v2, v0, v1

    const/16 v1, 0x599

    const-string v2, "sao4"

    aput-object v2, v0, v1

    const/16 v1, 0x59a

    const-string v2, "sao5"

    aput-object v2, v0, v1

    const/16 v1, 0x59b

    const-string v2, "se1"

    aput-object v2, v0, v1

    const/16 v1, 0x59c

    const-string v2, "se2"

    aput-object v2, v0, v1

    const/16 v1, 0x59d

    const-string v2, "se3"

    aput-object v2, v0, v1

    const/16 v1, 0x59e

    const-string v2, "se4"

    aput-object v2, v0, v1

    const/16 v1, 0x59f

    const-string v2, "se5"

    aput-object v2, v0, v1

    const/16 v1, 0x5a0

    const-string v2, "sen1"

    aput-object v2, v0, v1

    const/16 v1, 0x5a1

    const-string v2, "sen2"

    aput-object v2, v0, v1

    const/16 v1, 0x5a2

    const-string v2, "sen3"

    aput-object v2, v0, v1

    const/16 v1, 0x5a3

    const-string v2, "sen4"

    aput-object v2, v0, v1

    const/16 v1, 0x5a4

    const-string v2, "sen5"

    aput-object v2, v0, v1

    const/16 v1, 0x5a5

    const-string v2, "seng1"

    aput-object v2, v0, v1

    const/16 v1, 0x5a6

    const-string v2, "seng2"

    aput-object v2, v0, v1

    const/16 v1, 0x5a7

    const-string v2, "seng3"

    aput-object v2, v0, v1

    const/16 v1, 0x5a8

    const-string v2, "seng4"

    aput-object v2, v0, v1

    const/16 v1, 0x5a9

    const-string v2, "seng5"

    aput-object v2, v0, v1

    const/16 v1, 0x5aa

    const-string v2, "sha1"

    aput-object v2, v0, v1

    const/16 v1, 0x5ab

    const-string v2, "sha2"

    aput-object v2, v0, v1

    const/16 v1, 0x5ac

    const-string v2, "sha3"

    aput-object v2, v0, v1

    const/16 v1, 0x5ad

    const-string v2, "sha4"

    aput-object v2, v0, v1

    const/16 v1, 0x5ae

    const-string v2, "sha5"

    aput-object v2, v0, v1

    const/16 v1, 0x5af

    const-string v2, "shai1"

    aput-object v2, v0, v1

    const/16 v1, 0x5b0

    const-string v2, "shai2"

    aput-object v2, v0, v1

    const/16 v1, 0x5b1

    const-string v2, "shai3"

    aput-object v2, v0, v1

    const/16 v1, 0x5b2

    const-string v2, "shai4"

    aput-object v2, v0, v1

    const/16 v1, 0x5b3

    const-string v2, "shai5"

    aput-object v2, v0, v1

    const/16 v1, 0x5b4

    const-string v2, "shan1"

    aput-object v2, v0, v1

    const/16 v1, 0x5b5

    const-string v2, "shan2"

    aput-object v2, v0, v1

    const/16 v1, 0x5b6

    const-string v2, "shan3"

    aput-object v2, v0, v1

    const/16 v1, 0x5b7

    const-string v2, "shan4"

    aput-object v2, v0, v1

    const/16 v1, 0x5b8

    const-string v2, "shan5"

    aput-object v2, v0, v1

    const/16 v1, 0x5b9

    const-string v2, "shang1"

    aput-object v2, v0, v1

    const/16 v1, 0x5ba

    const-string v2, "shang2"

    aput-object v2, v0, v1

    const/16 v1, 0x5bb

    const-string v2, "shang3"

    aput-object v2, v0, v1

    const/16 v1, 0x5bc

    const-string v2, "shang4"

    aput-object v2, v0, v1

    const/16 v1, 0x5bd

    const-string v2, "shang5"

    aput-object v2, v0, v1

    const/16 v1, 0x5be

    const-string v2, "shao1"

    aput-object v2, v0, v1

    const/16 v1, 0x5bf

    const-string v2, "shao2"

    aput-object v2, v0, v1

    const/16 v1, 0x5c0

    const-string v2, "shao3"

    aput-object v2, v0, v1

    const/16 v1, 0x5c1

    const-string v2, "shao4"

    aput-object v2, v0, v1

    const/16 v1, 0x5c2

    const-string v2, "shao5"

    aput-object v2, v0, v1

    const/16 v1, 0x5c3

    const-string v2, "she1"

    aput-object v2, v0, v1

    const/16 v1, 0x5c4

    const-string v2, "she2"

    aput-object v2, v0, v1

    const/16 v1, 0x5c5

    const-string v2, "she3"

    aput-object v2, v0, v1

    const/16 v1, 0x5c6

    const-string v2, "she4"

    aput-object v2, v0, v1

    const/16 v1, 0x5c7

    const-string v2, "she5"

    aput-object v2, v0, v1

    const/16 v1, 0x5c8

    const-string v2, "shei1"

    aput-object v2, v0, v1

    const/16 v1, 0x5c9

    const-string v2, "shei2"

    aput-object v2, v0, v1

    const/16 v1, 0x5ca

    const-string v2, "shei3"

    aput-object v2, v0, v1

    const/16 v1, 0x5cb

    const-string v2, "shei4"

    aput-object v2, v0, v1

    const/16 v1, 0x5cc

    const-string v2, "shei5"

    aput-object v2, v0, v1

    const/16 v1, 0x5cd

    const-string v2, "shen1"

    aput-object v2, v0, v1

    const/16 v1, 0x5ce

    const-string v2, "shen2"

    aput-object v2, v0, v1

    const/16 v1, 0x5cf

    const-string v2, "shen3"

    aput-object v2, v0, v1

    const/16 v1, 0x5d0

    const-string v2, "shen4"

    aput-object v2, v0, v1

    const/16 v1, 0x5d1

    const-string v2, "shen5"

    aput-object v2, v0, v1

    const/16 v1, 0x5d2

    const-string v2, "sheng1"

    aput-object v2, v0, v1

    const/16 v1, 0x5d3

    const-string v2, "sheng2"

    aput-object v2, v0, v1

    const/16 v1, 0x5d4

    const-string v2, "sheng3"

    aput-object v2, v0, v1

    const/16 v1, 0x5d5

    const-string v2, "sheng4"

    aput-object v2, v0, v1

    const/16 v1, 0x5d6

    const-string v2, "sheng5"

    aput-object v2, v0, v1

    const/16 v1, 0x5d7

    const-string v2, "shi1"

    aput-object v2, v0, v1

    const/16 v1, 0x5d8

    const-string v2, "shi2"

    aput-object v2, v0, v1

    const/16 v1, 0x5d9

    const-string v2, "shi3"

    aput-object v2, v0, v1

    const/16 v1, 0x5da

    const-string v2, "shi4"

    aput-object v2, v0, v1

    const/16 v1, 0x5db

    const-string v2, "shi5"

    aput-object v2, v0, v1

    const/16 v1, 0x5dc

    const-string v2, "shou1"

    aput-object v2, v0, v1

    const/16 v1, 0x5dd

    const-string v2, "shou2"

    aput-object v2, v0, v1

    const/16 v1, 0x5de

    const-string v2, "shou3"

    aput-object v2, v0, v1

    const/16 v1, 0x5df

    const-string v2, "shou4"

    aput-object v2, v0, v1

    const/16 v1, 0x5e0

    const-string v2, "shou5"

    aput-object v2, v0, v1

    const/16 v1, 0x5e1

    const-string v2, "shu1"

    aput-object v2, v0, v1

    const/16 v1, 0x5e2

    const-string v2, "shu2"

    aput-object v2, v0, v1

    const/16 v1, 0x5e3

    const-string v2, "shu3"

    aput-object v2, v0, v1

    const/16 v1, 0x5e4

    const-string v2, "shu4"

    aput-object v2, v0, v1

    const/16 v1, 0x5e5

    const-string v2, "shu5"

    aput-object v2, v0, v1

    const/16 v1, 0x5e6

    const-string v2, "shua1"

    aput-object v2, v0, v1

    const/16 v1, 0x5e7

    const-string v2, "shua2"

    aput-object v2, v0, v1

    const/16 v1, 0x5e8

    const-string v2, "shua3"

    aput-object v2, v0, v1

    const/16 v1, 0x5e9

    const-string v2, "shua4"

    aput-object v2, v0, v1

    const/16 v1, 0x5ea

    const-string v2, "shua5"

    aput-object v2, v0, v1

    const/16 v1, 0x5eb

    const-string v2, "shuai1"

    aput-object v2, v0, v1

    const/16 v1, 0x5ec

    const-string v2, "shuai2"

    aput-object v2, v0, v1

    const/16 v1, 0x5ed

    const-string v2, "shuai3"

    aput-object v2, v0, v1

    const/16 v1, 0x5ee

    const-string v2, "shuai4"

    aput-object v2, v0, v1

    const/16 v1, 0x5ef

    const-string v2, "shuai5"

    aput-object v2, v0, v1

    const/16 v1, 0x5f0

    const-string v2, "shuan1"

    aput-object v2, v0, v1

    const/16 v1, 0x5f1

    const-string v2, "shuan2"

    aput-object v2, v0, v1

    const/16 v1, 0x5f2

    const-string v2, "shuan3"

    aput-object v2, v0, v1

    const/16 v1, 0x5f3

    const-string v2, "shuan4"

    aput-object v2, v0, v1

    const/16 v1, 0x5f4

    const-string v2, "shuan5"

    aput-object v2, v0, v1

    const/16 v1, 0x5f5

    const-string v2, "shuang1"

    aput-object v2, v0, v1

    const/16 v1, 0x5f6

    const-string v2, "shuang2"

    aput-object v2, v0, v1

    const/16 v1, 0x5f7

    const-string v2, "shuang3"

    aput-object v2, v0, v1

    const/16 v1, 0x5f8

    const-string v2, "shuang4"

    aput-object v2, v0, v1

    const/16 v1, 0x5f9

    const-string v2, "shuang5"

    aput-object v2, v0, v1

    const/16 v1, 0x5fa

    const-string v2, "shui1"

    aput-object v2, v0, v1

    const/16 v1, 0x5fb

    const-string v2, "shui2"

    aput-object v2, v0, v1

    const/16 v1, 0x5fc

    const-string v2, "shui3"

    aput-object v2, v0, v1

    const/16 v1, 0x5fd

    const-string v2, "shui4"

    aput-object v2, v0, v1

    const/16 v1, 0x5fe

    const-string v2, "shui5"

    aput-object v2, v0, v1

    const/16 v1, 0x5ff

    const-string v2, "shun1"

    aput-object v2, v0, v1

    const/16 v1, 0x600

    const-string v2, "shun2"

    aput-object v2, v0, v1

    const/16 v1, 0x601

    const-string v2, "shun3"

    aput-object v2, v0, v1

    const/16 v1, 0x602

    const-string v2, "shun4"

    aput-object v2, v0, v1

    const/16 v1, 0x603

    const-string v2, "shun5"

    aput-object v2, v0, v1

    const/16 v1, 0x604

    const-string v2, "shuo1"

    aput-object v2, v0, v1

    const/16 v1, 0x605

    const-string v2, "shuo2"

    aput-object v2, v0, v1

    const/16 v1, 0x606

    const-string v2, "shuo3"

    aput-object v2, v0, v1

    const/16 v1, 0x607

    const-string v2, "shuo4"

    aput-object v2, v0, v1

    const/16 v1, 0x608

    const-string v2, "shuo5"

    aput-object v2, v0, v1

    const/16 v1, 0x609

    const-string v2, "si1"

    aput-object v2, v0, v1

    const/16 v1, 0x60a

    const-string v2, "si2"

    aput-object v2, v0, v1

    const/16 v1, 0x60b

    const-string v2, "si3"

    aput-object v2, v0, v1

    const/16 v1, 0x60c

    const-string v2, "si4"

    aput-object v2, v0, v1

    const/16 v1, 0x60d

    const-string v2, "si5"

    aput-object v2, v0, v1

    const/16 v1, 0x60e

    const-string v2, "song1"

    aput-object v2, v0, v1

    const/16 v1, 0x60f

    const-string v2, "song2"

    aput-object v2, v0, v1

    const/16 v1, 0x610

    const-string v2, "song3"

    aput-object v2, v0, v1

    const/16 v1, 0x611

    const-string v2, "song4"

    aput-object v2, v0, v1

    const/16 v1, 0x612

    const-string v2, "song5"

    aput-object v2, v0, v1

    const/16 v1, 0x613

    const-string v2, "sou1"

    aput-object v2, v0, v1

    const/16 v1, 0x614

    const-string v2, "sou2"

    aput-object v2, v0, v1

    const/16 v1, 0x615

    const-string v2, "sou3"

    aput-object v2, v0, v1

    const/16 v1, 0x616

    const-string v2, "sou4"

    aput-object v2, v0, v1

    const/16 v1, 0x617

    const-string v2, "sou5"

    aput-object v2, v0, v1

    const/16 v1, 0x618

    const-string v2, "su1"

    aput-object v2, v0, v1

    const/16 v1, 0x619

    const-string v2, "su2"

    aput-object v2, v0, v1

    const/16 v1, 0x61a

    const-string v2, "su3"

    aput-object v2, v0, v1

    const/16 v1, 0x61b

    const-string v2, "su4"

    aput-object v2, v0, v1

    const/16 v1, 0x61c

    const-string v2, "su5"

    aput-object v2, v0, v1

    const/16 v1, 0x61d

    const-string v2, "suan1"

    aput-object v2, v0, v1

    const/16 v1, 0x61e

    const-string v2, "suan2"

    aput-object v2, v0, v1

    const/16 v1, 0x61f

    const-string v2, "suan3"

    aput-object v2, v0, v1

    const/16 v1, 0x620

    const-string v2, "suan4"

    aput-object v2, v0, v1

    const/16 v1, 0x621

    const-string v2, "suan5"

    aput-object v2, v0, v1

    const/16 v1, 0x622

    const-string v2, "sui1"

    aput-object v2, v0, v1

    const/16 v1, 0x623

    const-string v2, "sui2"

    aput-object v2, v0, v1

    const/16 v1, 0x624

    const-string v2, "sui3"

    aput-object v2, v0, v1

    const/16 v1, 0x625

    const-string v2, "sui4"

    aput-object v2, v0, v1

    const/16 v1, 0x626

    const-string v2, "sui5"

    aput-object v2, v0, v1

    const/16 v1, 0x627

    const-string v2, "sun1"

    aput-object v2, v0, v1

    const/16 v1, 0x628

    const-string v2, "sun2"

    aput-object v2, v0, v1

    const/16 v1, 0x629

    const-string v2, "sun3"

    aput-object v2, v0, v1

    const/16 v1, 0x62a

    const-string v2, "sun4"

    aput-object v2, v0, v1

    const/16 v1, 0x62b

    const-string v2, "sun5"

    aput-object v2, v0, v1

    const/16 v1, 0x62c

    const-string v2, "suo1"

    aput-object v2, v0, v1

    const/16 v1, 0x62d

    const-string v2, "suo2"

    aput-object v2, v0, v1

    const/16 v1, 0x62e

    const-string v2, "suo3"

    aput-object v2, v0, v1

    const/16 v1, 0x62f

    const-string v2, "suo4"

    aput-object v2, v0, v1

    const/16 v1, 0x630

    const-string v2, "suo5"

    aput-object v2, v0, v1

    const/16 v1, 0x631

    const-string v2, "ta1"

    aput-object v2, v0, v1

    const/16 v1, 0x632

    const-string v2, "ta2"

    aput-object v2, v0, v1

    const/16 v1, 0x633

    const-string v2, "ta3"

    aput-object v2, v0, v1

    const/16 v1, 0x634

    const-string v2, "ta4"

    aput-object v2, v0, v1

    const/16 v1, 0x635

    const-string v2, "ta5"

    aput-object v2, v0, v1

    const/16 v1, 0x636

    const-string v2, "tai1"

    aput-object v2, v0, v1

    const/16 v1, 0x637

    const-string v2, "tai2"

    aput-object v2, v0, v1

    const/16 v1, 0x638

    const-string v2, "tai3"

    aput-object v2, v0, v1

    const/16 v1, 0x639

    const-string v2, "tai4"

    aput-object v2, v0, v1

    const/16 v1, 0x63a

    const-string v2, "tai5"

    aput-object v2, v0, v1

    const/16 v1, 0x63b

    const-string v2, "tan1"

    aput-object v2, v0, v1

    const/16 v1, 0x63c

    const-string v2, "tan2"

    aput-object v2, v0, v1

    const/16 v1, 0x63d

    const-string v2, "tan3"

    aput-object v2, v0, v1

    const/16 v1, 0x63e

    const-string v2, "tan4"

    aput-object v2, v0, v1

    const/16 v1, 0x63f

    const-string v2, "tan5"

    aput-object v2, v0, v1

    const/16 v1, 0x640

    const-string v2, "tang1"

    aput-object v2, v0, v1

    const/16 v1, 0x641

    const-string v2, "tang2"

    aput-object v2, v0, v1

    const/16 v1, 0x642

    const-string v2, "tang3"

    aput-object v2, v0, v1

    const/16 v1, 0x643

    const-string v2, "tang4"

    aput-object v2, v0, v1

    const/16 v1, 0x644

    const-string v2, "tang5"

    aput-object v2, v0, v1

    const/16 v1, 0x645

    const-string v2, "tao1"

    aput-object v2, v0, v1

    const/16 v1, 0x646

    const-string v2, "tao2"

    aput-object v2, v0, v1

    const/16 v1, 0x647

    const-string v2, "tao3"

    aput-object v2, v0, v1

    const/16 v1, 0x648

    const-string v2, "tao4"

    aput-object v2, v0, v1

    const/16 v1, 0x649

    const-string v2, "tao5"

    aput-object v2, v0, v1

    const/16 v1, 0x64a

    const-string v2, "te1"

    aput-object v2, v0, v1

    const/16 v1, 0x64b

    const-string v2, "te2"

    aput-object v2, v0, v1

    const/16 v1, 0x64c

    const-string v2, "te3"

    aput-object v2, v0, v1

    const/16 v1, 0x64d

    const-string v2, "te4"

    aput-object v2, v0, v1

    const/16 v1, 0x64e

    const-string v2, "te5"

    aput-object v2, v0, v1

    const/16 v1, 0x64f

    const-string v2, "teng1"

    aput-object v2, v0, v1

    const/16 v1, 0x650

    const-string v2, "teng2"

    aput-object v2, v0, v1

    const/16 v1, 0x651

    const-string v2, "teng3"

    aput-object v2, v0, v1

    const/16 v1, 0x652

    const-string v2, "teng4"

    aput-object v2, v0, v1

    const/16 v1, 0x653

    const-string v2, "teng5"

    aput-object v2, v0, v1

    const/16 v1, 0x654

    const-string v2, "ti1"

    aput-object v2, v0, v1

    const/16 v1, 0x655

    const-string v2, "ti2"

    aput-object v2, v0, v1

    const/16 v1, 0x656

    const-string v2, "ti3"

    aput-object v2, v0, v1

    const/16 v1, 0x657

    const-string v2, "ti4"

    aput-object v2, v0, v1

    const/16 v1, 0x658

    const-string v2, "ti5"

    aput-object v2, v0, v1

    const/16 v1, 0x659

    const-string v2, "tian1"

    aput-object v2, v0, v1

    const/16 v1, 0x65a

    const-string v2, "tian2"

    aput-object v2, v0, v1

    const/16 v1, 0x65b

    const-string v2, "tian3"

    aput-object v2, v0, v1

    const/16 v1, 0x65c

    const-string v2, "tian4"

    aput-object v2, v0, v1

    const/16 v1, 0x65d

    const-string v2, "tian5"

    aput-object v2, v0, v1

    const/16 v1, 0x65e

    const-string v2, "tiao1"

    aput-object v2, v0, v1

    const/16 v1, 0x65f

    const-string v2, "tiao2"

    aput-object v2, v0, v1

    const/16 v1, 0x660

    const-string v2, "tiao3"

    aput-object v2, v0, v1

    const/16 v1, 0x661

    const-string v2, "tiao4"

    aput-object v2, v0, v1

    const/16 v1, 0x662

    const-string v2, "tiao5"

    aput-object v2, v0, v1

    const/16 v1, 0x663

    const-string v2, "tie1"

    aput-object v2, v0, v1

    const/16 v1, 0x664

    const-string v2, "tie2"

    aput-object v2, v0, v1

    const/16 v1, 0x665

    const-string v2, "tie3"

    aput-object v2, v0, v1

    const/16 v1, 0x666

    const-string v2, "tie4"

    aput-object v2, v0, v1

    const/16 v1, 0x667

    const-string v2, "tie5"

    aput-object v2, v0, v1

    const/16 v1, 0x668

    const-string v2, "ting1"

    aput-object v2, v0, v1

    const/16 v1, 0x669

    const-string v2, "ting2"

    aput-object v2, v0, v1

    const/16 v1, 0x66a

    const-string v2, "ting3"

    aput-object v2, v0, v1

    const/16 v1, 0x66b

    const-string v2, "ting4"

    aput-object v2, v0, v1

    const/16 v1, 0x66c

    const-string v2, "ting5"

    aput-object v2, v0, v1

    const/16 v1, 0x66d

    const-string v2, "tong1"

    aput-object v2, v0, v1

    const/16 v1, 0x66e

    const-string v2, "tong2"

    aput-object v2, v0, v1

    const/16 v1, 0x66f

    const-string v2, "tong3"

    aput-object v2, v0, v1

    const/16 v1, 0x670

    const-string v2, "tong4"

    aput-object v2, v0, v1

    const/16 v1, 0x671

    const-string v2, "tong5"

    aput-object v2, v0, v1

    const/16 v1, 0x672

    const-string v2, "tou1"

    aput-object v2, v0, v1

    const/16 v1, 0x673

    const-string v2, "tou2"

    aput-object v2, v0, v1

    const/16 v1, 0x674

    const-string v2, "tou3"

    aput-object v2, v0, v1

    const/16 v1, 0x675

    const-string v2, "tou4"

    aput-object v2, v0, v1

    const/16 v1, 0x676

    const-string v2, "tou5"

    aput-object v2, v0, v1

    const/16 v1, 0x677

    const-string v2, "tu1"

    aput-object v2, v0, v1

    const/16 v1, 0x678

    const-string v2, "tu2"

    aput-object v2, v0, v1

    const/16 v1, 0x679

    const-string v2, "tu3"

    aput-object v2, v0, v1

    const/16 v1, 0x67a

    const-string v2, "tu4"

    aput-object v2, v0, v1

    const/16 v1, 0x67b

    const-string v2, "tu5"

    aput-object v2, v0, v1

    const/16 v1, 0x67c

    const-string v2, "tuan1"

    aput-object v2, v0, v1

    const/16 v1, 0x67d

    const-string v2, "tuan2"

    aput-object v2, v0, v1

    const/16 v1, 0x67e

    const-string v2, "tuan3"

    aput-object v2, v0, v1

    const/16 v1, 0x67f

    const-string v2, "tuan4"

    aput-object v2, v0, v1

    const/16 v1, 0x680

    const-string v2, "tuan5"

    aput-object v2, v0, v1

    const/16 v1, 0x681

    const-string v2, "tui1"

    aput-object v2, v0, v1

    const/16 v1, 0x682

    const-string v2, "tui2"

    aput-object v2, v0, v1

    const/16 v1, 0x683

    const-string v2, "tui3"

    aput-object v2, v0, v1

    const/16 v1, 0x684

    const-string v2, "tui4"

    aput-object v2, v0, v1

    const/16 v1, 0x685

    const-string v2, "tui5"

    aput-object v2, v0, v1

    const/16 v1, 0x686

    const-string v2, "tun1"

    aput-object v2, v0, v1

    const/16 v1, 0x687

    const-string v2, "tun2"

    aput-object v2, v0, v1

    const/16 v1, 0x688

    const-string v2, "tun3"

    aput-object v2, v0, v1

    const/16 v1, 0x689

    const-string v2, "tun4"

    aput-object v2, v0, v1

    const/16 v1, 0x68a

    const-string v2, "tun5"

    aput-object v2, v0, v1

    const/16 v1, 0x68b

    const-string v2, "tuo1"

    aput-object v2, v0, v1

    const/16 v1, 0x68c

    const-string v2, "tuo2"

    aput-object v2, v0, v1

    const/16 v1, 0x68d

    const-string v2, "tuo3"

    aput-object v2, v0, v1

    const/16 v1, 0x68e

    const-string v2, "tuo4"

    aput-object v2, v0, v1

    const/16 v1, 0x68f

    const-string v2, "tuo5"

    aput-object v2, v0, v1

    const/16 v1, 0x690

    const-string v2, "wa1"

    aput-object v2, v0, v1

    const/16 v1, 0x691

    const-string v2, "wa2"

    aput-object v2, v0, v1

    const/16 v1, 0x692

    const-string v2, "wa3"

    aput-object v2, v0, v1

    const/16 v1, 0x693

    const-string v2, "wa4"

    aput-object v2, v0, v1

    const/16 v1, 0x694

    const-string v2, "wa5"

    aput-object v2, v0, v1

    const/16 v1, 0x695

    const-string v2, "wai1"

    aput-object v2, v0, v1

    const/16 v1, 0x696

    const-string v2, "wai2"

    aput-object v2, v0, v1

    const/16 v1, 0x697

    const-string v2, "wai3"

    aput-object v2, v0, v1

    const/16 v1, 0x698

    const-string v2, "wai4"

    aput-object v2, v0, v1

    const/16 v1, 0x699

    const-string v2, "wai5"

    aput-object v2, v0, v1

    const/16 v1, 0x69a

    const-string v2, "wan1"

    aput-object v2, v0, v1

    const/16 v1, 0x69b

    const-string v2, "wan2"

    aput-object v2, v0, v1

    const/16 v1, 0x69c

    const-string v2, "wan3"

    aput-object v2, v0, v1

    const/16 v1, 0x69d

    const-string v2, "wan4"

    aput-object v2, v0, v1

    const/16 v1, 0x69e

    const-string v2, "wan5"

    aput-object v2, v0, v1

    const/16 v1, 0x69f

    const-string v2, "wang1"

    aput-object v2, v0, v1

    const/16 v1, 0x6a0

    const-string v2, "wang2"

    aput-object v2, v0, v1

    const/16 v1, 0x6a1

    const-string v2, "wang3"

    aput-object v2, v0, v1

    const/16 v1, 0x6a2

    const-string v2, "wang4"

    aput-object v2, v0, v1

    const/16 v1, 0x6a3

    const-string v2, "wang5"

    aput-object v2, v0, v1

    const/16 v1, 0x6a4

    const-string v2, "wei1"

    aput-object v2, v0, v1

    const/16 v1, 0x6a5

    const-string v2, "wei2"

    aput-object v2, v0, v1

    const/16 v1, 0x6a6

    const-string v2, "wei3"

    aput-object v2, v0, v1

    const/16 v1, 0x6a7

    const-string v2, "wei4"

    aput-object v2, v0, v1

    const/16 v1, 0x6a8

    const-string v2, "wei5"

    aput-object v2, v0, v1

    const/16 v1, 0x6a9

    const-string v2, "wen1"

    aput-object v2, v0, v1

    const/16 v1, 0x6aa

    const-string v2, "wen2"

    aput-object v2, v0, v1

    const/16 v1, 0x6ab

    const-string v2, "wen3"

    aput-object v2, v0, v1

    const/16 v1, 0x6ac

    const-string v2, "wen4"

    aput-object v2, v0, v1

    const/16 v1, 0x6ad

    const-string v2, "wen5"

    aput-object v2, v0, v1

    const/16 v1, 0x6ae

    const-string v2, "weng1"

    aput-object v2, v0, v1

    const/16 v1, 0x6af

    const-string v2, "weng2"

    aput-object v2, v0, v1

    const/16 v1, 0x6b0

    const-string v2, "weng3"

    aput-object v2, v0, v1

    const/16 v1, 0x6b1

    const-string v2, "weng4"

    aput-object v2, v0, v1

    const/16 v1, 0x6b2

    const-string v2, "weng5"

    aput-object v2, v0, v1

    const/16 v1, 0x6b3

    const-string v2, "wo1"

    aput-object v2, v0, v1

    const/16 v1, 0x6b4

    const-string v2, "wo2"

    aput-object v2, v0, v1

    const/16 v1, 0x6b5

    const-string v2, "wo3"

    aput-object v2, v0, v1

    const/16 v1, 0x6b6

    const-string v2, "wo4"

    aput-object v2, v0, v1

    const/16 v1, 0x6b7

    const-string v2, "wo5"

    aput-object v2, v0, v1

    const/16 v1, 0x6b8

    const-string v2, "wu1"

    aput-object v2, v0, v1

    const/16 v1, 0x6b9

    const-string v2, "wu2"

    aput-object v2, v0, v1

    const/16 v1, 0x6ba

    const-string v2, "wu3"

    aput-object v2, v0, v1

    const/16 v1, 0x6bb

    const-string v2, "wu4"

    aput-object v2, v0, v1

    const/16 v1, 0x6bc

    const-string v2, "wu5"

    aput-object v2, v0, v1

    const/16 v1, 0x6bd

    const-string v2, "xi1"

    aput-object v2, v0, v1

    const/16 v1, 0x6be

    const-string v2, "xi2"

    aput-object v2, v0, v1

    const/16 v1, 0x6bf

    const-string v2, "xi3"

    aput-object v2, v0, v1

    const/16 v1, 0x6c0

    const-string v2, "xi4"

    aput-object v2, v0, v1

    const/16 v1, 0x6c1

    const-string v2, "xi5"

    aput-object v2, v0, v1

    const/16 v1, 0x6c2

    const-string v2, "xia1"

    aput-object v2, v0, v1

    const/16 v1, 0x6c3

    const-string v2, "xia2"

    aput-object v2, v0, v1

    const/16 v1, 0x6c4

    const-string v2, "xia3"

    aput-object v2, v0, v1

    const/16 v1, 0x6c5

    const-string v2, "xia4"

    aput-object v2, v0, v1

    const/16 v1, 0x6c6

    const-string v2, "xia5"

    aput-object v2, v0, v1

    const/16 v1, 0x6c7

    const-string v2, "xian1"

    aput-object v2, v0, v1

    const/16 v1, 0x6c8

    const-string v2, "xian2"

    aput-object v2, v0, v1

    const/16 v1, 0x6c9

    const-string v2, "xian3"

    aput-object v2, v0, v1

    const/16 v1, 0x6ca

    const-string v2, "xian4"

    aput-object v2, v0, v1

    const/16 v1, 0x6cb

    const-string v2, "xian5"

    aput-object v2, v0, v1

    const/16 v1, 0x6cc

    const-string v2, "xiang1"

    aput-object v2, v0, v1

    const/16 v1, 0x6cd

    const-string v2, "xiang2"

    aput-object v2, v0, v1

    const/16 v1, 0x6ce

    const-string v2, "xiang3"

    aput-object v2, v0, v1

    const/16 v1, 0x6cf

    const-string v2, "xiang4"

    aput-object v2, v0, v1

    const/16 v1, 0x6d0

    const-string v2, "xiang5"

    aput-object v2, v0, v1

    const/16 v1, 0x6d1

    const-string v2, "xiao1"

    aput-object v2, v0, v1

    const/16 v1, 0x6d2

    const-string v2, "xiao2"

    aput-object v2, v0, v1

    const/16 v1, 0x6d3

    const-string v2, "xiao3"

    aput-object v2, v0, v1

    const/16 v1, 0x6d4

    const-string v2, "xiao4"

    aput-object v2, v0, v1

    const/16 v1, 0x6d5

    const-string v2, "xiao5"

    aput-object v2, v0, v1

    const/16 v1, 0x6d6

    const-string v2, "xie1"

    aput-object v2, v0, v1

    const/16 v1, 0x6d7

    const-string v2, "xie2"

    aput-object v2, v0, v1

    const/16 v1, 0x6d8

    const-string v2, "xie3"

    aput-object v2, v0, v1

    const/16 v1, 0x6d9

    const-string v2, "xie4"

    aput-object v2, v0, v1

    const/16 v1, 0x6da

    const-string v2, "xie5"

    aput-object v2, v0, v1

    const/16 v1, 0x6db

    const-string v2, "xin1"

    aput-object v2, v0, v1

    const/16 v1, 0x6dc

    const-string v2, "xin2"

    aput-object v2, v0, v1

    const/16 v1, 0x6dd

    const-string v2, "xin3"

    aput-object v2, v0, v1

    const/16 v1, 0x6de

    const-string v2, "xin4"

    aput-object v2, v0, v1

    const/16 v1, 0x6df

    const-string v2, "xin5"

    aput-object v2, v0, v1

    const/16 v1, 0x6e0

    const-string v2, "xing1"

    aput-object v2, v0, v1

    const/16 v1, 0x6e1

    const-string v2, "xing2"

    aput-object v2, v0, v1

    const/16 v1, 0x6e2

    const-string v2, "xing3"

    aput-object v2, v0, v1

    const/16 v1, 0x6e3

    const-string v2, "xing4"

    aput-object v2, v0, v1

    const/16 v1, 0x6e4

    const-string v2, "xing5"

    aput-object v2, v0, v1

    const/16 v1, 0x6e5

    const-string v2, "xiong1"

    aput-object v2, v0, v1

    const/16 v1, 0x6e6

    const-string v2, "xiong2"

    aput-object v2, v0, v1

    const/16 v1, 0x6e7

    const-string v2, "xiong3"

    aput-object v2, v0, v1

    const/16 v1, 0x6e8

    const-string v2, "xiong4"

    aput-object v2, v0, v1

    const/16 v1, 0x6e9

    const-string v2, "xiong5"

    aput-object v2, v0, v1

    const/16 v1, 0x6ea

    const-string v2, "xiu1"

    aput-object v2, v0, v1

    const/16 v1, 0x6eb

    const-string v2, "xiu2"

    aput-object v2, v0, v1

    const/16 v1, 0x6ec

    const-string v2, "xiu3"

    aput-object v2, v0, v1

    const/16 v1, 0x6ed

    const-string v2, "xiu4"

    aput-object v2, v0, v1

    const/16 v1, 0x6ee

    const-string v2, "xiu5"

    aput-object v2, v0, v1

    const/16 v1, 0x6ef

    const-string v2, "xu1"

    aput-object v2, v0, v1

    const/16 v1, 0x6f0

    const-string v2, "xu2"

    aput-object v2, v0, v1

    const/16 v1, 0x6f1

    const-string v2, "xu3"

    aput-object v2, v0, v1

    const/16 v1, 0x6f2

    const-string v2, "xu4"

    aput-object v2, v0, v1

    const/16 v1, 0x6f3

    const-string v2, "xu5"

    aput-object v2, v0, v1

    const/16 v1, 0x6f4

    const-string v2, "xuan1"

    aput-object v2, v0, v1

    const/16 v1, 0x6f5

    const-string v2, "xuan2"

    aput-object v2, v0, v1

    const/16 v1, 0x6f6

    const-string v2, "xuan3"

    aput-object v2, v0, v1

    const/16 v1, 0x6f7

    const-string v2, "xuan4"

    aput-object v2, v0, v1

    const/16 v1, 0x6f8

    const-string v2, "xuan5"

    aput-object v2, v0, v1

    const/16 v1, 0x6f9

    const-string v2, "xue1"

    aput-object v2, v0, v1

    const/16 v1, 0x6fa

    const-string v2, "xue2"

    aput-object v2, v0, v1

    const/16 v1, 0x6fb

    const-string v2, "xue3"

    aput-object v2, v0, v1

    const/16 v1, 0x6fc

    const-string v2, "xue4"

    aput-object v2, v0, v1

    const/16 v1, 0x6fd

    const-string v2, "xue5"

    aput-object v2, v0, v1

    const/16 v1, 0x6fe

    const-string v2, "xun1"

    aput-object v2, v0, v1

    const/16 v1, 0x6ff

    const-string v2, "xun2"

    aput-object v2, v0, v1

    const/16 v1, 0x700

    const-string v2, "xun3"

    aput-object v2, v0, v1

    const/16 v1, 0x701

    const-string v2, "xun4"

    aput-object v2, v0, v1

    const/16 v1, 0x702

    const-string v2, "xun5"

    aput-object v2, v0, v1

    const/16 v1, 0x703

    const-string v2, "ya1"

    aput-object v2, v0, v1

    const/16 v1, 0x704

    const-string v2, "ya2"

    aput-object v2, v0, v1

    const/16 v1, 0x705

    const-string v2, "ya3"

    aput-object v2, v0, v1

    const/16 v1, 0x706

    const-string v2, "ya4"

    aput-object v2, v0, v1

    const/16 v1, 0x707

    const-string v2, "ya5"

    aput-object v2, v0, v1

    const/16 v1, 0x708

    const-string v2, "yan1"

    aput-object v2, v0, v1

    const/16 v1, 0x709

    const-string v2, "yan2"

    aput-object v2, v0, v1

    const/16 v1, 0x70a

    const-string v2, "yan3"

    aput-object v2, v0, v1

    const/16 v1, 0x70b

    const-string v2, "yan4"

    aput-object v2, v0, v1

    const/16 v1, 0x70c

    const-string v2, "yan5"

    aput-object v2, v0, v1

    const/16 v1, 0x70d

    const-string v2, "yang1"

    aput-object v2, v0, v1

    const/16 v1, 0x70e

    const-string v2, "yang2"

    aput-object v2, v0, v1

    const/16 v1, 0x70f

    const-string v2, "yang3"

    aput-object v2, v0, v1

    const/16 v1, 0x710

    const-string v2, "yang4"

    aput-object v2, v0, v1

    const/16 v1, 0x711

    const-string v2, "yang5"

    aput-object v2, v0, v1

    const/16 v1, 0x712

    const-string v2, "yao1"

    aput-object v2, v0, v1

    const/16 v1, 0x713

    const-string v2, "yao2"

    aput-object v2, v0, v1

    const/16 v1, 0x714

    const-string v2, "yao3"

    aput-object v2, v0, v1

    const/16 v1, 0x715

    const-string v2, "yao4"

    aput-object v2, v0, v1

    const/16 v1, 0x716

    const-string v2, "yao5"

    aput-object v2, v0, v1

    const/16 v1, 0x717

    const-string v2, "ye1"

    aput-object v2, v0, v1

    const/16 v1, 0x718

    const-string v2, "ye2"

    aput-object v2, v0, v1

    const/16 v1, 0x719

    const-string v2, "ye3"

    aput-object v2, v0, v1

    const/16 v1, 0x71a

    const-string v2, "ye4"

    aput-object v2, v0, v1

    const/16 v1, 0x71b

    const-string v2, "ye5"

    aput-object v2, v0, v1

    const/16 v1, 0x71c

    const-string v2, "yi1"

    aput-object v2, v0, v1

    const/16 v1, 0x71d

    const-string v2, "yi2"

    aput-object v2, v0, v1

    const/16 v1, 0x71e

    const-string v2, "yi3"

    aput-object v2, v0, v1

    const/16 v1, 0x71f

    const-string v2, "yi4"

    aput-object v2, v0, v1

    const/16 v1, 0x720

    const-string v2, "yi5"

    aput-object v2, v0, v1

    const/16 v1, 0x721

    const-string v2, "yin1"

    aput-object v2, v0, v1

    const/16 v1, 0x722

    const-string v2, "yin2"

    aput-object v2, v0, v1

    const/16 v1, 0x723

    const-string v2, "yin3"

    aput-object v2, v0, v1

    const/16 v1, 0x724

    const-string v2, "yin4"

    aput-object v2, v0, v1

    const/16 v1, 0x725

    const-string v2, "yin5"

    aput-object v2, v0, v1

    const/16 v1, 0x726

    const-string v2, "ying1"

    aput-object v2, v0, v1

    const/16 v1, 0x727

    const-string v2, "ying2"

    aput-object v2, v0, v1

    const/16 v1, 0x728

    const-string v2, "ying3"

    aput-object v2, v0, v1

    const/16 v1, 0x729

    const-string v2, "ying4"

    aput-object v2, v0, v1

    const/16 v1, 0x72a

    const-string v2, "ying5"

    aput-object v2, v0, v1

    const/16 v1, 0x72b

    const-string v2, "yo1"

    aput-object v2, v0, v1

    const/16 v1, 0x72c

    const-string v2, "yo2"

    aput-object v2, v0, v1

    const/16 v1, 0x72d

    const-string v2, "yo3"

    aput-object v2, v0, v1

    const/16 v1, 0x72e

    const-string v2, "yo4"

    aput-object v2, v0, v1

    const/16 v1, 0x72f

    const-string v2, "yo5"

    aput-object v2, v0, v1

    const/16 v1, 0x730

    const-string v2, "yong1"

    aput-object v2, v0, v1

    const/16 v1, 0x731

    const-string v2, "yong2"

    aput-object v2, v0, v1

    const/16 v1, 0x732

    const-string v2, "yong3"

    aput-object v2, v0, v1

    const/16 v1, 0x733

    const-string v2, "yong4"

    aput-object v2, v0, v1

    const/16 v1, 0x734

    const-string v2, "yong5"

    aput-object v2, v0, v1

    const/16 v1, 0x735

    const-string v2, "you1"

    aput-object v2, v0, v1

    const/16 v1, 0x736

    const-string v2, "you2"

    aput-object v2, v0, v1

    const/16 v1, 0x737

    const-string v2, "you3"

    aput-object v2, v0, v1

    const/16 v1, 0x738

    const-string v2, "you4"

    aput-object v2, v0, v1

    const/16 v1, 0x739

    const-string v2, "you5"

    aput-object v2, v0, v1

    const/16 v1, 0x73a

    const-string v2, "yu1"

    aput-object v2, v0, v1

    const/16 v1, 0x73b

    const-string v2, "yu2"

    aput-object v2, v0, v1

    const/16 v1, 0x73c

    const-string v2, "yu3"

    aput-object v2, v0, v1

    const/16 v1, 0x73d

    const-string v2, "yu4"

    aput-object v2, v0, v1

    const/16 v1, 0x73e

    const-string v2, "yu5"

    aput-object v2, v0, v1

    const/16 v1, 0x73f

    const-string v2, "yuan1"

    aput-object v2, v0, v1

    const/16 v1, 0x740

    const-string v2, "yuan2"

    aput-object v2, v0, v1

    const/16 v1, 0x741

    const-string v2, "yuan3"

    aput-object v2, v0, v1

    const/16 v1, 0x742

    const-string v2, "yuan4"

    aput-object v2, v0, v1

    const/16 v1, 0x743

    const-string v2, "yuan5"

    aput-object v2, v0, v1

    const/16 v1, 0x744

    const-string v2, "yue1"

    aput-object v2, v0, v1

    const/16 v1, 0x745

    const-string v2, "yue2"

    aput-object v2, v0, v1

    const/16 v1, 0x746

    const-string v2, "yue3"

    aput-object v2, v0, v1

    const/16 v1, 0x747

    const-string v2, "yue4"

    aput-object v2, v0, v1

    const/16 v1, 0x748

    const-string v2, "yue5"

    aput-object v2, v0, v1

    const/16 v1, 0x749

    const-string v2, "yun1"

    aput-object v2, v0, v1

    const/16 v1, 0x74a

    const-string v2, "yun2"

    aput-object v2, v0, v1

    const/16 v1, 0x74b

    const-string v2, "yun3"

    aput-object v2, v0, v1

    const/16 v1, 0x74c

    const-string v2, "yun4"

    aput-object v2, v0, v1

    const/16 v1, 0x74d

    const-string v2, "yun5"

    aput-object v2, v0, v1

    const/16 v1, 0x74e

    const-string v2, "za1"

    aput-object v2, v0, v1

    const/16 v1, 0x74f

    const-string v2, "za2"

    aput-object v2, v0, v1

    const/16 v1, 0x750

    const-string v2, "za3"

    aput-object v2, v0, v1

    const/16 v1, 0x751

    const-string v2, "za4"

    aput-object v2, v0, v1

    const/16 v1, 0x752

    const-string v2, "za5"

    aput-object v2, v0, v1

    const/16 v1, 0x753

    const-string v2, "zai1"

    aput-object v2, v0, v1

    const/16 v1, 0x754

    const-string v2, "zai2"

    aput-object v2, v0, v1

    const/16 v1, 0x755

    const-string v2, "zai3"

    aput-object v2, v0, v1

    const/16 v1, 0x756

    const-string v2, "zai4"

    aput-object v2, v0, v1

    const/16 v1, 0x757

    const-string v2, "zai5"

    aput-object v2, v0, v1

    const/16 v1, 0x758

    const-string v2, "zan1"

    aput-object v2, v0, v1

    const/16 v1, 0x759

    const-string v2, "zan2"

    aput-object v2, v0, v1

    const/16 v1, 0x75a

    const-string v2, "zan3"

    aput-object v2, v0, v1

    const/16 v1, 0x75b

    const-string v2, "zan4"

    aput-object v2, v0, v1

    const/16 v1, 0x75c

    const-string v2, "zan5"

    aput-object v2, v0, v1

    const/16 v1, 0x75d

    const-string v2, "zang1"

    aput-object v2, v0, v1

    const/16 v1, 0x75e

    const-string v2, "zang2"

    aput-object v2, v0, v1

    const/16 v1, 0x75f

    const-string v2, "zang3"

    aput-object v2, v0, v1

    const/16 v1, 0x760

    const-string v2, "zang4"

    aput-object v2, v0, v1

    const/16 v1, 0x761

    const-string v2, "zang5"

    aput-object v2, v0, v1

    const/16 v1, 0x762

    const-string v2, "zao1"

    aput-object v2, v0, v1

    const/16 v1, 0x763

    const-string v2, "zao2"

    aput-object v2, v0, v1

    const/16 v1, 0x764

    const-string v2, "zao3"

    aput-object v2, v0, v1

    const/16 v1, 0x765

    const-string v2, "zao4"

    aput-object v2, v0, v1

    const/16 v1, 0x766

    const-string v2, "zao5"

    aput-object v2, v0, v1

    const/16 v1, 0x767

    const-string v2, "ze1"

    aput-object v2, v0, v1

    const/16 v1, 0x768

    const-string v2, "ze2"

    aput-object v2, v0, v1

    const/16 v1, 0x769

    const-string v2, "ze3"

    aput-object v2, v0, v1

    const/16 v1, 0x76a

    const-string v2, "ze4"

    aput-object v2, v0, v1

    const/16 v1, 0x76b

    const-string v2, "ze5"

    aput-object v2, v0, v1

    const/16 v1, 0x76c

    const-string v2, "zei1"

    aput-object v2, v0, v1

    const/16 v1, 0x76d

    const-string v2, "zei2"

    aput-object v2, v0, v1

    const/16 v1, 0x76e

    const-string v2, "zei3"

    aput-object v2, v0, v1

    const/16 v1, 0x76f

    const-string v2, "zei4"

    aput-object v2, v0, v1

    const/16 v1, 0x770

    const-string v2, "zei5"

    aput-object v2, v0, v1

    const/16 v1, 0x771

    const-string v2, "zen1"

    aput-object v2, v0, v1

    const/16 v1, 0x772

    const-string v2, "zen2"

    aput-object v2, v0, v1

    const/16 v1, 0x773

    const-string v2, "zen3"

    aput-object v2, v0, v1

    const/16 v1, 0x774

    const-string v2, "zen4"

    aput-object v2, v0, v1

    const/16 v1, 0x775

    const-string v2, "zen5"

    aput-object v2, v0, v1

    const/16 v1, 0x776

    const-string v2, "zeng1"

    aput-object v2, v0, v1

    const/16 v1, 0x777

    const-string v2, "zeng2"

    aput-object v2, v0, v1

    const/16 v1, 0x778

    const-string v2, "zeng3"

    aput-object v2, v0, v1

    const/16 v1, 0x779

    const-string v2, "zeng4"

    aput-object v2, v0, v1

    const/16 v1, 0x77a

    const-string v2, "zeng5"

    aput-object v2, v0, v1

    const/16 v1, 0x77b

    const-string v2, "zha1"

    aput-object v2, v0, v1

    const/16 v1, 0x77c

    const-string v2, "zha2"

    aput-object v2, v0, v1

    const/16 v1, 0x77d

    const-string v2, "zha3"

    aput-object v2, v0, v1

    const/16 v1, 0x77e

    const-string v2, "zha4"

    aput-object v2, v0, v1

    const/16 v1, 0x77f

    const-string v2, "zha5"

    aput-object v2, v0, v1

    const/16 v1, 0x780

    const-string v2, "zhai1"

    aput-object v2, v0, v1

    const/16 v1, 0x781

    const-string v2, "zhai2"

    aput-object v2, v0, v1

    const/16 v1, 0x782

    const-string v2, "zhai3"

    aput-object v2, v0, v1

    const/16 v1, 0x783

    const-string v2, "zhai4"

    aput-object v2, v0, v1

    const/16 v1, 0x784

    const-string v2, "zhai5"

    aput-object v2, v0, v1

    const/16 v1, 0x785

    const-string v2, "zhan1"

    aput-object v2, v0, v1

    const/16 v1, 0x786

    const-string v2, "zhan2"

    aput-object v2, v0, v1

    const/16 v1, 0x787

    const-string v2, "zhan3"

    aput-object v2, v0, v1

    const/16 v1, 0x788

    const-string v2, "zhan4"

    aput-object v2, v0, v1

    const/16 v1, 0x789

    const-string v2, "zhan5"

    aput-object v2, v0, v1

    const/16 v1, 0x78a

    const-string v2, "zhang1"

    aput-object v2, v0, v1

    const/16 v1, 0x78b

    const-string v2, "zhang2"

    aput-object v2, v0, v1

    const/16 v1, 0x78c

    const-string v2, "zhang3"

    aput-object v2, v0, v1

    const/16 v1, 0x78d

    const-string v2, "zhang4"

    aput-object v2, v0, v1

    const/16 v1, 0x78e

    const-string v2, "zhang5"

    aput-object v2, v0, v1

    const/16 v1, 0x78f

    const-string v2, "zhao1"

    aput-object v2, v0, v1

    const/16 v1, 0x790

    const-string v2, "zhao2"

    aput-object v2, v0, v1

    const/16 v1, 0x791

    const-string v2, "zhao3"

    aput-object v2, v0, v1

    const/16 v1, 0x792

    const-string v2, "zhao4"

    aput-object v2, v0, v1

    const/16 v1, 0x793

    const-string v2, "zhao5"

    aput-object v2, v0, v1

    const/16 v1, 0x794

    const-string v2, "zhe1"

    aput-object v2, v0, v1

    const/16 v1, 0x795

    const-string v2, "zhe2"

    aput-object v2, v0, v1

    const/16 v1, 0x796

    const-string v2, "zhe3"

    aput-object v2, v0, v1

    const/16 v1, 0x797

    const-string v2, "zhe4"

    aput-object v2, v0, v1

    const/16 v1, 0x798

    const-string v2, "zhe5"

    aput-object v2, v0, v1

    const/16 v1, 0x799

    const-string v2, "zhei1"

    aput-object v2, v0, v1

    const/16 v1, 0x79a

    const-string v2, "zhei2"

    aput-object v2, v0, v1

    const/16 v1, 0x79b

    const-string v2, "zhei3"

    aput-object v2, v0, v1

    const/16 v1, 0x79c

    const-string v2, "zhei4"

    aput-object v2, v0, v1

    const/16 v1, 0x79d

    const-string v2, "zhei5"

    aput-object v2, v0, v1

    const/16 v1, 0x79e

    const-string v2, "zhen1"

    aput-object v2, v0, v1

    const/16 v1, 0x79f

    const-string v2, "zhen2"

    aput-object v2, v0, v1

    const/16 v1, 0x7a0

    const-string v2, "zhen3"

    aput-object v2, v0, v1

    const/16 v1, 0x7a1

    const-string v2, "zhen4"

    aput-object v2, v0, v1

    const/16 v1, 0x7a2

    const-string v2, "zhen5"

    aput-object v2, v0, v1

    const/16 v1, 0x7a3

    const-string v2, "zheng1"

    aput-object v2, v0, v1

    const/16 v1, 0x7a4

    const-string v2, "zheng2"

    aput-object v2, v0, v1

    const/16 v1, 0x7a5

    const-string v2, "zheng3"

    aput-object v2, v0, v1

    const/16 v1, 0x7a6

    const-string v2, "zheng4"

    aput-object v2, v0, v1

    const/16 v1, 0x7a7

    const-string v2, "zheng5"

    aput-object v2, v0, v1

    const/16 v1, 0x7a8

    const-string v2, "zhi1"

    aput-object v2, v0, v1

    const/16 v1, 0x7a9

    const-string v2, "zhi2"

    aput-object v2, v0, v1

    const/16 v1, 0x7aa

    const-string v2, "zhi3"

    aput-object v2, v0, v1

    const/16 v1, 0x7ab

    const-string v2, "zhi4"

    aput-object v2, v0, v1

    const/16 v1, 0x7ac

    const-string v2, "zhi5"

    aput-object v2, v0, v1

    const/16 v1, 0x7ad

    const-string v2, "zhong1"

    aput-object v2, v0, v1

    const/16 v1, 0x7ae

    const-string v2, "zhong2"

    aput-object v2, v0, v1

    const/16 v1, 0x7af

    const-string v2, "zhong3"

    aput-object v2, v0, v1

    const/16 v1, 0x7b0

    const-string v2, "zhong4"

    aput-object v2, v0, v1

    const/16 v1, 0x7b1

    const-string v2, "zhong5"

    aput-object v2, v0, v1

    const/16 v1, 0x7b2

    const-string v2, "zhou1"

    aput-object v2, v0, v1

    const/16 v1, 0x7b3

    const-string v2, "zhou2"

    aput-object v2, v0, v1

    const/16 v1, 0x7b4

    const-string v2, "zhou3"

    aput-object v2, v0, v1

    const/16 v1, 0x7b5

    const-string v2, "zhou4"

    aput-object v2, v0, v1

    const/16 v1, 0x7b6

    const-string v2, "zhou5"

    aput-object v2, v0, v1

    const/16 v1, 0x7b7

    const-string v2, "zhu1"

    aput-object v2, v0, v1

    const/16 v1, 0x7b8

    const-string v2, "zhu2"

    aput-object v2, v0, v1

    const/16 v1, 0x7b9

    const-string v2, "zhu3"

    aput-object v2, v0, v1

    const/16 v1, 0x7ba

    const-string v2, "zhu4"

    aput-object v2, v0, v1

    const/16 v1, 0x7bb

    const-string v2, "zhu5"

    aput-object v2, v0, v1

    const/16 v1, 0x7bc

    const-string v2, "zhua1"

    aput-object v2, v0, v1

    const/16 v1, 0x7bd

    const-string v2, "zhua2"

    aput-object v2, v0, v1

    const/16 v1, 0x7be

    const-string v2, "zhua3"

    aput-object v2, v0, v1

    const/16 v1, 0x7bf

    const-string v2, "zhua4"

    aput-object v2, v0, v1

    const/16 v1, 0x7c0

    const-string v2, "zhua5"

    aput-object v2, v0, v1

    const/16 v1, 0x7c1

    const-string v2, "zhuai1"

    aput-object v2, v0, v1

    const/16 v1, 0x7c2

    const-string v2, "zhuai2"

    aput-object v2, v0, v1

    const/16 v1, 0x7c3

    const-string v2, "zhuai3"

    aput-object v2, v0, v1

    const/16 v1, 0x7c4

    const-string v2, "zhuai4"

    aput-object v2, v0, v1

    const/16 v1, 0x7c5

    const-string v2, "zhuai5"

    aput-object v2, v0, v1

    const/16 v1, 0x7c6

    const-string v2, "zhuan1"

    aput-object v2, v0, v1

    const/16 v1, 0x7c7

    const-string v2, "zhuan2"

    aput-object v2, v0, v1

    const/16 v1, 0x7c8

    const-string v2, "zhuan3"

    aput-object v2, v0, v1

    const/16 v1, 0x7c9

    const-string v2, "zhuan4"

    aput-object v2, v0, v1

    const/16 v1, 0x7ca

    const-string v2, "zhuan5"

    aput-object v2, v0, v1

    const/16 v1, 0x7cb

    const-string v2, "zhuang1"

    aput-object v2, v0, v1

    const/16 v1, 0x7cc

    const-string v2, "zhuang2"

    aput-object v2, v0, v1

    const/16 v1, 0x7cd

    const-string v2, "zhuang3"

    aput-object v2, v0, v1

    const/16 v1, 0x7ce

    const-string v2, "zhuang4"

    aput-object v2, v0, v1

    const/16 v1, 0x7cf

    const-string v2, "zhuang5"

    aput-object v2, v0, v1

    const/16 v1, 0x7d0

    const-string v2, "zhui1"

    aput-object v2, v0, v1

    const/16 v1, 0x7d1

    const-string v2, "zhui2"

    aput-object v2, v0, v1

    const/16 v1, 0x7d2

    const-string v2, "zhui3"

    aput-object v2, v0, v1

    const/16 v1, 0x7d3

    const-string v2, "zhui4"

    aput-object v2, v0, v1

    const/16 v1, 0x7d4

    const-string v2, "zhui5"

    aput-object v2, v0, v1

    const/16 v1, 0x7d5

    const-string v2, "zhun1"

    aput-object v2, v0, v1

    const/16 v1, 0x7d6

    const-string v2, "zhun2"

    aput-object v2, v0, v1

    const/16 v1, 0x7d7

    const-string v2, "zhun3"

    aput-object v2, v0, v1

    const/16 v1, 0x7d8

    const-string v2, "zhun4"

    aput-object v2, v0, v1

    const/16 v1, 0x7d9

    const-string v2, "zhun5"

    aput-object v2, v0, v1

    const/16 v1, 0x7da

    const-string v2, "zhuo1"

    aput-object v2, v0, v1

    const/16 v1, 0x7db

    const-string v2, "zhuo2"

    aput-object v2, v0, v1

    const/16 v1, 0x7dc

    const-string v2, "zhuo3"

    aput-object v2, v0, v1

    const/16 v1, 0x7dd

    const-string v2, "zhuo4"

    aput-object v2, v0, v1

    const/16 v1, 0x7de

    const-string v2, "zhuo5"

    aput-object v2, v0, v1

    const/16 v1, 0x7df

    const-string v2, "zi1"

    aput-object v2, v0, v1

    const/16 v1, 0x7e0

    const-string v2, "zi2"

    aput-object v2, v0, v1

    const/16 v1, 0x7e1

    const-string v2, "zi3"

    aput-object v2, v0, v1

    const/16 v1, 0x7e2

    const-string v2, "zi4"

    aput-object v2, v0, v1

    const/16 v1, 0x7e3

    const-string v2, "zi5"

    aput-object v2, v0, v1

    const/16 v1, 0x7e4

    const-string v2, "zong1"

    aput-object v2, v0, v1

    const/16 v1, 0x7e5

    const-string v2, "zong2"

    aput-object v2, v0, v1

    const/16 v1, 0x7e6

    const-string v2, "zong3"

    aput-object v2, v0, v1

    const/16 v1, 0x7e7

    const-string v2, "zong4"

    aput-object v2, v0, v1

    const/16 v1, 0x7e8

    const-string v2, "zong5"

    aput-object v2, v0, v1

    const/16 v1, 0x7e9

    const-string v2, "zou1"

    aput-object v2, v0, v1

    const/16 v1, 0x7ea

    const-string v2, "zou2"

    aput-object v2, v0, v1

    const/16 v1, 0x7eb

    const-string v2, "zou3"

    aput-object v2, v0, v1

    const/16 v1, 0x7ec

    const-string v2, "zou4"

    aput-object v2, v0, v1

    const/16 v1, 0x7ed

    const-string v2, "zou5"

    aput-object v2, v0, v1

    const/16 v1, 0x7ee

    const-string v2, "zu1"

    aput-object v2, v0, v1

    const/16 v1, 0x7ef

    const-string v2, "zu2"

    aput-object v2, v0, v1

    const/16 v1, 0x7f0

    const-string v2, "zu3"

    aput-object v2, v0, v1

    const/16 v1, 0x7f1

    const-string v2, "zu4"

    aput-object v2, v0, v1

    const/16 v1, 0x7f2

    const-string v2, "zu5"

    aput-object v2, v0, v1

    const/16 v1, 0x7f3

    const-string v2, "zuan1"

    aput-object v2, v0, v1

    const/16 v1, 0x7f4

    const-string v2, "zuan2"

    aput-object v2, v0, v1

    const/16 v1, 0x7f5

    const-string v2, "zuan3"

    aput-object v2, v0, v1

    const/16 v1, 0x7f6

    const-string v2, "zuan4"

    aput-object v2, v0, v1

    const/16 v1, 0x7f7

    const-string v2, "zuan5"

    aput-object v2, v0, v1

    const/16 v1, 0x7f8

    const-string v2, "zui1"

    aput-object v2, v0, v1

    const/16 v1, 0x7f9

    const-string v2, "zui2"

    aput-object v2, v0, v1

    const/16 v1, 0x7fa

    const-string v2, "zui3"

    aput-object v2, v0, v1

    const/16 v1, 0x7fb

    const-string v2, "zui4"

    aput-object v2, v0, v1

    const/16 v1, 0x7fc

    const-string v2, "zui5"

    aput-object v2, v0, v1

    const/16 v1, 0x7fd

    const-string v2, "zun1"

    aput-object v2, v0, v1

    const/16 v1, 0x7fe

    const-string v2, "zun2"

    aput-object v2, v0, v1

    const/16 v1, 0x7ff

    const-string v2, "zun3"

    aput-object v2, v0, v1

    const/16 v1, 0x800

    const-string v2, "zun4"

    aput-object v2, v0, v1

    const/16 v1, 0x801

    const-string v2, "zun5"

    aput-object v2, v0, v1

    const/16 v1, 0x802

    const-string v2, "zuo1"

    aput-object v2, v0, v1

    const/16 v1, 0x803

    const-string v2, "zuo2"

    aput-object v2, v0, v1

    const/16 v1, 0x804

    const-string v2, "zuo3"

    aput-object v2, v0, v1

    const/16 v1, 0x805

    const-string v2, "zuo4"

    aput-object v2, v0, v1

    const/16 v1, 0x806

    const-string v2, "zuo5"

    aput-object v2, v0, v1

    const/16 v1, 0x807

    const-string v2, "1"

    aput-object v2, v0, v1

    const/16 v1, 0x808

    const-string v2, "2"

    aput-object v2, v0, v1

    const/16 v1, 0x809

    const-string v2, "3"

    aput-object v2, v0, v1

    const/16 v1, 0x80a

    const-string v2, "4"

    aput-object v2, v0, v1

    const/16 v1, 0x80b

    const-string v2, "5"

    aput-object v2, v0, v1

    const/16 v1, 0x80c

    const-string v2, "6"

    aput-object v2, v0, v1

    const/16 v1, 0x80d

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x80e

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x80f

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0x810

    const-string v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0x811

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0x812

    const-string v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0x813

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0x814

    const-string v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0x815

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0x816

    const-string v2, "f"

    aput-object v2, v0, v1

    const/16 v1, 0x817

    const-string v2, "g"

    aput-object v2, v0, v1

    const/16 v1, 0x818

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x819

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0x81a

    const-string v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0x81b

    const-string v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0x81c

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0x81d

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0x81e

    const-string v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0x81f

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x820

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x821

    const-string v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x822

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x823

    const-string v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x824

    const-string v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x825

    const-string v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x826

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x827

    const-string v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x828

    const-string v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x829

    const-string v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x82a

    const-string v2, "z"

    aput-object v2, v0, v1

    sput-object v0, Lk2/a0;->b:[Ljava/lang/String;

    const-string v3, "1"

    const-string v4, "2"

    const-string v5, "3"

    const-string v6, "4"

    const-string v7, "5"

    const-string v8, "6"

    const-string v9, "7"

    const-string v10, "8"

    const-string v11, "9"

    const-string v12, "0"

    const-string v13, "a"

    const-string v14, "b"

    const-string v15, "c"

    const-string v16, "d"

    const-string v17, "e"

    const-string v18, "f"

    const-string v19, "g"

    const-string v20, "h"

    const-string v21, "i"

    const-string v22, "j"

    const-string v23, "k"

    const-string v24, "l"

    const-string v25, "m"

    const-string v26, "n"

    const-string v27, "o"

    const-string v28, "p"

    const-string v29, "q"

    const-string v30, "r"

    const-string v31, "s"

    const-string v32, "t"

    const-string v33, "u"

    const-string v34, "v"

    const-string v35, "w"

    const-string v36, "x"

    const-string v37, "y"

    const-string v38, "z"

    filled-new-array/range {v3 .. v38}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lk2/a0;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a()V
    .locals 5

    sget-object v0, Lk2/a0;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Pinyin"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lk2/v;->a(Ljava/util/HashMap;)V

    invoke-static {v0}, Lk2/w;->a(Ljava/util/HashMap;)V

    invoke-static {v0}, Lk2/x;->a(Ljava/util/HashMap;)V

    invoke-static {v0}, Lk2/y;->a(Ljava/util/HashMap;)V

    invoke-static {v0}, Lk2/z;->a(Ljava/util/HashMap;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "end "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, " "

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    sget-object v2, Lk2/a0;->a:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
