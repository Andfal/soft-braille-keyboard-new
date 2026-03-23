.class public Lcom/unisound/sdk/cc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = "http://rtc.hivoice.cn"

.field private static final d:I = 0x2710


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcn/yunzhisheng/casr/EncodeContent;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/data-process-service/oneshot"

    iput-object v0, p0, Lcom/unisound/sdk/cc;->b:Ljava/lang/String;

    new-instance v0, Lcn/yunzhisheng/casr/EncodeContent;

    invoke-direct {v0}, Lcn/yunzhisheng/casr/EncodeContent;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/cc;->c:Lcn/yunzhisheng/casr/EncodeContent;

    iput-object p1, p0, Lcom/unisound/sdk/cc;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/unisound/sdk/cc;->f:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "onlinewakeup"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "onlineWakeupWord"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[`~!@#$%^&*()_\\+\\-\\={}|\\\\\\[\\]\\:\";\'<>?,./~\u00b7\uff01@#\uffe5%\u2026\u2026&*\uff08\uff09\u2014\u2014\\+\\-\\={}|\u3010\u3011\u3001\uff1a\u201c\u201d\uff1b\u2018\u2019\u300a\u300b\uff1f\uff0c\u3002\u3001\uff40\uff5e\uff01\uff20\uff03\uff04\uff05\uff3e\uff06\uff0a\uff08\uff09\uff3f\uff0b\uff0d\uff1d\uff5b\uff5d\uff5c\uff3b\uff3d\uff3c\uff1a\uff02\uff02\uff1b\uff07\uff07\uff1c\uff1e\uff1f\uff0c\uff0e\uff0f\u00b7\uff5e\uff01\uff20\uff03\uffe5\uff05\u2026\u2026\uff06\u00d7\uff08\uff09\u2014\u2014\uff0b\uff0d\uff1d\uff5b\uff5d\uff5c\u3010\u3011\uff3c\uff1a\u201c\u201d\uff1b\u2018\u2019\u300a\u300b\uff1f\uff0c\u3002\u3001]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadOneShotOnlineWakeupData onlineWakeupWord => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/cc;->a(I)Ljava/lang/String;

    const v0, -0xf873

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0xa

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/unisound/sdk/cc;->c:Lcn/yunzhisheng/casr/EncodeContent;

    invoke-virtual {v2, p1, p2, v1}, Lcn/yunzhisheng/casr/EncodeContent;->EncodeTotalContent([B[B[B)I

    move-result p1

    if-eqz p1, :cond_0

    const p1, -0xf875

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/cc;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/net/URL;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/unisound/sdk/cc;->a:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/sdk/cc;->b:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const-string p2, "POST"

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const/16 p2, 0x2710

    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UploadOneShotOnlineWakeupData conn param => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_1

    new-instance p2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload response codeStr="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    return-object p1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/unisound/sdk/cc;->a(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadOneShotOnlineWakeupData exception =>"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/cc;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lcom/unisound/common/y;

    invoke-direct {v0}, Lcom/unisound/common/y;-><init>()V

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/sdk/cc;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unisound/common/y;->b(Ljava/lang/String;)V

    sget-object v1, Lcom/unisound/common/k;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unisound/common/y;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/sdk/cc;->e:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/unisound/sdk/cc;->a(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/common/y;->a(Ljava/util/Set;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v1}, Lcom/unisound/common/y;->b(Ljava/util/Set;)V

    invoke-virtual {v0}, Lcom/unisound/common/y;->g()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/sdk/cc;->e:Landroid/content/Context;

    const-string v1, "onlinewakeup"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "onlineWakeupWord"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
