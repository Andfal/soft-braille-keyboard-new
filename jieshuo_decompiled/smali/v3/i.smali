.class public Lv3/i;
.super Lv3/v;
.source "SourceFile"


# instance fields
.field k:Lv3/r;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lv3/v;-><init>(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lv3/i;->k:Lv3/r;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lv3/i;->k:Lv3/r;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lv3/r;->Notify(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lv3/i;->l:Ljava/lang/String;

    return-void
.end method

.method public h([BIZ)Z
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lv3/v;->b([BI)Z

    iget-boolean p1, p0, Lv3/v;->h:Z

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public i(Lv3/r;)V
    .locals 0

    iput-object p1, p0, Lv3/i;->k:Lv3/r;

    return-void
.end method
