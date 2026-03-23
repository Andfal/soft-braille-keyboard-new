.class public Ln0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln0/d;->d:Landroid/content/Context;

    iput-object p2, p0, Ln0/d;->a:Ljava/lang/String;

    iput-object p3, p0, Ln0/d;->b:Ljava/lang/String;

    iput-object p4, p0, Ln0/d;->c:Ljava/lang/String;

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSGetEngineParam()Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Le1/b;->D()Le1/b;

    move-result-object v0

    invoke-virtual {v0}, Le1/b;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Le1/b;->H()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ln0/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, La1/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getLicense_err_no"

    invoke-static {v0, v3}, Lq1/i;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    sget-object v5, Lb1/g;->b0:Lb1/g;

    invoke-virtual {v5}, Lb1/g;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Ln0/d;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v5, Lb1/g;->f0:Lb1/g;

    invoke-virtual {v5}, Lb1/g;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lb1/g;->v0:Lb1/g;

    invoke-virtual {v1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lb1/g;->l:Lb1/g;

    invoke-virtual {v1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln0/d;->a:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lb1/g;->w0:Lb1/g;

    invoke-virtual {v1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, La1/c;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lb1/g;->x0:Lb1/g;

    invoke-virtual {v1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.etts"

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lb1/g;->y0:Lb1/g;

    invoke-virtual {v1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, La1/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lb1/g;->z0:Lb1/g;

    invoke-virtual {v0}, Lb1/g;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lb1/g;->g0:Lb1/g;

    invoke-virtual {v0}, Lb1/g;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.6.2.2"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GetTtsLicenseWork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLicense params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 6

    new-instance v0, Lk1/b;

    invoke-direct {v0}, Lk1/b;-><init>()V

    sget-object v1, Lb1/o;->f:Lb1/o;

    invoke-virtual {v1}, Lb1/o;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln0/d;->d:Landroid/content/Context;

    const-string v3, "isRegister"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lq1/i;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, p0, Ln0/d;->d:Landroid/content/Context;

    const-string v4, "SN"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lq1/i;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    iget-object v4, p0, Ln0/d;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "check?logid="

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "register?logid="

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isRegister:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  getlicense url:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GetTtsLicenseWork"

    invoke-static {v3, v2}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ln0/c;

    iget-object v3, p0, Ln0/d;->b:Ljava/lang/String;

    iget-object v4, p0, Ln0/d;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ln0/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ln0/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lk1/b;->e(Ljava/lang/String;Ljava/lang/String;Lk1/g;)V

    invoke-virtual {v2}, Ln0/c;->k()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ln0/d;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
