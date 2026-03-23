.class public final Lk3/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt2/d;)V
    .locals 0

    invoke-direct {p0}, Lk3/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/X509TrustManager;)Lk3/c;
    .locals 1

    const-string v0, "trustManager"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lh3/m;->c:Lh3/m$a;

    invoke-virtual {v0}, Lh3/m$a;->g()Lh3/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh3/m;->c(Ljavax/net/ssl/X509TrustManager;)Lk3/c;

    move-result-object p1

    return-object p1
.end method
