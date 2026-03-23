.class public final Lcom/baidu/location/BDLocation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BDLOCATION_BD09LL_TO_GCJ02:Ljava/lang/String; = "bd09ll2gcj"

.field public static final BDLOCATION_BD09_TO_GCJ02:Ljava/lang/String; = "bd092gcj"

.field public static final BDLOCATION_GCJ02_TO_BD09:Ljava/lang/String; = "bd09"

.field public static final BDLOCATION_GCJ02_TO_BD09LL:Ljava/lang/String; = "bd09ll"

.field public static final BDLOCATION_WGS84_TO_GCJ02:Ljava/lang/String; = "gps2gcj"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/location/BDLocation;",
            ">;"
        }
    .end annotation
.end field

.field public static final GPS_ACCURACY_BAD:I = 0x3

.field public static final GPS_ACCURACY_GOOD:I = 0x1

.field public static final GPS_ACCURACY_MID:I = 0x2

.field public static final GPS_ACCURACY_UNKNOWN:I = 0x0

.field public static final GPS_RECTIFY_INDOOR:I = 0x1

.field public static final GPS_RECTIFY_NONE:I = 0x0

.field public static final GPS_RECTIFY_OUTDOOR:I = 0x2

.field public static final INDOOR_LOCATION_NEARBY_SURPPORT_TRUE:I = 0x2

.field public static final INDOOR_LOCATION_SOURCE_BLUETOOTH:I = 0x4

.field public static final INDOOR_LOCATION_SOURCE_MAGNETIC:I = 0x2

.field public static final INDOOR_LOCATION_SOURCE_SMALLCELLSTATION:I = 0x8

.field public static final INDOOR_LOCATION_SOURCE_UNKNOWN:I = 0x0

.field public static final INDOOR_LOCATION_SOURCE_WIFI:I = 0x1

.field public static final INDOOR_LOCATION_SURPPORT_FALSE:I = 0x0

.field public static final INDOOR_LOCATION_SURPPORT_TRUE:I = 0x1

.field public static final INDOOR_NETWORK_STATE_HIGH:I = 0x2

.field public static final INDOOR_NETWORK_STATE_LOW:I = 0x0

.field public static final INDOOR_NETWORK_STATE_MIDDLE:I = 0x1

.field public static final LOCATION_WHERE_IN_CN:I = 0x1

.field public static final LOCATION_WHERE_OUT_CN:I = 0x0

.field public static final LOCATION_WHERE_UNKNOW:I = 0x2

.field public static final OPERATORS_TYPE_MOBILE:I = 0x1

.field public static final OPERATORS_TYPE_TELECOMU:I = 0x3

.field public static final OPERATORS_TYPE_UNICOM:I = 0x2

.field public static final OPERATORS_TYPE_UNKONW:I = 0x0

.field public static final TypeCacheLocation:I = 0x41

.field public static final TypeCriteriaException:I = 0x3e

.field public static final TypeGpsLocation:I = 0x3d

.field public static final TypeNetWorkException:I = 0x3f

.field public static final TypeNetWorkLocation:I = 0xa1

.field public static final TypeNone:I = 0x0

.field public static final TypeOffLineLocation:I = 0x42

.field public static final TypeOffLineLocationFail:I = 0x43

.field public static final TypeOffLineLocationNetworkFail:I = 0x44

.field public static final TypeServerCheckKeyError:I = 0x1f9

.field public static final TypeServerDecryptError:I = 0xa2

.field public static final TypeServerError:I = 0xa7

.field public static final USER_INDDOR_TRUE:I = 0x1

.field public static final USER_INDOOR_FALSE:I = 0x0

.field public static final USER_INDOOR_UNKNOW:I = -0x1


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:I

.field private D:Ljava/lang/String;

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/location/Poi;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Landroid/os/Bundle;

.field private Q:I

.field private R:I

.field private S:J

.field private T:Ljava/lang/String;

.field private U:D

.field private V:D

.field private W:Z

.field private a:I

.field private b:Ljava/lang/String;

.field private c:D

.field private d:D

.field private e:Z

.field private f:D

.field private g:Z

.field private h:F

.field private i:Z

.field private j:F

.field private k:Z

.field private l:I

.field private m:F

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Lcom/baidu/location/Address;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/location/a;

    invoke-direct {v0}, Lcom/baidu/location/a;-><init>()V

    sput-object v0, Lcom/baidu/location/BDLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/BDLocation;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->c:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->d:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->e:Z

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->f:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->g:Z

    const/4 v4, 0x0

    iput v4, p0, Lcom/baidu/location/BDLocation;->h:F

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->i:Z

    iput v4, p0, Lcom/baidu/location/BDLocation;->j:F

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->k:Z

    const/4 v4, -0x1

    iput v4, p0, Lcom/baidu/location/BDLocation;->l:I

    const/high16 v5, -0x40800000    # -1.0f

    iput v5, p0, Lcom/baidu/location/BDLocation;->m:F

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->o:Z

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->t:Z

    new-instance v5, Lcom/baidu/location/Address$Builder;

    invoke-direct {v5}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v5}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->y:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->z:I

    const/4 v5, 0x1

    iput v5, p0, Lcom/baidu/location/BDLocation;->A:I

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    const-string v5, ""

    iput-object v5, p0, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    iput v4, p0, Lcom/baidu/location/BDLocation;->E:I

    iput v0, p0, Lcom/baidu/location/BDLocation;->F:I

    const/4 v4, 0x2

    iput v4, p0, Lcom/baidu/location/BDLocation;->G:I

    iput v0, p0, Lcom/baidu/location/BDLocation;->H:I

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->J:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->K:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->M:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->O:Ljava/lang/String;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    iput v0, p0, Lcom/baidu/location/BDLocation;->Q:I

    iput v0, p0, Lcom/baidu/location/BDLocation;->R:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/baidu/location/BDLocation;->S:J

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->U:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->V:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->W:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/BDLocation;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->c:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->d:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->e:Z

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->f:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->g:Z

    const/4 v4, 0x0

    iput v4, p0, Lcom/baidu/location/BDLocation;->h:F

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->i:Z

    iput v4, p0, Lcom/baidu/location/BDLocation;->j:F

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->k:Z

    const/4 v4, -0x1

    iput v4, p0, Lcom/baidu/location/BDLocation;->l:I

    const/high16 v5, -0x40800000    # -1.0f

    iput v5, p0, Lcom/baidu/location/BDLocation;->m:F

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->o:Z

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->t:Z

    new-instance v5, Lcom/baidu/location/Address$Builder;

    invoke-direct {v5}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v5}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->y:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->z:I

    const/4 v5, 0x1

    iput v5, p0, Lcom/baidu/location/BDLocation;->A:I

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    const-string v6, ""

    iput-object v6, p0, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    iput v4, p0, Lcom/baidu/location/BDLocation;->E:I

    iput v0, p0, Lcom/baidu/location/BDLocation;->F:I

    const/4 v4, 0x2

    iput v4, p0, Lcom/baidu/location/BDLocation;->G:I

    iput v0, p0, Lcom/baidu/location/BDLocation;->H:I

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->J:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->K:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->M:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->O:Ljava/lang/String;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    iput v0, p0, Lcom/baidu/location/BDLocation;->Q:I

    iput v0, p0, Lcom/baidu/location/BDLocation;->R:I

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/baidu/location/BDLocation;->S:J

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->U:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->V:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->W:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/baidu/location/BDLocation;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->c:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->d:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->f:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/baidu/location/BDLocation;->h:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/baidu/location/BDLocation;->j:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/baidu/location/BDLocation;->l:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/baidu/location/BDLocation;->m:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/baidu/location/BDLocation;->z:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/baidu/location/Address$Builder;

    invoke-direct {v13}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v13, v10}, Lcom/baidu/location/Address$Builder;->country(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v10

    invoke-virtual {v10, v11}, Lcom/baidu/location/Address$Builder;->countryCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/baidu/location/Address$Builder;->province(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->city(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/baidu/location/Address$Builder;->cityCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/baidu/location/Address$Builder;->district(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/baidu/location/Address$Builder;->street(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/baidu/location/Address$Builder;->streetNumber(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/baidu/location/Address$Builder;->adcode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    const/16 v2, 0x8

    new-array v2, v2, [Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/baidu/location/BDLocation;->C:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/baidu/location/BDLocation;->A:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->M:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/baidu/location/BDLocation;->E:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/baidu/location/BDLocation;->F:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/baidu/location/BDLocation;->G:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/baidu/location/BDLocation;->H:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->J:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->K:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/baidu/location/BDLocation;->Q:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/baidu/location/BDLocation;->R:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->O:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/baidu/location/BDLocation;->S:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/baidu/location/BDLocation;->U:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/baidu/location/BDLocation;->V:D

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readBooleanArray([Z)V

    aget-boolean v0, v2, v0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->e:Z

    aget-boolean v0, v2, v5

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->g:Z

    aget-boolean v0, v2, v4

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->i:Z

    const/4 v0, 0x3

    aget-boolean v0, v2, v0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->k:Z

    const/4 v0, 0x4

    aget-boolean v0, v2, v0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->o:Z

    const/4 v0, 0x5

    aget-boolean v0, v2, v0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->t:Z

    const/4 v0, 0x6

    aget-boolean v0, v2, v0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->y:Z

    const/4 v0, 0x7

    aget-boolean v0, v2, v0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->W:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v2, Lcom/baidu/location/Poi;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    goto :goto_1

    :cond_0
    iput-object v0, p0, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    :goto_2
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/baidu/location/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/BDLocation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/location/BDLocation;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/BDLocation;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->c:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->d:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->e:Z

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->f:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->g:Z

    const/4 v4, 0x0

    iput v4, p0, Lcom/baidu/location/BDLocation;->h:F

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->i:Z

    iput v4, p0, Lcom/baidu/location/BDLocation;->j:F

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->k:Z

    const/4 v4, -0x1

    iput v4, p0, Lcom/baidu/location/BDLocation;->l:I

    const/high16 v5, -0x40800000    # -1.0f

    iput v5, p0, Lcom/baidu/location/BDLocation;->m:F

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->o:Z

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->t:Z

    new-instance v5, Lcom/baidu/location/Address$Builder;

    invoke-direct {v5}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v5}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->y:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->z:I

    const/4 v5, 0x1

    iput v5, p0, Lcom/baidu/location/BDLocation;->A:I

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    const-string v5, ""

    iput-object v5, p0, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    iput v4, p0, Lcom/baidu/location/BDLocation;->E:I

    iput v0, p0, Lcom/baidu/location/BDLocation;->F:I

    const/4 v4, 0x2

    iput v4, p0, Lcom/baidu/location/BDLocation;->G:I

    iput v0, p0, Lcom/baidu/location/BDLocation;->H:I

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->J:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->K:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->M:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->O:Ljava/lang/String;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    iput v0, p0, Lcom/baidu/location/BDLocation;->Q:I

    iput v0, p0, Lcom/baidu/location/BDLocation;->R:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/baidu/location/BDLocation;->S:J

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->U:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->V:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->W:Z

    iget v2, p1, Lcom/baidu/location/BDLocation;->a:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->a:I

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    iget-wide v2, p1, Lcom/baidu/location/BDLocation;->c:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->c:D

    iget-wide v2, p1, Lcom/baidu/location/BDLocation;->d:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->d:D

    iget-boolean v2, p1, Lcom/baidu/location/BDLocation;->e:Z

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->e:Z

    iget-wide v2, p1, Lcom/baidu/location/BDLocation;->f:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->f:D

    iget-boolean v2, p1, Lcom/baidu/location/BDLocation;->g:Z

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->g:Z

    iget v2, p1, Lcom/baidu/location/BDLocation;->h:F

    iput v2, p0, Lcom/baidu/location/BDLocation;->h:F

    iget-boolean v2, p1, Lcom/baidu/location/BDLocation;->i:Z

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->i:Z

    iget v2, p1, Lcom/baidu/location/BDLocation;->j:F

    iput v2, p0, Lcom/baidu/location/BDLocation;->j:F

    iget-boolean v2, p1, Lcom/baidu/location/BDLocation;->k:Z

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->k:Z

    iget v2, p1, Lcom/baidu/location/BDLocation;->l:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->l:I

    iget v2, p1, Lcom/baidu/location/BDLocation;->m:F

    iput v2, p0, Lcom/baidu/location/BDLocation;->m:F

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/baidu/location/BDLocation;->o:Z

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->o:Z

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->p:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->p:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/baidu/location/BDLocation;->t:Z

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->t:Z

    new-instance v2, Lcom/baidu/location/Address$Builder;

    invoke-direct {v2}, Lcom/baidu/location/Address$Builder;-><init>()V

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->country:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->country(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->countryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->countryCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->province:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->province(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->city:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->city(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->cityCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->cityCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->district:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->district(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->street:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->street(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->streetNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->streetNumber(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->adcode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->adcode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    iget v2, p1, Lcom/baidu/location/BDLocation;->A:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->A:I

    iget v2, p1, Lcom/baidu/location/BDLocation;->z:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->z:I

    iget-boolean v2, p1, Lcom/baidu/location/BDLocation;->y:Z

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->y:Z

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    iget v2, p1, Lcom/baidu/location/BDLocation;->C:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->C:I

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    iget v2, p1, Lcom/baidu/location/BDLocation;->E:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->E:I

    iget v2, p1, Lcom/baidu/location/BDLocation;->F:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->F:I

    iget v2, p1, Lcom/baidu/location/BDLocation;->F:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->G:I

    iget v2, p1, Lcom/baidu/location/BDLocation;->H:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->H:I

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->J:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->J:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->K:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->K:Ljava/lang/String;

    iget v2, p1, Lcom/baidu/location/BDLocation;->Q:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->Q:I

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->O:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->O:Ljava/lang/String;

    iget-wide v2, p1, Lcom/baidu/location/BDLocation;->U:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->U:D

    iget-wide v2, p1, Lcom/baidu/location/BDLocation;->V:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->V:D

    iget-wide v2, p1, Lcom/baidu/location/BDLocation;->S:J

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->S:J

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    if-nez v2, :cond_1

    :cond_0
    iput-object v1, p0, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v2, p1, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/location/Poi;

    new-instance v3, Lcom/baidu/location/Poi;

    invoke-virtual {v2}, Lcom/baidu/location/Poi;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/baidu/location/Poi;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/baidu/location/Poi;->getRank()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/baidu/location/Poi;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_1
    iget-object v0, p1, Lcom/baidu/location/BDLocation;->M:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->M:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    iget v0, p1, Lcom/baidu/location/BDLocation;->R:I

    iput v0, p0, Lcom/baidu/location/BDLocation;->R:I

    iget-boolean p1, p1, Lcom/baidu/location/BDLocation;->W:Z

    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->W:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "indoor"

    const-string v4, "aptagd"

    const-string v5, "floor"

    const-string v6, "aptag"

    const-string v7, "sema"

    const-string v8, "addr"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x0

    iput v9, v1, Lcom/baidu/location/BDLocation;->a:I

    const/4 v10, 0x0

    iput-object v10, v1, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    const-wide/16 v11, 0x1

    iput-wide v11, v1, Lcom/baidu/location/BDLocation;->c:D

    iput-wide v11, v1, Lcom/baidu/location/BDLocation;->d:D

    iput-boolean v9, v1, Lcom/baidu/location/BDLocation;->e:Z

    iput-wide v11, v1, Lcom/baidu/location/BDLocation;->f:D

    iput-boolean v9, v1, Lcom/baidu/location/BDLocation;->g:Z

    const/4 v13, 0x0

    iput v13, v1, Lcom/baidu/location/BDLocation;->h:F

    iput-boolean v9, v1, Lcom/baidu/location/BDLocation;->i:Z

    iput v13, v1, Lcom/baidu/location/BDLocation;->j:F

    iput-boolean v9, v1, Lcom/baidu/location/BDLocation;->k:Z

    const/4 v13, -0x1

    iput v13, v1, Lcom/baidu/location/BDLocation;->l:I

    const/high16 v14, -0x40800000    # -1.0f

    iput v14, v1, Lcom/baidu/location/BDLocation;->m:F

    iput-object v10, v1, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    iput-boolean v9, v1, Lcom/baidu/location/BDLocation;->o:Z

    iput-object v10, v1, Lcom/baidu/location/BDLocation;->p:Ljava/lang/String;

    iput-object v10, v1, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    iput-object v10, v1, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    iput-object v10, v1, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    iput-boolean v9, v1, Lcom/baidu/location/BDLocation;->t:Z

    new-instance v14, Lcom/baidu/location/Address$Builder;

    invoke-direct {v14}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v14}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v14

    iput-object v14, v1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iput-object v10, v1, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iput-object v10, v1, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iput-object v10, v1, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    iput-boolean v9, v1, Lcom/baidu/location/BDLocation;->y:Z

    iput v9, v1, Lcom/baidu/location/BDLocation;->z:I

    const/4 v14, 0x1

    iput v14, v1, Lcom/baidu/location/BDLocation;->A:I

    iput-object v10, v1, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    const-string v15, ""

    iput-object v15, v1, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    iput v13, v1, Lcom/baidu/location/BDLocation;->E:I

    iput v9, v1, Lcom/baidu/location/BDLocation;->F:I

    const/4 v13, 0x2

    iput v13, v1, Lcom/baidu/location/BDLocation;->G:I

    iput v9, v1, Lcom/baidu/location/BDLocation;->H:I

    iput-object v10, v1, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    iput-object v10, v1, Lcom/baidu/location/BDLocation;->J:Ljava/lang/String;

    iput-object v10, v1, Lcom/baidu/location/BDLocation;->K:Ljava/lang/String;

    iput-object v10, v1, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    iput-object v10, v1, Lcom/baidu/location/BDLocation;->M:Ljava/lang/String;

    iput-object v10, v1, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    iput-object v10, v1, Lcom/baidu/location/BDLocation;->O:Ljava/lang/String;

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    iput-object v13, v1, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    iput v9, v1, Lcom/baidu/location/BDLocation;->Q:I

    iput v9, v1, Lcom/baidu/location/BDLocation;->R:I

    move-object/from16 v16, v15

    const-wide/16 v14, 0x0

    iput-wide v14, v1, Lcom/baidu/location/BDLocation;->S:J

    iput-object v10, v1, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    iput-wide v11, v1, Lcom/baidu/location/BDLocation;->U:D

    iput-wide v11, v1, Lcom/baidu/location/BDLocation;->V:D

    iput-boolean v9, v1, Lcom/baidu/location/BDLocation;->W:Z

    if-eqz v2, :cond_38

    move-object/from16 v14, v16

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    goto/16 :goto_2d

    :cond_0
    :try_start_0
    new-instance v15, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_10

    :try_start_1
    invoke-direct {v15, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "result"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v13, "error"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v1, v13}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    const-string v11, "time"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/location/BDLocation;->setTime(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_10

    const-string v11, "gcj02"

    const-string v12, "radius"

    const-string v10, "point"

    const-string v9, "content"

    const-string v2, "in_cn"

    move-object/from16 v17, v3

    const-string v3, "x"

    move-object/from16 v18, v5

    const-string v5, "y"

    move-object/from16 v19, v8

    const/16 v8, 0x3d

    if-ne v13, v8, :cond_4

    :try_start_2
    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->setRadius(F)V

    const-string v3, "s"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->setSpeed(F)V

    const-string v3, "d"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->setDirection(F)V

    const-string v3, "n"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->setSatelliteNumber(I)V

    const-string v3, "h"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_10

    if-eqz v3, :cond_1

    :try_start_3
    const-string v3, "h"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/baidu/location/BDLocation;->setAltitude(D)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_10

    :catch_0
    :cond_1
    :try_start_4
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/location/BDLocation;->setLocationWhere(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/baidu/location/BDLocation;->setLocationWhere(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_10

    :catch_1
    :goto_0
    :try_start_5
    iget v2, v1, Lcom/baidu/location/BDLocation;->A:I

    if-nez v2, :cond_3

    const-string v2, "wgs84"

    :goto_1
    invoke-virtual {v1, v2}, Lcom/baidu/location/BDLocation;->setCoorType(Ljava/lang/String;)V

    goto/16 :goto_2d

    :cond_3
    invoke-virtual {v1, v11}, Lcom/baidu/location/BDLocation;->setCoorType(Ljava/lang/String;)V

    goto/16 :goto_2d

    :cond_4
    move v8, v13

    const/16 v13, 0xa1

    if-ne v8, v13, :cond_35

    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 p1, v11

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v1, v9}, Lcom/baidu/location/BDLocation;->setRadius(F)V

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    iput-object v6, v1, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    goto :goto_2

    :cond_5
    iput-object v14, v1, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    :cond_6
    :goto_2
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "pois"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_7

    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "pname"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "pid"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "pr"

    move-object/from16 v20, v14

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v13

    new-instance v10, Lcom/baidu/location/Poi;

    invoke-direct {v10, v12, v11, v13, v14}, Lcom/baidu/location/Poi;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v14, v20

    goto :goto_3

    :cond_7
    move-object/from16 v20, v14

    iput-object v6, v1, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    goto :goto_4

    :cond_8
    move-object/from16 v20, v14

    :goto_4
    const-string v4, "poiregion"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "poiregion"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    :cond_9
    const-string v4, "regular"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "regular"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    goto :goto_5

    :cond_a
    move-object/from16 v20, v14

    :cond_b
    :goto_5
    move-object/from16 v4, v19

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_10

    const-string v7, ","

    if-eqz v6, :cond_1f

    :try_start_6
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_10

    const/4 v13, 0x1

    goto :goto_6

    :catch_2
    nop

    const/4 v6, 0x0

    const/4 v13, 0x0

    :goto_6
    if-eqz v6, :cond_15

    :try_start_7
    const-string v4, "city"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "city"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_c
    move-object/from16 v4, v20

    :goto_7
    const-string v9, "city_code"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    const-string v9, "city_code"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_8

    :cond_d
    move-object/from16 v9, v20

    :goto_8
    const-string v10, "country"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    const-string v10, "country"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_9

    :cond_e
    move-object/from16 v10, v20

    :goto_9
    const-string v11, "country_code"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    const-string v11, "country_code"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_a

    :cond_f
    move-object/from16 v11, v20

    :goto_a
    const-string v12, "province"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    const-string v12, "province"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_b

    :cond_10
    move-object/from16 v12, v20

    :goto_b
    const-string v14, "district"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11

    const-string v14, "district"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_c

    :cond_11
    move-object/from16 v14, v20

    :goto_c
    const-string v15, "street"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_12

    const-string v15, "street"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v4

    goto :goto_d

    :cond_12
    move-object/from16 v19, v4

    move-object/from16 v15, v20

    :goto_d
    const-string v4, "street_number"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "street_number"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v21, v4

    goto :goto_e

    :cond_13
    move-object/from16 v21, v20

    :goto_e
    const-string v4, "adcode"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "adcode"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_10

    move-object v6, v14

    move-object/from16 v14, v21

    move-object/from16 v22, v5

    move-object v5, v4

    move-object/from16 v4, v19

    move-object/from16 v19, v22

    goto/16 :goto_1e

    :cond_14
    move-object v6, v14

    move-object/from16 v4, v19

    move-object/from16 v14, v21

    move-object/from16 v19, v5

    move-object/from16 v5, v20

    goto/16 :goto_1e

    :cond_15
    :try_start_8
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    if-lez v6, :cond_16

    const/4 v9, 0x0

    aget-object v10, v4, v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_10

    const/4 v9, 0x1

    goto :goto_f

    :cond_16
    const/4 v9, 0x1

    const/4 v10, 0x0

    :goto_f
    if-le v6, v9, :cond_17

    :try_start_9
    aget-object v11, v4, v9
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_10

    const/4 v9, 0x2

    goto :goto_10

    :catch_3
    move-exception v0

    move-object v4, v0

    const/4 v9, 0x0

    goto/16 :goto_18

    :cond_17
    const/4 v9, 0x2

    const/4 v11, 0x0

    :goto_10
    if-le v6, v9, :cond_18

    :try_start_a
    aget-object v12, v4, v9
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_10

    goto :goto_11

    :catch_4
    move-exception v0

    move-object v4, v0

    const/4 v9, 0x0

    goto/16 :goto_19

    :cond_18
    const/4 v12, 0x0

    :goto_11
    const/4 v9, 0x3

    if-le v6, v9, :cond_19

    const/4 v9, 0x3

    :try_start_b
    aget-object v9, v4, v9
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_10

    goto :goto_12

    :catch_5
    move-exception v0

    move-object v4, v0

    const/4 v9, 0x0

    goto/16 :goto_1a

    :cond_19
    const/4 v9, 0x0

    :goto_12
    const/4 v14, 0x4

    if-le v6, v14, :cond_1a

    const/4 v14, 0x4

    :try_start_c
    aget-object v14, v4, v14
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_10

    goto :goto_13

    :catch_6
    move-exception v0

    move-object v4, v0

    goto/16 :goto_1a

    :cond_1a
    const/4 v14, 0x0

    :goto_13
    const/4 v15, 0x5

    if-le v6, v15, :cond_1b

    const/4 v15, 0x5

    :try_start_d
    aget-object v15, v4, v15
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_d} :catch_10

    goto :goto_14

    :catch_7
    move-exception v0

    move-object v4, v0

    const/4 v13, 0x0

    goto :goto_1b

    :cond_1b
    const/4 v15, 0x0

    :goto_14
    const/4 v13, 0x6

    if-le v6, v13, :cond_1c

    const/4 v13, 0x6

    :try_start_e
    aget-object v13, v4, v13
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_e} :catch_10

    move-object/from16 v19, v9

    goto :goto_15

    :catch_8
    move-exception v0

    move-object v4, v0

    const/4 v13, 0x0

    goto :goto_1c

    :cond_1c
    move-object/from16 v19, v9

    const/4 v13, 0x0

    :goto_15
    const/4 v9, 0x7

    if-le v6, v9, :cond_1d

    const/4 v9, 0x7

    :try_start_f
    aget-object v9, v4, v9
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/Error; {:try_start_f .. :try_end_f} :catch_10

    move-object/from16 v20, v9

    goto :goto_16

    :catch_9
    move-exception v0

    move-object v4, v0

    move-object/from16 v9, v19

    goto :goto_1c

    :cond_1d
    const/16 v20, 0x0

    :goto_16
    const/16 v9, 0x8

    if-le v6, v9, :cond_1e

    const/16 v6, 0x8

    :try_start_10
    aget-object v4, v4, v6
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/lang/Error; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_17

    :catch_a
    move-exception v0

    move-object v4, v0

    move-object/from16 v9, v19

    goto :goto_1d

    :cond_1e
    const/4 v4, 0x0

    :goto_17
    move-object v6, v12

    move-object v9, v15

    move-object/from16 v15, v19

    move-object/from16 v19, v5

    move-object v12, v10

    move-object v10, v13

    const/4 v13, 0x1

    move-object v5, v4

    move-object v4, v11

    move-object/from16 v11, v20

    goto :goto_1e

    :catch_b
    move-exception v0

    move-object v4, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_18
    const/4 v11, 0x0

    :goto_19
    const/4 v12, 0x0

    :goto_1a
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1b
    const/4 v15, 0x0

    :goto_1c
    const/16 v20, 0x0

    :goto_1d
    :try_start_11
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    move-object/from16 v19, v5

    move-object v4, v11

    move-object v6, v12

    move-object/from16 v11, v20

    const/4 v5, 0x0

    move-object v12, v10

    move-object v10, v13

    const/4 v13, 0x0

    move-object/from16 v22, v15

    move-object v15, v9

    move-object/from16 v9, v22

    :goto_1e
    if-eqz v13, :cond_20

    new-instance v13, Lcom/baidu/location/Address$Builder;

    invoke-direct {v13}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v13, v10}, Lcom/baidu/location/Address$Builder;->country(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v10

    invoke-virtual {v10, v11}, Lcom/baidu/location/Address$Builder;->countryCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v10

    invoke-virtual {v10, v12}, Lcom/baidu/location/Address$Builder;->province(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/baidu/location/Address$Builder;->city(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/baidu/location/Address$Builder;->cityCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/baidu/location/Address$Builder;->district(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/baidu/location/Address$Builder;->street(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/baidu/location/Address$Builder;->streetNumber(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/baidu/location/Address$Builder;->adcode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/baidu/location/BDLocation;->o:Z

    goto :goto_1f

    :cond_1f
    move-object/from16 v19, v5

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/baidu/location/BDLocation;->o:Z

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/baidu/location/BDLocation;->setAddrStr(Ljava/lang/String;)V

    :cond_20
    :goto_1f
    move-object/from16 v4, v18

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_21

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    :cond_21
    move-object/from16 v4, v17

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_22

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/baidu/location/BDLocation;->setUserIndoorState(I)V

    :cond_22
    const-string v4, "loctp"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    const-string v4, "loctp"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    :cond_23
    const-string v4, "bldgid"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    const-string v4, "bldgid"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_24

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    :cond_24
    const-string v4, "bldg"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    const-string v4, "bldg"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_25

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    :cond_25
    const-string v4, "ibav"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    const-string v4, "ibav"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_26

    :goto_20
    const/4 v5, 0x0

    iput v5, v1, Lcom/baidu/location/BDLocation;->z:I

    goto :goto_21

    :cond_26
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    goto :goto_20

    :cond_27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Lcom/baidu/location/BDLocation;->z:I

    :cond_28
    :goto_21
    const-string v4, "indoorflags"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f
    .catch Ljava/lang/Error; {:try_start_11 .. :try_end_11} :catch_10

    if-eqz v4, :cond_2f

    :try_start_12
    const-string v4, "indoorflags"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "area"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    const-string v5, "area"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_29

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Lcom/baidu/location/BDLocation;->setIndoorLocationSurpport(I)V

    goto :goto_22

    :cond_29
    const/4 v6, 0x1

    if-ne v5, v6, :cond_2a

    invoke-virtual {v1, v6}, Lcom/baidu/location/BDLocation;->setIndoorLocationSurpport(I)V

    :cond_2a
    :goto_22
    const-string v5, "support"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b

    const-string v5, "support"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/baidu/location/BDLocation;->setIndoorLocationSource(I)V

    :cond_2b
    const-string v5, "inbldg"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    const-string v5, "inbldg"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    :cond_2c
    const-string v5, "inbldgid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    const-string v5, "inbldgid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/baidu/location/BDLocation;->J:Ljava/lang/String;

    :cond_2d
    const-string v5, "polygon"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    const-string v5, "polygon"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/baidu/location/BDLocation;->setIndoorSurpportPolygon(Ljava/lang/String;)V

    :cond_2e
    const-string v5, "ret_fields"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d
    .catch Ljava/lang/Error; {:try_start_12 .. :try_end_12} :catch_10

    if-eqz v5, :cond_2f

    :try_start_13
    const-string v5, "ret_fields"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_23
    if-ge v6, v5, :cond_2f

    aget-object v9, v4, v6

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v11, v9, v10

    const/4 v10, 0x1

    aget-object v9, v9, v10

    iget-object v10, v1, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    invoke-virtual {v10, v11, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c
    .catch Ljava/lang/Error; {:try_start_13 .. :try_end_13} :catch_10

    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :catch_c
    move-exception v0

    move-object v4, v0

    :try_start_14
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_d
    .catch Ljava/lang/Error; {:try_start_14 .. :try_end_14} :catch_10

    goto :goto_24

    :catch_d
    move-exception v0

    move-object v4, v0

    :try_start_15
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2f
    :goto_24
    const-string v4, "gpscs"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    const-string v4, "gpscs"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/baidu/location/BDLocation;->setGpsCheckStatus(I)V

    goto :goto_25

    :cond_30
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/baidu/location/BDLocation;->setGpsCheckStatus(I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_f
    .catch Ljava/lang/Error; {:try_start_15 .. :try_end_15} :catch_10

    :goto_25
    :try_start_16
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/location/BDLocation;->setLocationWhere(I)V

    goto :goto_26

    :cond_31
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/baidu/location/BDLocation;->setLocationWhere(I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_e
    .catch Ljava/lang/Error; {:try_start_16 .. :try_end_16} :catch_10

    :catch_e
    :goto_26
    :try_start_17
    iget v2, v1, Lcom/baidu/location/BDLocation;->A:I

    if-nez v2, :cond_32

    const-string v2, "wgs84"

    :goto_27
    invoke-virtual {v1, v2}, Lcom/baidu/location/BDLocation;->setCoorType(Ljava/lang/String;)V

    goto :goto_28

    :cond_32
    move-object/from16 v2, p1

    goto :goto_27

    :goto_28
    const-string v2, "navi"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, "navi"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    :cond_33
    const-string v2, "navi_client"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    const-string v2, "navi_client"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_f
    .catch Ljava/lang/Error; {:try_start_17 .. :try_end_17} :catch_10

    if-eqz v2, :cond_34

    :try_start_18
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    if-lez v4, :cond_34

    iput-boolean v5, v1, Lcom/baidu/location/BDLocation;->W:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto :goto_29

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_19
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_34
    :goto_29
    const-string v2, "nrl_point"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_f
    .catch Ljava/lang/Error; {:try_start_19 .. :try_end_19} :catch_10

    if-eqz v2, :cond_38

    :try_start_1a
    const-string v2, "nrl_point"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    move-object/from16 v4, v19

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/baidu/location/BDLocation;->U:D

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/location/BDLocation;->V:D
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    goto/16 :goto_2d

    :catchall_1
    const-wide/16 v2, 0x1

    :try_start_1b
    iput-wide v2, v1, Lcom/baidu/location/BDLocation;->U:D

    iput-wide v2, v1, Lcom/baidu/location/BDLocation;->V:D

    goto :goto_2d

    :cond_35
    move-object v4, v5

    move-object v2, v11

    const/16 v5, 0x42

    if-eq v8, v5, :cond_37

    const/16 v5, 0x44

    if-ne v8, v5, :cond_36

    goto :goto_2a

    :cond_36
    const/16 v2, 0xa7

    if-ne v8, v2, :cond_38

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/baidu/location/BDLocation;->setLocationWhere(I)V

    goto :goto_2d

    :cond_37
    :goto_2a
    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->setRadius(F)V

    const-string v3, "isCellChanged"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/baidu/location/BDLocation;->a(Ljava/lang/Boolean;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_f
    .catch Ljava/lang/Error; {:try_start_1b .. :try_end_1b} :catch_10

    goto/16 :goto_1

    :catch_f
    move-exception v0

    move-object v3, v0

    const/4 v2, 0x0

    goto :goto_2b

    :catch_10
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_2c

    :catch_11
    move-exception v0

    const/4 v2, 0x0

    move-object v3, v0

    :goto_2b
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2c
    iput v2, v1, Lcom/baidu/location/BDLocation;->a:I

    iput-boolean v2, v1, Lcom/baidu/location/BDLocation;->o:Z

    :cond_38
    :goto_2d
    return-void
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->t:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->adcode:Ljava/lang/String;

    return-object v0
.end method

.method public getAddrStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Lcom/baidu/location/Address;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    return-object v0
.end method

.method public getAltitude()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->f:D

    return-wide v0
.end method

.method public getBuildingID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildingName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->cityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCoorType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDelayTime()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->S:J

    return-wide v0
.end method

.method public getDerect()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/baidu/location/BDLocation;->m:F

    return v0
.end method

.method public getDirection()F
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->m:F

    return v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->district:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    instance-of v0, p1, Landroid/location/Location;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/location/Location;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFloor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getFusionLocInfo(Ljava/lang/String;)[D
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object p1

    return-object p1
.end method

.method public getGpsAccuracyStatus()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->Q:I

    return v0
.end method

.method public getGpsCheckStatus()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->R:I

    return v0
.end method

.method public getIndoorLocationSource()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->H:I

    return v0
.end method

.method public getIndoorLocationSurpport()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->F:I

    return v0
.end method

.method public getIndoorLocationSurpportBuidlingID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->J:Ljava/lang/String;

    return-object v0
.end method

.method public getIndoorLocationSurpportBuidlingName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    return-object v0
.end method

.method public getIndoorNetworkState()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->G:I

    return v0
.end method

.method public getIndoorSurpportPolygon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->K:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->c:D

    return-wide v0
.end method

.method public getLocType()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->a:I

    return v0
.end method

.method public getLocTypeDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->M:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationDescribe()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationWhere()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->A:I

    return v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->d:D

    return-wide v0
.end method

.method public getNetworkLocationType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    return-object v0
.end method

.method public getNrlLat()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->U:D

    return-wide v0
.end method

.method public getNrlLon()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->V:D

    return-wide v0
.end method

.method public getNrlResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    return-object v0
.end method

.method public getOperators()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->C:I

    return v0
.end method

.method public getPoiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/location/Poi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->j:F

    return v0
.end method

.method public getRetFields(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRoadLocString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->O:Ljava/lang/String;

    return-object v0
.end method

.method public getSatelliteNumber()I
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->k:Z

    iget v0, p0, Lcom/baidu/location/BDLocation;->l:I

    return v0
.end method

.method public getSemaAptag()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->h:F

    return v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->street:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->streetNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIndoorState()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->E:I

    return v0
.end method

.method public getVdrJsonString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "vdr"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasAddr()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->o:Z

    return v0
.end method

.method public hasAltitude()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->e:Z

    return v0
.end method

.method public hasRadius()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->i:Z

    return v0
.end method

.method public hasSateNumber()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->k:Z

    return v0
.end method

.method public hasSpeed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->g:Z

    return v0
.end method

.method public isCellChangeFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->t:Z

    return v0
.end method

.method public isInIndoorPark()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->W:Z

    return v0
.end method

.method public isIndoorLocMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->y:Z

    return v0
.end method

.method public isNrlAvailable()Z
    .locals 5

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->V:D

    const-wide/16 v2, 0x1

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->U:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isParkAvailable()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->z:I

    return v0
.end method

.method public setAddr(Lcom/baidu/location/Address;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->o:Z

    :cond_0
    return-void
.end method

.method public setAddrStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->p:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->o:Z

    return-void
.end method

.method public setAltitude(D)V
    .locals 3

    const-wide v0, 0x40c3878000000000L    # 9999.0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->f:D

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->e:Z

    :cond_0
    return-void
.end method

.method public setBuildingID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    return-void
.end method

.method public setBuildingName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    return-void
.end method

.method public setCoorType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->n:Ljava/lang/String;

    return-void
.end method

.method public setDelayTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->S:J

    return-void
.end method

.method public setDirection(F)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->m:F

    return-void
.end method

.method public setExtraLocation(Ljava/lang/String;Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public setFloor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    return-void
.end method

.method public setFusionLocInfo(Ljava/lang/String;[D)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    return-void
.end method

.method public setGpsAccuracyStatus(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->Q:I

    return-void
.end method

.method public setGpsCheckStatus(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->R:I

    return-void
.end method

.method public setIndoorLocMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->y:Z

    return-void
.end method

.method public setIndoorLocationSource(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->H:I

    return-void
.end method

.method public setIndoorLocationSurpport(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->F:I

    return-void
.end method

.method public setIndoorNetworkState(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->G:I

    return-void
.end method

.method public setIndoorSurpportPolygon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->K:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->c:D

    return-void
.end method

.method public setLocType(I)V
    .locals 1

    iput p1, p0, Lcom/baidu/location/BDLocation;->a:I

    const/16 v0, 0x42

    if-eq p1, v0, :cond_5

    const/16 v0, 0x43

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa1

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f9

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string p1, "UnKnown!"

    goto :goto_0

    :pswitch_0
    const-string p1, "Location failed beacuse we can not get any loc information!"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/baidu/location/BDLocation;->setLocTypeDescription(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const-string p1, "GPS location successful!"

    invoke-virtual {p0, p1}, Lcom/baidu/location/BDLocation;->setLocTypeDescription(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/baidu/location/BDLocation;->setUserIndoorState(I)V

    goto :goto_1

    :cond_0
    const-string p1, "NetWork location failed because baidu location service check the key is unlegal, please check the key in AndroidManifest.xml !"

    goto :goto_0

    :cond_1
    const-string p1, "NetWork location failed because baidu location service can not caculate the location!"

    goto :goto_0

    :cond_2
    const-string p1, "NetWork location failed because baidu location service can not decrypt the request query, please check the so file !"

    goto :goto_0

    :cond_3
    const-string p1, "NetWork location successful!"

    goto :goto_0

    :cond_4
    :pswitch_2
    const-string p1, "Offline location failed, please check the net (wifi/cell)!"

    goto :goto_0

    :cond_5
    const-string p1, "Offline location successful!"

    goto :goto_0

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setLocTypeDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->M:Ljava/lang/String;

    return-void
.end method

.method public setLocationDescribe(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    return-void
.end method

.method public setLocationID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    return-void
.end method

.method public setLocationWhere(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->A:I

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->d:D

    return-void
.end method

.method public setNetworkLocationType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    return-void
.end method

.method public setNrlData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    return-void
.end method

.method public setOperators(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->C:I

    return-void
.end method

.method public setParkAvailable(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->z:I

    return-void
.end method

.method public setPoiList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/location/Poi;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->j:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->i:Z

    return-void
.end method

.method public setRetFields(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRoadLocString(FF)V
    .locals 9

    float-to-double v0, p1

    const-string v2, "%.2f"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, ""

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v8, v0, v6

    if-lez v8, :cond_0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v5

    :goto_0
    float-to-double v0, p2

    cmpl-double v8, v0, v6

    if-lez v8, :cond_1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :cond_1
    iget-object p2, p0, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    if-eqz p2, :cond_2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    aput-object p1, v1, v4

    const/4 p1, 0x2

    aput-object v5, v1, p1

    const-string p1, "%s|%s,%s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->O:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public setSatelliteNumber(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->l:I

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->h:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->g:Z

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/baidu/location/e/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/location/BDLocation;->setLocationID(Ljava/lang/String;)V

    return-void
.end method

.method public setUserIndoorState(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->E:I

    return-void
.end method

.method public setVdrJsonValue(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    const-string v1, "vdr"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lcom/baidu/location/BDLocation;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->c:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->d:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->f:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget p2, p0, Lcom/baidu/location/BDLocation;->h:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/baidu/location/BDLocation;->j:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/baidu/location/BDLocation;->l:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/baidu/location/BDLocation;->m:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/baidu/location/BDLocation;->z:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->x:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object p2, p2, Lcom/baidu/location/Address;->province:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object p2, p2, Lcom/baidu/location/Address;->city:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object p2, p2, Lcom/baidu/location/Address;->district:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object p2, p2, Lcom/baidu/location/Address;->street:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object p2, p2, Lcom/baidu/location/Address;->streetNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object p2, p2, Lcom/baidu/location/Address;->cityCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object p2, p2, Lcom/baidu/location/Address;->address:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object p2, p2, Lcom/baidu/location/Address;->country:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object p2, p2, Lcom/baidu/location/Address;->countryCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->u:Lcom/baidu/location/Address;

    iget-object p2, p2, Lcom/baidu/location/Address;->adcode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/baidu/location/BDLocation;->C:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->D:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->s:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/baidu/location/BDLocation;->A:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->M:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/baidu/location/BDLocation;->E:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/baidu/location/BDLocation;->F:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/baidu/location/BDLocation;->G:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/baidu/location/BDLocation;->H:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->J:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->K:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/baidu/location/BDLocation;->Q:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/baidu/location/BDLocation;->R:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->O:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->S:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->U:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->V:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    const/16 p2, 0x8

    new-array p2, p2, [Z

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/baidu/location/BDLocation;->e:Z

    aput-boolean v1, p2, v0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/baidu/location/BDLocation;->g:Z

    aput-boolean v1, p2, v0

    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/baidu/location/BDLocation;->i:Z

    aput-boolean v1, p2, v0

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/baidu/location/BDLocation;->k:Z

    aput-boolean v1, p2, v0

    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/baidu/location/BDLocation;->o:Z

    aput-boolean v1, p2, v0

    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/baidu/location/BDLocation;->t:Z

    aput-boolean v1, p2, v0

    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/baidu/location/BDLocation;->y:Z

    aput-boolean v1, p2, v0

    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/baidu/location/BDLocation;->W:Z

    aput-boolean v1, p2, v0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->L:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/baidu/location/BDLocation;->P:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
