.class public Lcom/vivo/speechsdk/module/player/PlayerModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/common/module/IModule;


# static fields
.field private static final c:Ljava/lang/String; = "PlayerModule"

.field private static final d:I = 0xc8

.field private static final e:I = 0x10

.field private static final f:I = 0x1


# instance fields
.field private a:Lcom/vivo/speechsdk/b/c;

.field private final b:Lcom/vivo/speechsdk/module/api/player/IPlayerFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/vivo/speechsdk/module/player/PlayerModule$a;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/player/PlayerModule$a;-><init>(Lcom/vivo/speechsdk/module/player/PlayerModule;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/player/PlayerModule;->b:Lcom/vivo/speechsdk/module/api/player/IPlayerFactory;

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/player/PlayerModule;)Lcom/vivo/speechsdk/b/c;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/player/PlayerModule;->a:Lcom/vivo/speechsdk/b/c;

    return-object p0
.end method

.method private a(Landroid/os/Bundle;I)Lcom/vivo/speechsdk/b/h/d;
    .locals 5

    const-string v0, "key_save_audio_path"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump filePath | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PlayerModule"

    invoke-static {v2, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "key_save_audio_append"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "key_save_audio_format"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, ".wav"

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p1, Lcom/vivo/speechsdk/b/h/i$a$a;

    invoke-direct {p1}, Lcom/vivo/speechsdk/b/h/i$a$a;-><init>()V

    const/16 v3, 0x10

    invoke-virtual {p1, v3}, Lcom/vivo/speechsdk/b/h/i$a$a;->a(I)Lcom/vivo/speechsdk/b/h/i$a$a;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/vivo/speechsdk/b/h/i$a$a;->b(I)Lcom/vivo/speechsdk/b/h/i$a$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/vivo/speechsdk/b/h/i$a$a;->c(I)Lcom/vivo/speechsdk/b/h/i$a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/b/h/i$a$a;->a()Lcom/vivo/speechsdk/b/h/i$a;

    move-result-object p1

    new-instance p2, Lcom/vivo/speechsdk/b/h/i;

    invoke-direct {p2, v0, v1, v2, p1}, Lcom/vivo/speechsdk/b/h/i;-><init>(Ljava/lang/String;ZLcom/vivo/speechsdk/b/h/e;Lcom/vivo/speechsdk/b/h/i$a;)V

    move-object v2, p2

    goto :goto_0

    :cond_0
    const-string p2, ".pcm"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/vivo/speechsdk/b/h/g;

    invoke-direct {p1, v0, v1, v2}, Lcom/vivo/speechsdk/b/h/g;-><init>(Ljava/lang/String;ZLcom/vivo/speechsdk/b/h/e;)V

    move-object v2, p1

    :cond_1
    :goto_0
    return-object v2
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/player/PlayerModule;Landroid/os/Bundle;I)Lcom/vivo/speechsdk/b/h/d;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vivo/speechsdk/module/player/PlayerModule;->a(Landroid/os/Bundle;I)Lcom/vivo/speechsdk/b/h/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getFactory()Lcom/vivo/speechsdk/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/vivo/speechsdk/b/b;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/PlayerModule;->b:Lcom/vivo/speechsdk/module/api/player/IPlayerFactory;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lcom/vivo/speechsdk/b/c;)I
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/player/PlayerModule;->a:Lcom/vivo/speechsdk/b/c;

    const/4 p1, 0x0

    return p1
.end method

.method public release()V
    .locals 0

    return-void
.end method
