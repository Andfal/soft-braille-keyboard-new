.class public Lcom/vivo/speechsdk/common/utils/BundleUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PRIVATE_KEY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "key_vaid"

    const-string v1, "key_imei"

    const-string v2, "key_did"

    const-string v3, "key_appkey"

    const-string v4, "key_user_id"

    const-string v5, "key_nlu_info"

    const-string v6, "key_token"

    const-string v7, "key_openid"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/speechsdk/common/utils/BundleUtils;->PRIVATE_KEY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _ToString(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static merge(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p0, :cond_1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0

    :cond_2
    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_5
    :goto_1
    return-object p0
.end method

.method public static toString(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/common/utils/BundleUtils;->PRIVATE_KEY:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/vivo/speechsdk/common/utils/BundleUtils;->toString(Landroid/os/Bundle;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Landroid/os/Bundle;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    array-length p0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "******"

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/BundleUtils;->_ToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/vivo/speechsdk/common/utils/BundleUtils;->_ToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
