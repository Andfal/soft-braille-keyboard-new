.class public abstract Ly2/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly2/b0$a;
    }
.end annotation


# static fields
.field public static final Companion:Ly2/b0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly2/b0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly2/b0$a;-><init>(Lt2/d;)V

    sput-object v0, Ly2/b0;->Companion:Ly2/b0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final create(Ljava/io/File;Ly2/y;)Ly2/b0;
    .locals 1

    sget-object v0, Ly2/b0;->Companion:Ly2/b0$a;

    invoke-virtual {v0, p0, p1}, Ly2/b0$a;->a(Ljava/io/File;Ly2/y;)Ly2/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Ljava/lang/String;Ly2/y;)Ly2/b0;
    .locals 1

    sget-object v0, Ly2/b0;->Companion:Ly2/b0$a;

    invoke-virtual {v0, p0, p1}, Ly2/b0$a;->b(Ljava/lang/String;Ly2/y;)Ly2/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lm3/h;Ly2/y;)Ly2/b0;
    .locals 1

    sget-object v0, Ly2/b0;->Companion:Ly2/b0$a;

    invoke-virtual {v0, p0, p1}, Ly2/b0$a;->c(Lm3/h;Ly2/y;)Ly2/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Ly2/y;Ljava/io/File;)Ly2/b0;
    .locals 1

    sget-object v0, Ly2/b0;->Companion:Ly2/b0$a;

    invoke-virtual {v0, p0, p1}, Ly2/b0$a;->d(Ly2/y;Ljava/io/File;)Ly2/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Ly2/y;Ljava/lang/String;)Ly2/b0;
    .locals 1

    sget-object v0, Ly2/b0;->Companion:Ly2/b0$a;

    invoke-virtual {v0, p0, p1}, Ly2/b0$a;->e(Ly2/y;Ljava/lang/String;)Ly2/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Ly2/y;Lm3/h;)Ly2/b0;
    .locals 1

    sget-object v0, Ly2/b0;->Companion:Ly2/b0$a;

    invoke-virtual {v0, p0, p1}, Ly2/b0$a;->f(Ly2/y;Lm3/h;)Ly2/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Ly2/y;[B)Ly2/b0;
    .locals 7

    sget-object v0, Ly2/b0;->Companion:Ly2/b0$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Ly2/b0$a;->j(Ly2/b0$a;Ly2/y;[BIIILjava/lang/Object;)Ly2/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Ly2/y;[BI)Ly2/b0;
    .locals 7

    sget-object v0, Ly2/b0;->Companion:Ly2/b0$a;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v6}, Ly2/b0$a;->j(Ly2/b0$a;Ly2/y;[BIIILjava/lang/Object;)Ly2/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Ly2/y;[BII)Ly2/b0;
    .locals 1

    sget-object v0, Ly2/b0;->Companion:Ly2/b0$a;

    invoke-virtual {v0, p0, p1, p2, p3}, Ly2/b0$a;->g(Ly2/y;[BII)Ly2/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final create([B)Ly2/b0;
    .locals 7

    sget-object v0, Ly2/b0;->Companion:Ly2/b0$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Ly2/b0$a;->k(Ly2/b0$a;[BLy2/y;IIILjava/lang/Object;)Ly2/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final create([BLy2/y;)Ly2/b0;
    .locals 7

    sget-object v0, Ly2/b0;->Companion:Ly2/b0$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Ly2/b0$a;->k(Ly2/b0$a;[BLy2/y;IIILjava/lang/Object;)Ly2/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final create([BLy2/y;I)Ly2/b0;
    .locals 7

    sget-object v0, Ly2/b0;->Companion:Ly2/b0$a;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v6}, Ly2/b0$a;->k(Ly2/b0$a;[BLy2/y;IIILjava/lang/Object;)Ly2/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final create([BLy2/y;II)Ly2/b0;
    .locals 1

    sget-object v0, Ly2/b0;->Companion:Ly2/b0$a;

    invoke-virtual {v0, p0, p1, p2, p3}, Ly2/b0$a;->h([BLy2/y;II)Ly2/b0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract contentType()Ly2/y;
.end method

.method public isDuplex()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOneShot()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract writeTo(Lm3/f;)V
.end method
