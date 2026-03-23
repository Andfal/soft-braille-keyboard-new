.class public final Lo/r;
.super Lo/b0;
.source "SourceFile"


# instance fields
.field private final e:Lu/n;


# direct methods
.method public constructor <init>(Lu/u;Lu/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/b0;-><init>(Lu/u;)V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lo/r;->e:Lu/n;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "local == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static y(Lu/n;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lu/n;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/n;->j()Lu/h;

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/r;->e:Lu/n;

    invoke-virtual {v0}, Lu/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected q(Z)Ljava/lang/String;
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "local-start "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/r;->e:Lu/n;

    invoke-static {v0}, Lo/r;->y(Lu/n;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public u(I)Lo/h;
    .locals 3

    new-instance v0, Lo/r;

    invoke-virtual {p0}, Lo/h;->k()Lu/u;

    move-result-object v1

    iget-object v2, p0, Lo/r;->e:Lu/n;

    invoke-virtual {v2, p1}, Lu/n;->v(I)Lu/n;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lo/r;-><init>(Lu/u;Lu/n;)V

    return-object v0
.end method

.method public v(Lu/p;)Lo/h;
    .locals 2

    new-instance p1, Lo/r;

    invoke-virtual {p0}, Lo/h;->k()Lu/u;

    move-result-object v0

    iget-object v1, p0, Lo/r;->e:Lu/n;

    invoke-direct {p1, v0, v1}, Lo/r;-><init>(Lu/u;Lu/n;)V

    return-object p1
.end method

.method public x()Lu/n;
    .locals 1

    iget-object v0, p0, Lo/r;->e:Lu/n;

    return-object v0
.end method
