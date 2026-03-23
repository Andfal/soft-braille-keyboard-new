.class public final Lcom/vivo/speechsdk/d/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/speechsdk/d/d$a;,
        Lcom/vivo/speechsdk/d/d$b;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "TTSServiceManager"

.field private static e:Lcom/vivo/speechsdk/d/d;


# instance fields
.field private a:Lcom/vivo/speechsdk/module/api/tts/ITTSService;

.field private b:Lcom/vivo/speechsdk/d/d$b;

.field private c:Lcom/vivo/speechsdk/d/d$b;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/d/d;)Lcom/vivo/speechsdk/d/d$b;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/d/d;->b:Lcom/vivo/speechsdk/d/d$b;

    return-object p0
.end method

.method static synthetic a(Lcom/vivo/speechsdk/d/d;Lcom/vivo/speechsdk/d/d$b;)Lcom/vivo/speechsdk/d/d$b;
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/d/d;->c:Lcom/vivo/speechsdk/d/d$b;

    return-object p1
.end method

.method public static a()Lcom/vivo/speechsdk/d/d;
    .locals 2

    const-class v0, Lcom/vivo/speechsdk/d/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vivo/speechsdk/d/d;->e:Lcom/vivo/speechsdk/d/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/vivo/speechsdk/d/d;

    invoke-direct {v1}, Lcom/vivo/speechsdk/d/d;-><init>()V

    sput-object v1, Lcom/vivo/speechsdk/d/d;->e:Lcom/vivo/speechsdk/d/d;

    :cond_0
    sget-object v1, Lcom/vivo/speechsdk/d/d;->e:Lcom/vivo/speechsdk/d/d;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;)I
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/d/d;->c:Lcom/vivo/speechsdk/d/d$b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/vivo/speechsdk/d/d$b;

    invoke-direct {v0, p1, p2}, Lcom/vivo/speechsdk/d/d$b;-><init>(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/d/d;->c:Lcom/vivo/speechsdk/d/d$b;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/vivo/speechsdk/d/d;->b:Lcom/vivo/speechsdk/d/d$b;

    iget-object v1, p0, Lcom/vivo/speechsdk/d/d;->a:Lcom/vivo/speechsdk/module/api/tts/ITTSService;

    new-instance v2, Lcom/vivo/speechsdk/d/d$a;

    invoke-direct {v2, p0, v0}, Lcom/vivo/speechsdk/d/d$a;-><init>(Lcom/vivo/speechsdk/d/d;Lcom/vivo/speechsdk/d/d$b;)V

    invoke-interface {v1, p1, v2}, Lcom/vivo/speechsdk/module/api/tts/ITTSService;->start(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;)I

    move-result p1

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/vivo/speechsdk/d/d;->c:Lcom/vivo/speechsdk/d/d$b;

    :cond_0
    return p1

    :cond_1
    iget-object v0, p0, Lcom/vivo/speechsdk/d/d;->b:Lcom/vivo/speechsdk/d/d$b;

    if-nez v0, :cond_2

    new-instance v0, Lcom/vivo/speechsdk/d/d$b;

    invoke-direct {v0, p1, p2}, Lcom/vivo/speechsdk/d/d$b;-><init>(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/d/d;->b:Lcom/vivo/speechsdk/d/d$b;

    const/4 p1, 0x0

    return p1

    :cond_2
    const p1, 0x9caf

    return p1
.end method

.method public a(ILcom/vivo/speechsdk/module/api/tts/ITTSService;)V
    .locals 0

    iput-object p2, p0, Lcom/vivo/speechsdk/d/d;->a:Lcom/vivo/speechsdk/module/api/tts/ITTSService;

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/d/d;->a:Lcom/vivo/speechsdk/module/api/tts/ITTSService;

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/tts/ITTSService;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/speechsdk/d/d;->c:Lcom/vivo/speechsdk/d/d$b;

    iput-object v0, p0, Lcom/vivo/speechsdk/d/d;->b:Lcom/vivo/speechsdk/d/d$b;

    return-void
.end method
