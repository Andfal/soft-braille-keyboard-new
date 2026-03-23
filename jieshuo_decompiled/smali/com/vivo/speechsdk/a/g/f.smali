.class public Lcom/vivo/speechsdk/a/g/f;
.super Lcom/vivo/speechsdk/a/g/b;
.source "SourceFile"


# static fields
.field private static final k:Ljava/lang/String; = "MeetVadInterceptor"

.field private static final l:I = 0x7d


# instance fields
.field private e:Lcom/vivo/speechsdk/module/api/vad/IVadService;

.field private f:Ljava/lang/StringBuilder;

.field private g:I

.field private h:Z

.field private i:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

.field private j:Lcom/vivo/speechsdk/module/api/vad/VadListener;


# direct methods
.method public constructor <init>(Lcom/vivo/speechsdk/module/api/vad/IVadService;Lcom/vivo/speechsdk/module/api/session/ISessionCollect;)V
    .locals 1

    invoke-direct {p0}, Lcom/vivo/speechsdk/a/g/b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/speechsdk/a/g/f;->g:I

    iput-boolean v0, p0, Lcom/vivo/speechsdk/a/g/f;->h:Z

    new-instance v0, Lcom/vivo/speechsdk/a/g/f$a;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/a/g/f$a;-><init>(Lcom/vivo/speechsdk/a/g/f;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/a/g/f;->j:Lcom/vivo/speechsdk/module/api/vad/VadListener;

    iput-object p1, p0, Lcom/vivo/speechsdk/a/g/f;->e:Lcom/vivo/speechsdk/module/api/vad/IVadService;

    iput-object p2, p0, Lcom/vivo/speechsdk/a/g/f;->i:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/a/g/f;I)I
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/a/g/f;->g:I

    return p1
.end method

.method static synthetic a(Lcom/vivo/speechsdk/a/g/f;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/a/g/f;->f:Ljava/lang/StringBuilder;

    return-object p1
.end method

.method static synthetic a(Lcom/vivo/speechsdk/a/g/f;IIILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vivo/speechsdk/b/e/a;->a(IIILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/a/g/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/vivo/speechsdk/a/g/f;->h:Z

    return p0
.end method

.method static synthetic b(Lcom/vivo/speechsdk/a/g/f;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/a/g/f;->g:I

    return p0
.end method

.method static synthetic b(Lcom/vivo/speechsdk/a/g/f;IIILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vivo/speechsdk/b/e/a;->a(IIILjava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/vivo/speechsdk/a/g/f;)I
    .locals 2

    iget v0, p0, Lcom/vivo/speechsdk/a/g/f;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/vivo/speechsdk/a/g/f;->g:I

    return v0
.end method

.method static synthetic c(Lcom/vivo/speechsdk/a/g/f;IIILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vivo/speechsdk/b/e/a;->a(IIILjava/lang/Object;)V

    return-void
.end method

.method static synthetic d(Lcom/vivo/speechsdk/a/g/f;)Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/a/g/f;->f:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic d(Lcom/vivo/speechsdk/a/g/f;IIILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vivo/speechsdk/b/e/a;->a(IIILjava/lang/Object;)V

    return-void
.end method

.method static synthetic e(Lcom/vivo/speechsdk/a/g/f;)Lcom/vivo/speechsdk/module/api/session/ISessionCollect;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/a/g/f;->i:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/Object;II)V
    .locals 0

    check-cast p2, [B

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vivo/speechsdk/a/g/f;->a(I[BII)V

    return-void
.end method

.method public a(I[BII)V
    .locals 0

    const/4 p3, 0x1

    if-eq p1, p3, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const/4 p3, 0x4

    if-eq p1, p3, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    const/4 p2, 0x7

    if-eq p1, p2, :cond_3

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/vivo/speechsdk/a/g/f;->e:Lcom/vivo/speechsdk/module/api/vad/IVadService;

    invoke-interface {p1}, Lcom/vivo/speechsdk/module/api/vad/IVadService;->destroy()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/vivo/speechsdk/a/g/f;->e:Lcom/vivo/speechsdk/module/api/vad/IVadService;

    invoke-interface {p1, p2}, Lcom/vivo/speechsdk/module/api/vad/IVadService;->check([B)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/vivo/speechsdk/a/g/f;->e:Lcom/vivo/speechsdk/module/api/vad/IVadService;

    invoke-interface {p1}, Lcom/vivo/speechsdk/module/api/vad/IVadService;->stop()V

    :cond_3
    iget-object p1, p0, Lcom/vivo/speechsdk/a/g/f;->e:Lcom/vivo/speechsdk/module/api/vad/IVadService;

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Lcom/vivo/speechsdk/module/api/vad/IVadService;->event(I)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/vivo/speechsdk/a/g/f;->e:Lcom/vivo/speechsdk/module/api/vad/IVadService;

    iget-object p2, p0, Lcom/vivo/speechsdk/b/e/a;->c:Landroid/os/Bundle;

    iget-object p3, p0, Lcom/vivo/speechsdk/a/g/f;->j:Lcom/vivo/speechsdk/module/api/vad/VadListener;

    invoke-interface {p1, p2, p3}, Lcom/vivo/speechsdk/module/api/vad/IVadService;->start(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/vad/VadListener;)I

    move-result p1

    if-eqz p1, :cond_5

    const/16 p2, 0x6a

    invoke-virtual {p0, p2, p1}, Lcom/vivo/speechsdk/b/e/a;->a(II)V

    :cond_5
    :goto_0
    return-void
.end method
