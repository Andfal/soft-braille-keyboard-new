.class public abstract Lc4/b;
.super Lw3/n0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw3/n0;-><init>()V

    return-void
.end method


# virtual methods
.method public I0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lw3/a3;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "undefined"

    goto :goto_0

    :cond_0
    const-string v0, "xml"

    :goto_0
    return-object v0
.end method

.method public I1(Lw3/m;ZLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p1, Lw3/z2;->a0:Ljava/lang/Object;

    return-object p1
.end method

.method public abstract J1(Lw3/z2;)Lw3/f2;
.end method

.method public abstract K1(Lw3/z2;)Lw3/f2;
.end method

.method public abstract L1(Lw3/m;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract M1(Lw3/m;Ljava/lang/Object;)Z
.end method

.method public abstract N1(Lw3/m;Ljava/lang/Object;I)Lw3/o2;
.end method

.method public abstract O1(Lw3/m;Ljava/lang/Object;Ljava/lang/Object;I)Lw3/o2;
.end method

.method public abstract P1(Lw3/m;Ljava/lang/Object;Ljava/lang/Object;)V
.end method
