.class public Lo1/d;
.super Lk1/d;
.source "SourceFile"


# instance fields
.field private b:Ll0/f;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lk1/d;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lo1/d;->c:I

    return-void
.end method


# virtual methods
.method public i(ILjava/util/Map;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Throwable;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object p4

    sget-object v0, Lb1/n;->h0:Lb1/n;

    invoke-virtual {p4, v0, p1, p2, p3}, Ld1/c;->e(Lb1/n;ILjava/lang/String;Ljava/lang/Throwable;)Ll0/f;

    move-result-object p1

    iput-object p1, p0, Lo1/d;->b:Ll0/f;

    return-void
.end method

.method public j(ILjava/util/Map;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    sget-object p1, Lb1/g;->y:Lb1/g;

    invoke-virtual {p1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    sget-object p2, Lb1/g;->z:Lb1/g;

    invoke-virtual {p2}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_0

    iput p1, p0, Lo1/d;->c:I

    goto :goto_0

    :cond_0
    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object p3

    sget-object v0, Lb1/n;->i0:Lb1/n;

    invoke-virtual {p3, v0, p1, p2}, Ld1/c;->d(Lb1/n;ILjava/lang/String;)Ll0/f;

    move-result-object p1

    iput-object p1, p0, Lo1/d;->b:Ll0/f;

    :goto_0
    return-void
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lo1/d;->c:I

    return v0
.end method
