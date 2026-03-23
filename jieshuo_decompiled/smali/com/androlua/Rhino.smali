.class public Lcom/androlua/Rhino;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Lw3/m;

.field private final mScope:Lw3/a3;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lw3/m;->k()Lw3/m;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/Rhino;->mContext:Lw3/m;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lw3/m;->h0(I)V

    invoke-virtual {v0}, Lw3/m;->F()Lw3/a3;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/Rhino;->mScope:Lw3/a3;

    return-void
.end method


# virtual methods
.method public eval(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/androlua/Rhino;->mContext:Lw3/m;

    iget-object v1, p0, Lcom/androlua/Rhino;->mScope:Lw3/a3;

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lw3/m;->m(Lw3/z2;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lw3/u2;->j:Ljava/lang/Class;

    invoke-static {p1, v0}, Lw3/m;->P(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected finalize()V
    .locals 0

    invoke-static {}, Lw3/m;->n()V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/androlua/Rhino;->mScope:Lw3/a3;

    invoke-static {v0, p1}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lw3/u2;->j:Ljava/lang/Class;

    invoke-static {p1, v0}, Lw3/m;->P(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/Rhino;->mScope:Lw3/a3;

    invoke-static {p2, v0}, Lw3/m;->O(Ljava/lang/Object;Lw3/z2;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lw3/a3;->Y0(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
