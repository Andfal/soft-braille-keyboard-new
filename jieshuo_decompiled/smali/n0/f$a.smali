.class Ln0/f$a;
.super Lk1/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/f;->j()Ln0/f$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ln0/f$b;

.field final synthetic c:Ln0/f;


# direct methods
.method constructor <init>(Ln0/f;Ln0/f$b;)V
    .locals 0

    iput-object p1, p0, Ln0/f$a;->c:Ln0/f;

    iput-object p2, p0, Ln0/f$a;->b:Ln0/f$b;

    invoke-direct {p0}, Lk1/f;-><init>()V

    return-void
.end method


# virtual methods
.method public d(ILjava/util/Map;Ljava/lang/String;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    const-string p2, "expires_in"

    const-string p3, "access_token"

    const-string v0, "parse:"

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p4}, Ljava/lang/String;-><init>([B)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "body="

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--code="

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "OnlineAuth"

    invoke-static {p4, p1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Ln0/f$a;->b:Ln0/f$b;

    invoke-virtual {v1, p3}, Ln0/f$b;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object p3

    sget-object v1, Lb1/n;->d:Lb1/n;

    invoke-virtual {p3, v1}, Ld1/c;->h(Lb1/n;)Ll0/f;

    move-result-object p3

    iget-object v1, p0, Ln0/f$a;->b:Ln0/f$b;

    invoke-virtual {v1, p3}, Ln0/f$b;->d(Ll0/f;)V

    :goto_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    int-to-long v1, p1

    const-wide/32 v3, 0x15180

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    const-wide/32 v3, 0x3b9aca00

    mul-long v1, v1, v3

    add-long/2addr p2, v1

    iget-object p1, p0, Ln0/f$a;->b:Ln0/f$b;

    invoke-virtual {p1, p2, p3}, Ln0/f$b;->b(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public e(ILjava/util/Map;Ljava/lang/String;[BLjava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object p1

    sget-object p2, Lb1/n;->d:Lb1/n;

    invoke-virtual {p1, p2}, Ld1/c;->h(Lb1/n;)Ll0/f;

    move-result-object p1

    iget-object p2, p0, Ln0/f$a;->b:Ln0/f$b;

    invoke-virtual {p2, p1}, Ln0/f$b;->d(Ll0/f;)V

    return-void
.end method
