.class public Lcom/unisound/common/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/unisound/common/q;)I
    .locals 1

    invoke-virtual {p1}, Lcom/unisound/common/q;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/unisound/common/q;->k()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/unisound/common/n;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
