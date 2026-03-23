.class public final Lv/m;
.super Lv/p;
.source "SourceFile"


# static fields
.field public static final a:Lv/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv/m;

    invoke-direct {v0}, Lv/m;-><init>()V

    sput-object v0, Lv/m;->a:Lv/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lv/p;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "null"

    return-object v0
.end method

.method protected e(Lv/a;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lv/m;

    return p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "known-null"

    return-object v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getType()Lw/c;
    .locals 1

    sget-object v0, Lw/c;->r:Lw/c;

    return-object v0
.end method

.method public h()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    const v0, 0x4466757a

    return v0
.end method

.method public i()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "known-null"

    return-object v0
.end method
