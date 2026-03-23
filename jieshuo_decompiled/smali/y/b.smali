.class public Ly/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Lf0/a;)Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    new-instance v0, Lc0/b;

    invoke-direct {v0}, Lc0/b;-><init>()V

    new-instance v1, Ljava/net/URI;

    const-string v2, "https://aip.baidubce.com/oauth/2.0/token"

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc0/b;->p(Ljava/net/URI;)V

    const-string v1, "grant_type"

    const-string v2, "client_credentials"

    invoke-virtual {v0, v1, v2}, Lc0/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "client_id"

    invoke-virtual {v0, v1, p0}, Lc0/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "client_secret"

    invoke-virtual {v0, p0, p1}, Lc0/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lc0/b;->m(Lf0/a;)V

    invoke-static {v0}, Lc0/a;->a(Lc0/b;)Lc0/c;

    move-result-object p0

    invoke-virtual {p0}, Lc0/c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lc0/c;->b()I

    move-result p0

    if-eqz p1, :cond_0

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p2, :cond_0

    :try_start_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Server response code: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lf0/e;->b(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
