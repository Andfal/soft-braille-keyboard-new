.class public Lcom/vivo/speechsdk/d/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/vivo/speechsdk/module/api/tts/ITTSService;

.field private c:Z

.field private d:Landroid/os/Bundle;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/d/b$b;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/d/b$b;->d:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic b(Lcom/vivo/speechsdk/d/b$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/vivo/speechsdk/d/b$b;->c:Z

    return p0
.end method

.method static synthetic c(Lcom/vivo/speechsdk/d/b$b;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/d/b$b;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Lcom/vivo/speechsdk/d/b$b;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/d/b$b;->e:I

    return p0
.end method

.method static synthetic e(Lcom/vivo/speechsdk/d/b$b;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/d/b$b;->f:I

    return p0
.end method


# virtual methods
.method public a(I)Lcom/vivo/speechsdk/d/b$b;
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/d/b$b;->e:I

    return-object p0
.end method

.method public a(Landroid/os/Bundle;)Lcom/vivo/speechsdk/d/b$b;
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/d/b$b;->d:Landroid/os/Bundle;

    return-object p0
.end method

.method public a(Landroid/os/Handler;)Lcom/vivo/speechsdk/d/b$b;
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/d/b$b;->a:Landroid/os/Handler;

    return-object p0
.end method

.method public a(Lcom/vivo/speechsdk/module/api/tts/ITTSService;)Lcom/vivo/speechsdk/d/b$b;
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/d/b$b;->b:Lcom/vivo/speechsdk/module/api/tts/ITTSService;

    return-object p0
.end method

.method public a(Z)Lcom/vivo/speechsdk/d/b$b;
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/speechsdk/d/b$b;->c:Z

    return-object p0
.end method

.method public a()Lcom/vivo/speechsdk/d/b;
    .locals 1

    new-instance v0, Lcom/vivo/speechsdk/d/b;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/d/b;-><init>(Lcom/vivo/speechsdk/d/b$b;)V

    return-object v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b$b;->d:Landroid/os/Bundle;

    return-object v0
.end method

.method public b(I)Lcom/vivo/speechsdk/d/b$b;
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/d/b$b;->f:I

    return-object p0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/d/b$b;->e:I

    return v0
.end method

.method public d()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b$b;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/d/b$b;->f:I

    return v0
.end method

.method public f()Lcom/vivo/speechsdk/module/api/tts/ITTSService;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b$b;->b:Lcom/vivo/speechsdk/module/api/tts/ITTSService;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/speechsdk/d/b$b;->c:Z

    return v0
.end method
