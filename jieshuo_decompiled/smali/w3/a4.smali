.class public Lw3/a4;
.super Lw3/b0;
.source "SourceFile"


# instance fields
.field private i:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrapped "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lw3/b0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lw3/a4;->i:Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    aput v0, p1, v0

    invoke-static {p1}, Lw3/m;->B([I)Ljava/lang/String;

    move-result-object v1

    aget p1, p1, v0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lw3/s2;->h(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lw3/s2;->f(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public m()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lw3/a4;->i:Ljava/lang/Throwable;

    return-object v0
.end method
