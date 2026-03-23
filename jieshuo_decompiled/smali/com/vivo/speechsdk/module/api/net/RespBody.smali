.class public Lcom/vivo/speechsdk/module/api/net/RespBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;
    }
.end annotation


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;->a(Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/net/RespBody;->a:Ljava/io/InputStream;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;->b(Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vivo/speechsdk/module/api/net/RespBody;->b:J

    invoke-static {p1}, Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;->c(Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/net/RespBody;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;->d(Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/net/RespBody;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/api/net/RespBody;)J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/speechsdk/module/api/net/RespBody;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/vivo/speechsdk/module/api/net/RespBody;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/api/net/RespBody;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/vivo/speechsdk/module/api/net/RespBody;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/api/net/RespBody;->a:Ljava/io/InputStream;

    return-object p0
.end method


# virtual methods
.method public final byteStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/net/RespBody;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/net/RespBody;->a:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method public contentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/speechsdk/module/api/net/RespBody;->b:J

    return-wide v0
.end method

.method public contentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/net/RespBody;->c:Ljava/lang/String;

    return-object v0
.end method

.method public string()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/net/RespBody;->d:Ljava/lang/String;

    return-object v0
.end method
