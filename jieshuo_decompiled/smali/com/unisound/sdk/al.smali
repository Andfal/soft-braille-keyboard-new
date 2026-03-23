.class public Lcom/unisound/sdk/al;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/unisound/common/a;

.field public static b:Lcom/unisound/common/a;

.field public static c:Lcom/unisound/common/a;

.field public static d:Lcom/unisound/common/a;

.field public static e:Lcom/unisound/common/a;

.field public static f:Lcom/unisound/common/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/unisound/common/a;

    const-string v1, "117.121.49.41"

    const-string v2, "asrv3.hivoice.cn"

    const/16 v3, 0x50

    invoke-direct {v0, v2, v3, v1, v3}, Lcom/unisound/common/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/unisound/sdk/al;->a:Lcom/unisound/common/a;

    new-instance v0, Lcom/unisound/common/a;

    const-string v1, "v_eng.hivoice.cn"

    const-string v2, "117.121.55.43"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/unisound/common/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/unisound/sdk/al;->b:Lcom/unisound/common/a;

    new-instance v0, Lcom/unisound/common/a;

    const-string v1, "v_cnt.hivoice.cn"

    const-string v2, "117.121.55.41"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/unisound/common/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/unisound/sdk/al;->c:Lcom/unisound/common/a;

    new-instance v0, Lcom/unisound/common/a;

    const-string v1, "eval.hivoice.cn"

    const-string v2, "140.207.193.59"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/unisound/common/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/unisound/sdk/al;->d:Lcom/unisound/common/a;

    new-instance v0, Lcom/unisound/common/a;

    const-string v1, "117.121.55.39"

    const/16 v2, 0x2329

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/unisound/common/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/unisound/sdk/al;->e:Lcom/unisound/common/a;

    new-instance v0, Lcom/unisound/common/a;

    const-string v1, "v_zhen.hivoice.cn"

    const/16 v2, 0x232c

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/unisound/common/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/unisound/sdk/al;->f:Lcom/unisound/common/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/unisound/common/a;
    .locals 1

    const-string v0, "en"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/unisound/sdk/al;->b:Lcom/unisound/common/a;

    return-object p0

    :cond_0
    const-string v0, "co"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/unisound/sdk/al;->c:Lcom/unisound/common/a;

    return-object p0

    :cond_1
    const-string v0, "oral"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/unisound/sdk/al;->d:Lcom/unisound/common/a;

    return-object p0

    :cond_2
    const-string v0, "cn_en_mix"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/unisound/sdk/al;->f:Lcom/unisound/common/a;

    return-object p0

    :cond_3
    sget-object p0, Lcom/unisound/sdk/al;->a:Lcom/unisound/common/a;

    return-object p0
.end method
