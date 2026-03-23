.class public final enum Lz0/c$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz0/c$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lz0/c$b;

.field public static final enum d:Lz0/c$b;

.field public static final enum e:Lz0/c$b;

.field public static final enum f:Lz0/c$b;

.field public static final enum g:Lz0/c$b;

.field public static final enum h:Lz0/c$b;

.field public static final enum i:Lz0/c$b;

.field public static final enum j:Lz0/c$b;

.field public static final enum k:Lz0/c$b;

.field public static final enum l:Lz0/c$b;

.field public static final enum m:Lz0/c$b;

.field private static final synthetic n:[Lz0/c$b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lz0/c$b;

    const-string v1, "id"

    const-string v2, "integer primary key"

    const-string v3, "ID"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lz0/c$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lz0/c$b;->c:Lz0/c$b;

    new-instance v1, Lz0/c$b;

    const-string v2, "TEXT_DATA_ID"

    const/4 v3, 0x1

    const-string v5, "text_data_id"

    const-string v6, "integer"

    invoke-direct {v1, v2, v3, v5, v6}, Lz0/c$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lz0/c$b;->d:Lz0/c$b;

    new-instance v2, Lz0/c$b;

    const-string v5, "speech_data_id"

    const-string v7, "SPEECH_DATA_ID"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v6}, Lz0/c$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lz0/c$b;->e:Lz0/c$b;

    new-instance v5, Lz0/c$b;

    const-string v7, "name"

    const-string v9, "varchar(256) not null default unnamed"

    const-string v10, "NAME"

    const/4 v11, 0x3

    invoke-direct {v5, v10, v11, v7, v9}, Lz0/c$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lz0/c$b;->f:Lz0/c$b;

    new-instance v7, Lz0/c$b;

    const-string v9, "version_min"

    const-string v10, "VERSION_MIN"

    const/4 v12, 0x4

    invoke-direct {v7, v10, v12, v9, v6}, Lz0/c$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lz0/c$b;->g:Lz0/c$b;

    new-instance v9, Lz0/c$b;

    const-string v10, "version_max"

    const-string v13, "VERSION_MAX"

    const/4 v14, 0x5

    invoke-direct {v9, v13, v14, v10, v6}, Lz0/c$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lz0/c$b;->h:Lz0/c$b;

    new-instance v6, Lz0/c$b;

    const-string v10, "LANGUAGE"

    const/4 v13, 0x6

    const-string v15, "language"

    const-string v14, "varchar(20)"

    invoke-direct {v6, v10, v13, v15, v14}, Lz0/c$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lz0/c$b;->i:Lz0/c$b;

    new-instance v10, Lz0/c$b;

    const-string v15, "gender"

    const-string v13, "GENDER"

    const/4 v12, 0x7

    invoke-direct {v10, v13, v12, v15, v14}, Lz0/c$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lz0/c$b;->j:Lz0/c$b;

    new-instance v13, Lz0/c$b;

    const-string v14, "speaker"

    const-string v15, "varchar(256)"

    const-string v12, "SPEAKER"

    const/16 v11, 0x8

    invoke-direct {v13, v12, v11, v14, v15}, Lz0/c$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lz0/c$b;->k:Lz0/c$b;

    new-instance v12, Lz0/c$b;

    const-string v14, "DOMAIN"

    const/16 v15, 0x9

    const-string v11, "domain"

    const-string v8, "varchar(50)"

    invoke-direct {v12, v14, v15, v11, v8}, Lz0/c$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lz0/c$b;->l:Lz0/c$b;

    new-instance v11, Lz0/c$b;

    const-string v14, "quality"

    const-string v15, "QUALITY"

    const/16 v3, 0xa

    invoke-direct {v11, v15, v3, v14, v8}, Lz0/c$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lz0/c$b;->m:Lz0/c$b;

    const/16 v8, 0xb

    new-array v8, v8, [Lz0/c$b;

    aput-object v0, v8, v4

    const/4 v0, 0x1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    aput-object v2, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v6, v8, v0

    const/4 v0, 0x7

    aput-object v10, v8, v0

    const/16 v0, 0x8

    aput-object v13, v8, v0

    const/16 v0, 0x9

    aput-object v12, v8, v0

    aput-object v11, v8, v3

    sput-object v8, Lz0/c$b;->n:[Lz0/c$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lz0/c$b;->a:Ljava/lang/String;

    iput-object p4, p0, Lz0/c$b;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lz0/c$b;
    .locals 1

    const-class v0, Lz0/c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz0/c$b;

    return-object p0
.end method

.method public static values()[Lz0/c$b;
    .locals 1

    sget-object v0, Lz0/c$b;->n:[Lz0/c$b;

    invoke-virtual {v0}, [Lz0/c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz0/c$b;

    return-object v0
.end method
