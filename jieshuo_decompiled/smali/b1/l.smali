.class public final enum Lb1/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb1/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lb1/l;

.field public static final enum d:Lb1/l;

.field public static final enum e:Lb1/l;

.field public static final enum f:Lb1/l;

.field private static final synthetic g:[Lb1/l;


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v7, Lb1/l;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    const-wide/16 v3, 0x6

    const-wide/16 v5, 0x1770

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lb1/l;-><init>(Ljava/lang/String;IJJ)V

    sput-object v7, Lb1/l;->c:Lb1/l;

    new-instance v0, Lb1/l;

    const-string v9, "TWO_SECOND"

    const/4 v10, 0x1

    const-wide/16 v11, 0x2

    const-wide/16 v13, 0x7d0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lb1/l;-><init>(Ljava/lang/String;IJJ)V

    sput-object v0, Lb1/l;->d:Lb1/l;

    new-instance v1, Lb1/l;

    const-string v16, "THREE_SECOND"

    const/16 v17, 0x2

    const-wide/16 v18, 0x3

    const-wide/16 v20, 0xbb8

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lb1/l;-><init>(Ljava/lang/String;IJJ)V

    sput-object v1, Lb1/l;->e:Lb1/l;

    new-instance v2, Lb1/l;

    const-string v9, "FOUR_SECOND"

    const/4 v10, 0x3

    const-wide/16 v11, 0x4

    const-wide/16 v13, 0xfa0

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lb1/l;-><init>(Ljava/lang/String;IJJ)V

    sput-object v2, Lb1/l;->f:Lb1/l;

    const/4 v3, 0x4

    new-array v3, v3, [Lb1/l;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object v2, v3, v0

    sput-object v3, Lb1/l;->g:[Lb1/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lb1/l;->a:J

    iput-wide p5, p0, Lb1/l;->b:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb1/l;
    .locals 1

    const-class v0, Lb1/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb1/l;

    return-object p0
.end method

.method public static values()[Lb1/l;
    .locals 1

    sget-object v0, Lb1/l;->g:[Lb1/l;

    invoke-virtual {v0}, [Lb1/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb1/l;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lb1/l;->b:J

    return-wide v0
.end method

.method public b()I
    .locals 2

    invoke-virtual {p0}, Lb1/l;->a()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method
