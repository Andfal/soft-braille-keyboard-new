.class public Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/api/net/RespBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/vivo/speechsdk/module/api/net/RespBody;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/vivo/speechsdk/module/api/net/RespBody;->a(Lcom/vivo/speechsdk/module/api/net/RespBody;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;->b:J

    invoke-static {p1}, Lcom/vivo/speechsdk/module/api/net/RespBody;->b(Lcom/vivo/speechsdk/module/api/net/RespBody;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/api/net/RespBody;->c(Lcom/vivo/speechsdk/module/api/net/RespBody;)Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;->a:Ljava/io/InputStream;

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;->a:Ljava/io/InputStream;

    return-object p0
.end method

.method static synthetic b(Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;->b:J

    return-wide v0
.end method

.method static synthetic c(Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/vivo/speechsdk/module/api/net/RespBody;
    .locals 1

    new-instance v0, Lcom/vivo/speechsdk/module/api/net/RespBody;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/api/net/RespBody;-><init>(Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;)V

    return-object v0
.end method

.method public byteStream(Ljava/io/InputStream;)Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;->a:Ljava/io/InputStream;

    return-object p0
.end method

.method public contentLength(J)Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;->b:J

    return-object p0
.end method

.method public contentType(Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public string(Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;->d:Ljava/lang/String;

    return-object p0
.end method
