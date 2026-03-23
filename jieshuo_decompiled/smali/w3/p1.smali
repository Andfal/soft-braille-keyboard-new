.class public Lw3/p1;
.super Lw3/c;
.source "SourceFile"


# instance fields
.field p:Lw3/x0;


# direct methods
.method public constructor <init>(Lw3/x0;)V
    .locals 0

    invoke-direct {p0}, Lw3/c;-><init>()V

    iput-object p1, p0, Lw3/p1;->p:Lw3/x0;

    return-void
.end method


# virtual methods
.method public N1()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lw3/p1;->p:Lw3/x0;

    iget-object v0, v0, Lw3/x0;->b:[Ljava/lang/Class;

    invoke-static {v0}, Lw3/t0;->p([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p3, p0, Lw3/p1;->p:Lw3/x0;

    invoke-static {p1, p2, p4, p3}, Lw3/o1;->J(Lw3/m;Lw3/z2;[Ljava/lang/Object;Lw3/x0;)Lw3/z2;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[JavaConstructor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw3/p1;->p:Lw3/x0;

    invoke-virtual {v1}, Lw3/x0;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
