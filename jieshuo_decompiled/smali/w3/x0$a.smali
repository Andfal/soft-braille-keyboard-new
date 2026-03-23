.class Lw3/x0$a;
.super Lw3/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw3/x0;->a(Ljava/lang/String;Lw3/z2;)Lw3/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic p:Ljava/lang/String;

.field final synthetic q:Lw3/x0;


# direct methods
.method constructor <init>(Lw3/x0;Lw3/z2;Lw3/z2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lw3/x0$a;->q:Lw3/x0;

    iput-object p4, p0, Lw3/x0$a;->p:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lw3/c;-><init>(Lw3/z2;Lw3/z2;)V

    return-void
.end method


# virtual methods
.method public N1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw3/x0$a;->p:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p1, p0, Lw3/x0$a;->q:Lw3/x0;

    iget-object p2, p1, Lw3/x0;->f:Ljava/lang/Object;

    if-nez p2, :cond_0

    sget-object p2, Lw3/u2;->y:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p4, v0

    move-object p3, p2

    move-object p2, p4

    :goto_0
    invoke-virtual {p1, p3, p2}, Lw3/x0;->h(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
