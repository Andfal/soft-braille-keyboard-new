.class public Lj1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj1/a;->a:Lorg/json/JSONArray;

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Lb1/g;->w:Lb1/g;

    invoke-virtual {v1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "checkUpdate"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lb1/g;->x:Lb1/g;

    invoke-virtual {v1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lj1/a;->a:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5

    new-instance v0, Lk1/b;

    invoke-direct {v0}, Lk1/b;-><init>()V

    sget-object v1, Lb1/o;->c:Lb1/o;

    invoke-virtual {v1}, Lb1/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lj1/a;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lj1/a$a;

    invoke-direct {v4, p0, v3}, Lj1/a$a;-><init>(Lj1/a;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4}, Lk1/b;->e(Ljava/lang/String;Ljava/lang/String;Lk1/g;)V

    const/4 v0, 0x0

    aget-object v0, v3, v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lj1/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
