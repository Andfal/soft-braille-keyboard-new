.class public Lcom/reecedunn/espeak/preference/VoiceVariantPreference;
.super Landroid/preference/DialogPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantDataListAdapter;,
        Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;,
        Lcom/reecedunn/espeak/preference/VoiceVariantPreference$ViewHolder;
    }
.end annotation


# instance fields
.field private categories:[Ljava/lang/Integer;

.field private mCategory:Landroid/widget/Spinner;

.field private mCategoryIndex:I

.field private mVariant:Landroid/widget/Spinner;

.field private mVariantIndex:I

.field private variants:[[Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->mCategoryIndex:I

    iput v1, v0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->mVariantIndex:I

    const/16 v2, 0x8

    new-array v3, v2, [Ljava/lang/Integer;

    const v4, 0x7f0708e6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    const v5, 0x7f0708d4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v6, v3, v7

    const v6, 0x7f0708e3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v6, v3, v9

    const v6, 0x7f0708f3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v11, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v6, v3, v11

    const v6, 0x7f070911

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v13, 0x4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v6, v3, v13

    const v6, 0x7f0708f4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v15, 0x5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v6, v3, v15

    const v6, 0x7f0708cb

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v6, v3, v4

    const v6, 0x7f070910

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v16, 0x7

    aput-object v6, v3, v16

    iput-object v3, v0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->categories:[Ljava/lang/Integer;

    new-array v3, v2, [[Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const/16 v6, 0x9

    new-array v2, v6, [Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    new-instance v6, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const-string v4, "male"

    const v13, 0x7f0708cd

    invoke-direct {v6, v0, v13, v4}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    aput-object v6, v2, v1

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const-string v6, "m1"

    const v13, 0x7f0708f0

    invoke-direct {v4, v0, v13, v8, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v2, v7

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const-string v6, "m2"

    invoke-direct {v4, v0, v13, v10, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v2, v9

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const-string v6, "m3"

    invoke-direct {v4, v0, v13, v12, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v2, v11

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const-string v6, "m4"

    invoke-direct {v4, v0, v13, v14, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    aput-object v4, v2, v6

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const-string v6, "m5"

    invoke-direct {v4, v0, v13, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x5

    aput-object v4, v2, v6

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const-string v6, "m6"

    invoke-direct {v4, v0, v13, v15, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x6

    aput-object v4, v2, v6

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v11, "m7"

    invoke-direct {v4, v0, v13, v6, v11}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v2, v16

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v9, "m8"

    invoke-direct {v4, v0, v13, v11, v9}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v2, v6

    aput-object v2, v3, v1

    const/4 v2, 0x6

    new-array v4, v2, [Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    new-instance v2, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const-string v6, "female"

    const v9, 0x7f0708cd

    invoke-direct {v2, v0, v9, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    aput-object v2, v4, v1

    new-instance v2, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const-string v6, "f1"

    invoke-direct {v2, v0, v13, v8, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v4, v7

    new-instance v2, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const-string v6, "f2"

    invoke-direct {v2, v0, v13, v10, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    aput-object v2, v4, v6

    new-instance v2, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const-string v6, "f3"

    invoke-direct {v2, v0, v13, v12, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x3

    aput-object v2, v4, v6

    new-instance v2, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const-string v6, "f4"

    invoke-direct {v2, v0, v13, v14, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    aput-object v2, v4, v6

    new-instance v2, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const-string v6, "f5"

    invoke-direct {v2, v0, v13, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x5

    aput-object v2, v4, v6

    aput-object v4, v3, v7

    const/4 v2, 0x6

    new-array v4, v2, [Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    new-instance v2, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const-string v6, "klatt"

    invoke-direct {v2, v0, v13, v8, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v4, v1

    new-instance v2, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const-string v6, "klatt2"

    invoke-direct {v2, v0, v13, v10, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v4, v7

    new-instance v2, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const-string v6, "klatt3"

    invoke-direct {v2, v0, v13, v12, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    aput-object v2, v4, v6

    new-instance v2, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const-string v6, "klatt4"

    invoke-direct {v2, v0, v13, v14, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x3

    aput-object v2, v4, v6

    new-instance v2, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const-string v6, "klatt5"

    invoke-direct {v2, v0, v13, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    aput-object v2, v4, v5

    new-instance v2, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const-string v5, "klatt6"

    invoke-direct {v2, v0, v13, v15, v5}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x5

    aput-object v2, v4, v5

    const/4 v2, 0x2

    aput-object v4, v3, v2

    const/16 v2, 0x50

    new-array v2, v2, [Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708bb

    const-string v6, "adam"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    aput-object v4, v2, v1

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708bc

    const-string v6, "Alex"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    aput-object v4, v2, v7

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708bd

    const-string v6, "Alicia"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/4 v5, 0x2

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708bf

    const-string v6, "Andy"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/4 v5, 0x3

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708be

    const-string v6, "Andrea"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/4 v5, 0x4

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708c0

    const-string v6, "anika"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/4 v5, 0x5

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708c1

    const-string v6, "anikaRobot"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/4 v5, 0x6

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708c2

    const-string v6, "Annie"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    aput-object v4, v2, v16

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708c3

    const-string v6, "anouncer"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x8

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708c4

    const-string v6, "antonio"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x9

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708c5

    const-string v6, "AnxiousAndy"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0xa

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708c6

    const-string v6, "aunty"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0xb

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708c7

    const-string v6, "belinda"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0xc

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708c8

    const-string v6, "benjamin"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0xd

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708c9

    const-string v6, "boris"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0xe

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708ca

    const-string v6, "caleb"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0xf

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708cc

    const-string v6, "david"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x10

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708ce

    const-string v6, "Demonic"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x11

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708cf

    const-string v6, "Denis"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x12

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708d0

    const-string v6, "Diogo"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x13

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708d1

    const-string v6, "ed"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x14

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708d2

    const-string v6, "edward"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x15

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708d3

    const-string v6, "edward2"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x16

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708d5

    const-string v6, "Gene"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x17

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708d6

    const-string v6, "Gene2"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x18

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708d7

    const-string v6, "grandma"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x19

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708d8

    const-string v6, "grandpa"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x1a

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708d9

    const-string v6, "gustave"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x1b

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708da

    const-string v6, "Henrique"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x1c

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708db

    const-string v6, "Hugo"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x1d

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708dc

    const-string v6, "iven"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x1e

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708dd

    const-string v6, "iven2"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x1f

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708de

    const-string v6, "iven3"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x20

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708df

    const-string v6, "iven4"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x21

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708e0

    const-string v6, "Jacky"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x22

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708e1

    const-string v6, "john"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x23

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708e2

    const-string v6, "kaukovalta"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x24

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708e4

    const-string v6, "Lee"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x25

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708e5

    const-string v6, "linda"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x26

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708e7

    const-string v6, "Marcelo"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x27

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708e8

    const-string v6, "Marco"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x28

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708e9

    const-string v6, "Mario"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x29

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708ea

    const-string v6, "max"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x2a

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708ed

    const-string v6, "miguel"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x2b

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708eb

    const-string v6, "Michael"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x2c

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708ec

    const-string v6, "michel"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x2d

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708ee

    const-string v6, "Mike"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x2e

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708ef

    const-string v6, "Mr serious"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x2f

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708f1

    const-string v6, "Nguyen"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x30

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708f2

    const-string v6, "norbert"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x31

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708f5

    const-string v6, "pablo"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x32

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708f6

    const-string v6, "paul"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x33

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708f7

    const-string v6, "pedro"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x34

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708f8

    const-string v6, "quincy"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x35

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708f9

    const-string v6, "RicishayMax"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x36

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708fa

    const-string v6, "RicishayMax2"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x37

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708fb

    const-string v6, "RicishayMax3"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x38

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708fc

    const-string v6, "rob"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x39

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708fd

    const-string v6, "robert"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x3a

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708fe

    const-string v6, "robosoft"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x3b

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f0708ff

    const-string v6, "robosoft2"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x3c

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f070900

    const-string v6, "robosoft3"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v8, 0x3d

    aput-object v4, v2, v8

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v8, 0x7f070901

    const-string v9, "robosoft4"

    invoke-direct {v4, v0, v8, v9}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v10, 0x3e

    aput-object v4, v2, v10

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x3f

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    invoke-direct {v4, v0, v8, v9}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x40

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f070902

    const-string v6, "robosoft5"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x41

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f070903

    const-string v6, "robosoft6"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x42

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f070904

    const-string v6, "robosoft7"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x43

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f070905

    const-string v6, "robosoft8"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x44

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f070906

    const-string v6, "sandro"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x45

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f070907

    const-string v6, "shelby"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x46

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f070908

    const-string v6, "steph"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x47

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f070909

    const-string v6, "steph2"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x48

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f07090a

    const-string v6, "steph3"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x49

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f07090b

    const-string v6, "Storm"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x4a

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f07090c

    const-string v6, "travis"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x4b

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f07090d

    const-string v6, "Tweaky"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x4c

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f07090e

    const-string v6, "UniRobot"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x4d

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f07090f

    const-string v6, "victor"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x4e

    aput-object v4, v2, v5

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v5, 0x7f070912

    const-string v6, "zac"

    invoke-direct {v4, v0, v5, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    const/16 v5, 0x4f

    aput-object v4, v2, v5

    const/4 v4, 0x3

    aput-object v2, v3, v4

    const/4 v2, 0x2

    new-array v4, v2, [Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    new-instance v5, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const-string v6, "male-young"

    const v8, 0x7f0708e6

    invoke-direct {v5, v0, v8, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    aput-object v5, v4, v1

    new-instance v5, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const-string v6, "female-young"

    const v9, 0x7f0708d4

    invoke-direct {v5, v0, v9, v6}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    aput-object v5, v4, v7

    const/4 v5, 0x4

    aput-object v4, v3, v5

    new-array v4, v2, [Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    new-instance v2, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const-string v5, "male-old"

    invoke-direct {v2, v0, v8, v5}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    aput-object v2, v4, v1

    new-instance v2, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const-string v5, "female-old"

    invoke-direct {v2, v0, v9, v5}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    aput-object v2, v4, v7

    const/4 v2, 0x5

    aput-object v4, v3, v2

    new-array v2, v7, [Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const-string v5, "croak"

    invoke-direct {v4, v0, v8, v5}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    aput-object v4, v2, v1

    const/4 v4, 0x6

    aput-object v2, v3, v4

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    new-instance v4, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const-string v5, "whisper"

    invoke-direct {v4, v0, v8, v5}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    aput-object v4, v2, v1

    new-instance v1, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const-string v4, "whisperf"

    const v5, 0x7f0708d4

    invoke-direct {v1, v0, v5, v4}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;ILjava/lang/String;)V

    aput-object v1, v2, v7

    aput-object v2, v3, v16

    iput-object v3, v0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->variants:[[Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    const v1, 0x7f05000a

    invoke-virtual {v0, v1}, Landroid/preference/DialogPreference;->setDialogLayoutResource(I)V

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/preference/DialogPreference;->setPositiveButtonText(I)V

    const v1, 0x7f070095

    invoke-virtual {v0, v1}, Landroid/preference/DialogPreference;->setNegativeButtonText(I)V

    return-void
.end method

.method static bridge synthetic a(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->mVariant:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;)[[Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;
    .locals 0

    iget-object p0, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->variants:[[Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;I)V
    .locals 0

    iput p1, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->mCategoryIndex:I

    return-void
.end method

.method static bridge synthetic d(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;I)V
    .locals 0

    iput p1, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->mVariantIndex:I

    return-void
.end method

.method private onDataChanged()V
    .locals 4

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->categories:[Ljava/lang/Integer;

    iget v2, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->mCategoryIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->variants:[[Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    iget v3, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->mCategoryIndex:I

    aget-object v2, v2, v3

    iget v3, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->mVariantIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;->getDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string v0, "%s (%s)"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    iget p1, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->mCategoryIndex:I

    iget v0, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->mVariantIndex:I

    iget-object v1, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->mCategory:Landroid/widget/Spinner;

    new-instance v2, Lcom/reecedunn/espeak/ResourceIdListAdapter;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    iget-object v4, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->categories:[Ljava/lang/Integer;

    invoke-direct {v2, v3, v4}, Lcom/reecedunn/espeak/ResourceIdListAdapter;-><init>(Landroid/app/Activity;[Ljava/lang/Integer;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->mCategory:Landroid/widget/Spinner;

    new-instance v2, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$1;

    invoke-direct {v2, p0, v0}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$1;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;I)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->mVariant:Landroid/widget/Spinner;

    new-instance v1, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$2;

    invoke-direct {v1, p0}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$2;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->mCategory:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->onDataChanged()V

    invoke-virtual {p0}, Landroid/preference/Preference;->shouldCommit()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/preference/Preference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->variants:[[Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    iget v2, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->mCategoryIndex:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->mVariantIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;->getVariant()Lcom/reecedunn/espeak/VoiceVariant;

    move-result-object v1

    const-string v2, "espeak_variant"

    invoke-virtual {v1}, Lcom/reecedunn/espeak/VoiceVariant;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 2

    invoke-super {p0}, Landroid/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f04001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->mCategory:Landroid/widget/Spinner;

    const v1, 0x7f040038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->mVariant:Landroid/widget/Spinner;

    return-object v0
.end method

.method public setVoiceVariant(Lcom/reecedunn/espeak/VoiceVariant;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->variants:[[Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    const/4 v3, 0x0

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    aget-object v4, v2, v3

    invoke-virtual {v4}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;->getVariant()Lcom/reecedunn/espeak/VoiceVariant;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/reecedunn/espeak/VoiceVariant;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput v1, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->mCategoryIndex:I

    iput v3, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->mVariantIndex:I

    invoke-direct {p0}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->onDataChanged()V

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->onDataChanged()V

    return-void
.end method
