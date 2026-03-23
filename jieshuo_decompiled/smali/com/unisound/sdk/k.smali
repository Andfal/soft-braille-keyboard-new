.class public Lcom/unisound/sdk/k;
.super Lcom/unisound/common/u;
.source "SourceFile"

# interfaces
.implements Lcom/unisound/sdk/ag;
.implements Lcom/unisound/sdk/ap;


# static fields
.field public static final a:I = 0x32

.field private static final c:I = 0x1

.field private static final d:I = 0x2

.field private static final e:I = 0x3

.field private static final f:I = 0x4

.field private static final g:I = 0x5

.field private static final h:I = 0x6

.field private static final i:I = 0xb

.field private static final j:I = 0xc

.field private static final k:I = 0xd

.field private static final l:I = 0xe

.field private static final m:I = 0xf

.field private static final n:I = 0x14

.field private static final o:I = 0x15

.field private static final p:I = 0x16

.field private static final q:I = 0x17

.field private static final r:I = 0x18

.field private static x:Lcn/yunzhisheng/asrfix/JniAsrFix;


# instance fields
.field private A:Z

.field private B:Landroid/os/Looper;

.field b:Lcom/unisound/sdk/am;

.field private s:Lcom/unisound/sdk/w;

.field private t:Lcom/unisound/sdk/x;

.field private u:Lcom/unisound/sdk/af;

.field private v:Lcom/unisound/sdk/i;

.field private w:Lcom/unisound/sdk/ae;

.field private y:Lcom/unisound/sdk/u;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "uscasr"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/unisound/common/u;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/k;->s:Lcom/unisound/sdk/w;

    iput-object v0, p0, Lcom/unisound/sdk/k;->t:Lcom/unisound/sdk/x;

    iput-object v0, p0, Lcom/unisound/sdk/k;->u:Lcom/unisound/sdk/af;

    iput-object v0, p0, Lcom/unisound/sdk/k;->v:Lcom/unisound/sdk/i;

    new-instance v1, Lcom/unisound/sdk/ae;

    invoke-direct {v1}, Lcom/unisound/sdk/ae;-><init>()V

    iput-object v1, p0, Lcom/unisound/sdk/k;->w:Lcom/unisound/sdk/ae;

    iput-object v0, p0, Lcom/unisound/sdk/k;->y:Lcom/unisound/sdk/u;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/k;->z:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/k;->A:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/unisound/common/u;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/k;->s:Lcom/unisound/sdk/w;

    iput-object v0, p0, Lcom/unisound/sdk/k;->t:Lcom/unisound/sdk/x;

    iput-object v0, p0, Lcom/unisound/sdk/k;->u:Lcom/unisound/sdk/af;

    iput-object v0, p0, Lcom/unisound/sdk/k;->v:Lcom/unisound/sdk/i;

    new-instance v1, Lcom/unisound/sdk/ae;

    invoke-direct {v1}, Lcom/unisound/sdk/ae;-><init>()V

    iput-object v1, p0, Lcom/unisound/sdk/k;->w:Lcom/unisound/sdk/ae;

    iput-object v0, p0, Lcom/unisound/sdk/k;->y:Lcom/unisound/sdk/u;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/k;->z:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/k;->A:Z

    iput-object p1, p0, Lcom/unisound/sdk/k;->B:Landroid/os/Looper;

    return-void
.end method

.method private A()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/k;->b:Lcom/unisound/sdk/am;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/am;->d()V

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    return-void
.end method

.method private e(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/k;->b:Lcom/unisound/sdk/am;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unisound/sdk/am;->a(I)V

    :cond_0
    return-void
.end method

.method private e(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/k;->v:Lcom/unisound/sdk/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/i;->a(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/unisound/sdk/k;->v:Lcom/unisound/sdk/i;

    :cond_0
    return-void
.end method

.method private z()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/k;->s:Lcom/unisound/sdk/w;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->d()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/unisound/sdk/k;->x:Lcn/yunzhisheng/asrfix/JniAsrFix;

    iget-object v1, p0, Lcom/unisound/sdk/k;->y:Lcom/unisound/sdk/u;

    invoke-virtual {v0, p1, p2, v1, p3}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/sdk/u;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unisound/sdk/k;->x:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0, p1, p2}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/k;->s:Lcom/unisound/sdk/w;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->k()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/k;->s:Lcom/unisound/sdk/w;

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/k;->s:Lcom/unisound/sdk/w;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->d()V

    :cond_0
    const/16 v0, 0xd

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/unisound/common/u;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/k;->b:Lcom/unisound/sdk/am;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/unisound/common/aj;->a(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Lcn/yunzhisheng/asr/VAD;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/k;->s:Lcom/unisound/sdk/w;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/k;->y:Lcom/unisound/sdk/u;

    invoke-virtual {v0}, Lcom/unisound/sdk/u;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/unisound/sdk/k;->v:Lcom/unisound/sdk/i;

    invoke-virtual {p1}, Lcom/unisound/sdk/i;->e()V

    return-void

    :cond_1
    const/16 v0, 0x15

    invoke-virtual {p0, v0, p1}, Lcom/unisound/common/u;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/unisound/sdk/af;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/k;->u:Lcom/unisound/sdk/af;

    return-void
.end method

.method public a(Lcom/unisound/sdk/am;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/k;->b:Lcom/unisound/sdk/am;

    invoke-virtual {p0, p1}, Lcom/unisound/common/u;->setMessageLisenter(Lcom/unisound/common/v;)V

    return-void
.end method

.method public a(Lcom/unisound/sdk/s;)V
    .locals 1

    sget-object v0, Lcom/unisound/sdk/k;->x:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(Lcom/unisound/sdk/s;)V

    return-void
.end method

.method public a(Lcom/unisound/sdk/u;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/k;->y:Lcom/unisound/sdk/u;

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 1

    sget-object v0, Lcom/unisound/sdk/k;->x:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/unisound/sdk/w;Lcom/unisound/sdk/x;)V
    .locals 4

    iget-object v0, p0, Lcom/unisound/sdk/k;->v:Lcom/unisound/sdk/i;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/i;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/k;->v:Lcom/unisound/sdk/i;

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/k;->w:Lcom/unisound/sdk/ae;

    invoke-virtual {v0}, Lcom/unisound/sdk/ae;->a()V

    iget-boolean v0, p0, Lcom/unisound/sdk/k;->z:Z

    const/16 v1, 0xa

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/unisound/sdk/k;->A:Z

    const v2, -0xf80e

    const/16 v3, 0xd

    if-nez v0, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/unisound/common/u;->sendMessage(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/unisound/sdk/k;->x:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/unisound/sdk/h;

    sget-object v2, Lcom/unisound/sdk/k;->x:Lcn/yunzhisheng/asrfix/JniAsrFix;

    iget-object v3, p0, Lcom/unisound/sdk/k;->y:Lcom/unisound/sdk/u;

    invoke-direct {v0, v2, p1, v3, p3}, Lcom/unisound/sdk/h;-><init>(Lcn/yunzhisheng/asrfix/JniAsrFix;Ljava/lang/String;Lcom/unisound/sdk/u;Lcom/unisound/sdk/x;)V

    iput-object v0, p0, Lcom/unisound/sdk/k;->v:Lcom/unisound/sdk/i;

    invoke-virtual {v0, p0}, Lcom/unisound/sdk/i;->a(Lcom/unisound/sdk/ag;)V

    iget-object p1, p0, Lcom/unisound/sdk/k;->v:Lcom/unisound/sdk/i;

    iget-object v0, p0, Lcom/unisound/sdk/k;->u:Lcom/unisound/sdk/af;

    invoke-virtual {p1, v0}, Lcom/unisound/sdk/i;->a(Lcom/unisound/sdk/af;)V

    iget-object p1, p0, Lcom/unisound/sdk/k;->v:Lcom/unisound/sdk/i;

    const-string v0, "usc_fix_thread"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unisound/sdk/k;->v:Lcom/unisound/sdk/i;

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setPriority(I)V

    iget-object p1, p0, Lcom/unisound/sdk/k;->v:Lcom/unisound/sdk/i;

    invoke-virtual {p1}, Lcom/unisound/sdk/i;->start()V

    const-string p1, "Recognition Thread Start"

    invoke-static {p1}, Lcom/unisound/common/r;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/unisound/common/u;->sendMessage(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/unisound/sdk/k;->b:Lcom/unisound/sdk/am;

    if-nez p1, :cond_3

    return-void

    :cond_3
    :goto_0
    iput-object p3, p0, Lcom/unisound/sdk/k;->t:Lcom/unisound/sdk/x;

    const-string p1, "usc_vad_thread"

    invoke-virtual {p3, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unisound/sdk/k;->t:Lcom/unisound/sdk/x;

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setPriority(I)V

    iget-object p1, p0, Lcom/unisound/sdk/k;->t:Lcom/unisound/sdk/x;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iput-object p2, p0, Lcom/unisound/sdk/k;->s:Lcom/unisound/sdk/w;

    const-string p1, "usc_record_thread"

    invoke-virtual {p2, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unisound/sdk/k;->s:Lcom/unisound/sdk/w;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const-string p1, "Recording Thread Start"

    invoke-static {p1}, Lcom/unisound/common/r;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unisound/sdk/k;->b:Lcom/unisound/sdk/am;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/unisound/sdk/am;->e()V

    :cond_4
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/unisound/sdk/ah;

    invoke-direct {v0}, Lcom/unisound/sdk/ah;-><init>()V

    iput-object p1, v0, Lcom/unisound/sdk/ah;->a:Ljava/lang/String;

    iput-boolean p2, v0, Lcom/unisound/sdk/ah;->b:Z

    const/16 p1, 0xb

    invoke-virtual {p0, p1, v0}, Lcom/unisound/common/u;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;ZI)V
    .locals 1

    new-instance v0, Lcom/unisound/sdk/ah;

    invoke-direct {v0}, Lcom/unisound/sdk/ah;-><init>()V

    iput-object p1, v0, Lcom/unisound/sdk/ah;->a:Ljava/lang/String;

    iput-boolean p2, v0, Lcom/unisound/sdk/ah;->b:Z

    iput p3, v0, Lcom/unisound/sdk/ah;->c:I

    const/16 p1, 0x14

    invoke-virtual {p0, p1, v0}, Lcom/unisound/common/u;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object p1, Lcom/unisound/sdk/k;->x:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->b()V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FixRecognizer Cancel and wait end +"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/unisound/sdk/k;->v:Lcom/unisound/sdk/i;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unisound/sdk/k;->a()V

    iget-object p1, p0, Lcom/unisound/sdk/k;->t:Lcom/unisound/sdk/x;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/unisound/sdk/x;->g()V

    iput-object v0, p0, Lcom/unisound/sdk/k;->t:Lcom/unisound/sdk/x;

    :cond_2
    iget-object p1, p0, Lcom/unisound/sdk/k;->v:Lcom/unisound/sdk/i;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Lcom/unisound/sdk/i;->a(Z)V

    iput-object v0, p0, Lcom/unisound/sdk/k;->v:Lcom/unisound/sdk/i;

    :cond_3
    invoke-virtual {p0}, Lcom/unisound/common/u;->removeSendMessage()V

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public a(Z[BII)V
    .locals 0

    iget-object p1, p0, Lcom/unisound/sdk/k;->t:Lcom/unisound/sdk/x;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/x;->a([B)V

    return-void
.end method

.method public a(Landroid/os/Message;)Z
    .locals 4

    iget-object v0, p0, Lcom/unisound/sdk/k;->B:Landroid/os/Looper;

    monitor-enter v0

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    monitor-exit v0

    return v2

    :pswitch_0
    iget-object v1, p0, Lcom/unisound/sdk/k;->b:Lcom/unisound/sdk/am;

    if-eqz v1, :cond_2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/unisound/sdk/k;->e()V

    invoke-direct {p0}, Lcom/unisound/sdk/k;->z()V

    const p1, -0xf876

    invoke-direct {p0, p1}, Lcom/unisound/sdk/k;->e(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/unisound/sdk/k;->b:Lcom/unisound/sdk/am;

    if-eqz v1, :cond_2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/unisound/sdk/k;->b:Lcom/unisound/sdk/am;

    invoke-interface {v1, p1}, Lcom/unisound/sdk/cf;->b(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/unisound/sdk/k;->b:Lcom/unisound/sdk/am;

    if-eqz v1, :cond_2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/yunzhisheng/asr/VAD;

    invoke-interface {v1, p1}, Lcom/unisound/sdk/cf;->a(Lcn/yunzhisheng/asr/VAD;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/unisound/sdk/k;->b:Lcom/unisound/sdk/am;

    if-eqz v1, :cond_2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/unisound/sdk/ah;

    iget-object v2, p1, Lcom/unisound/sdk/ah;->a:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/unisound/sdk/ah;->b:Z

    iget p1, p1, Lcom/unisound/sdk/ah;->c:I

    invoke-interface {v1, v2, v3, p1}, Lcom/unisound/sdk/am;->a(Ljava/lang/String;ZI)V

    goto/16 :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/unisound/sdk/k;->z()V

    const p1, -0xf231

    invoke-direct {p0, p1}, Lcom/unisound/sdk/k;->e(I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/unisound/sdk/k;->b:Lcom/unisound/sdk/am;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/unisound/sdk/am;->b()V

    goto :goto_0

    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/unisound/sdk/k;->e(I)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, v2}, Lcom/unisound/sdk/k;->e(I)V

    goto :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/unisound/sdk/k;->b:Lcom/unisound/sdk/am;

    if-eqz v1, :cond_2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/unisound/sdk/ah;

    iget-object v2, p1, Lcom/unisound/sdk/ah;->a:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/unisound/sdk/ah;->b:Z

    invoke-interface {v1, v2, p1}, Lcom/unisound/sdk/am;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lcom/unisound/sdk/k;->d()V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0}, Lcom/unisound/sdk/k;->c()V

    goto :goto_0

    :pswitch_c
    invoke-direct {p0}, Lcom/unisound/sdk/k;->A()V

    goto :goto_0

    :pswitch_d
    invoke-virtual {p0}, Lcom/unisound/sdk/k;->e()V

    const p1, -0xee4a

    invoke-direct {p0, p1}, Lcom/unisound/sdk/k;->e(I)V

    goto :goto_0

    :pswitch_e
    iget-object p1, p0, Lcom/unisound/sdk/k;->b:Lcom/unisound/sdk/am;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/unisound/sdk/am;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/unisound/sdk/k;->f()V

    goto :goto_0

    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/unisound/sdk/k;->b:Lcom/unisound/sdk/am;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/unisound/sdk/am;->c()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/unisound/sdk/k;->e()V

    const p1, -0xee49

    invoke-direct {p0, p1}, Lcom/unisound/sdk/k;->e(I)V

    :cond_2
    :goto_0
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x14
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/unisound/sdk/k;->x:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->h()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    invoke-virtual {p0, p2, p4, p5}, Lcom/unisound/sdk/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p3, "init_asr"

    if-ne p3, p4, :cond_2

    sget-object p3, Lcom/unisound/sdk/k;->x:Lcn/yunzhisheng/asrfix/JniAsrFix;

    iget-object p5, p0, Lcom/unisound/sdk/k;->y:Lcom/unisound/sdk/u;

    invoke-virtual {p3, p1, p2, p4, p5}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/sdk/u;)I

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "jac.init path="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " error:"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unisound/sdk/k;->c(Ljava/lang/String;)V

    return p4

    :cond_1
    sget-object p1, Lcom/unisound/sdk/k;->x:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {p1, p4, v1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(II)I

    sget-object p1, Lcom/unisound/sdk/k;->x:Lcn/yunzhisheng/asrfix/JniAsrFix;

    const/16 p2, 0xbb8

    invoke-virtual {p1, v1, p2}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(II)I

    sget-object p1, Lcom/unisound/sdk/k;->x:Lcn/yunzhisheng/asrfix/JniAsrFix;

    const/4 p2, 0x6

    const/16 p3, 0x8

    invoke-virtual {p1, p2, p3}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(II)I

    sget-object p1, Lcom/unisound/sdk/k;->x:Lcn/yunzhisheng/asrfix/JniAsrFix;

    iget-object p2, p0, Lcom/unisound/sdk/k;->y:Lcom/unisound/sdk/u;

    invoke-virtual {p2}, Lcom/unisound/sdk/an;->ab()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x9

    invoke-virtual {p1, p3, p2}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(ILjava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "FixRecognizer Engine is not init, wrong cmd="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    const p1, -0xf80e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0xd

    invoke-virtual {p0, p2, p1}, Lcom/unisound/common/u;->sendMessage(ILjava/lang/Object;)V

    :goto_0
    return v1
.end method

.method public b()V
    .locals 1

    invoke-direct {p0}, Lcom/unisound/sdk/k;->z()V

    iget-object v0, p0, Lcom/unisound/sdk/k;->s:Lcom/unisound/sdk/w;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/k;->v:Lcom/unisound/sdk/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/sdk/i;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/unisound/common/u;->sendMessage(I)V

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/k;->t:Lcom/unisound/sdk/x;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/unisound/sdk/x;->b()V

    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 1

    const/16 v0, 0x16

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/unisound/common/u;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/k;->w:Lcom/unisound/sdk/ae;

    invoke-virtual {v0}, Lcom/unisound/sdk/ae;->a()V

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/unisound/common/u;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public b(Z[BII)V
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/k;->w:Lcom/unisound/sdk/ae;

    invoke-virtual {v0, p2, p3, p4}, Lcom/unisound/sdk/ae;->a([BII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/unisound/common/u;->sendMessage(I)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/unisound/sdk/k;->w:Lcom/unisound/sdk/ae;

    invoke-virtual {v1}, Lcom/unisound/sdk/ae;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/unisound/sdk/k;->v:Lcom/unisound/sdk/i;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    array-length v1, p2

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/unisound/sdk/k;->t:Lcom/unisound/sdk/x;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/unisound/sdk/k;->v:Lcom/unisound/sdk/i;

    invoke-virtual {v2, p2}, Lcom/unisound/sdk/i;->a([B)V

    iget-object v2, p0, Lcom/unisound/sdk/k;->t:Lcom/unisound/sdk/x;

    invoke-virtual {v2, v0}, Lcom/unisound/sdk/x;->a(Z)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/unisound/sdk/k;->b:Lcom/unisound/sdk/am;

    if-eqz v1, :cond_4

    sget-boolean v2, Lcom/unisound/sdk/ae;->a:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/unisound/sdk/k;->w:Lcom/unisound/sdk/ae;

    invoke-virtual {v2}, Lcom/unisound/sdk/ae;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-interface {v1, v0, p2, p3, p4}, Lcom/unisound/sdk/cf;->b(Z[BII)V

    goto :goto_1

    :cond_3
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/unisound/sdk/cf;->b(Z[BII)V

    :cond_4
    :goto_1
    return-void
.end method

.method public c(I)I
    .locals 1

    sget-object v0, Lcom/unisound/sdk/k;->x:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->b(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method protected c()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/k;->b:Lcom/unisound/sdk/am;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/cf;->m()V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/k;->z:Z

    return-void
.end method

.method public d(I)I
    .locals 1

    sget-object v0, Lcom/unisound/sdk/k;->x:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->c(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method protected d()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/k;->b:Lcom/unisound/sdk/am;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/cf;->n()V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/k;->A:Z

    return-void
.end method

.method protected e()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/k;->v:Lcom/unisound/sdk/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/sdk/i;->c()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/k;->v:Lcom/unisound/sdk/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/sdk/i;->d()V

    :cond_0
    return-void
.end method

.method protected g()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/k;->s:Lcom/unisound/sdk/w;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->g()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/unisound/common/u;->sendMessage(I)V

    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/unisound/common/u;->sendMessage(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/k;->s:Lcom/unisound/sdk/w;

    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/unisound/common/u;->sendMessage(I)V

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l()V
    .locals 1

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/unisound/common/u;->sendMessage(I)V

    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/unisound/common/u;->sendMessage(I)V

    return-void
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/unisound/common/u;->sendMessage(I)V

    return-void
.end method

.method public o()V
    .locals 2

    sget-object v0, Lcom/unisound/sdk/k;->x:Lcn/yunzhisheng/asrfix/JniAsrFix;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/unisound/sdk/k;->s:Lcom/unisound/sdk/w;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/unisound/sdk/w;->d()V

    :cond_0
    sget-object v1, Lcom/unisound/sdk/k;->x:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->d()V

    iget-object v1, p0, Lcom/unisound/sdk/k;->s:Lcom/unisound/sdk/w;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/unisound/sdk/w;->k()V

    :cond_1
    iget-object v1, p0, Lcom/unisound/sdk/k;->t:Lcom/unisound/sdk/x;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/unisound/sdk/x;->g()V

    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/unisound/sdk/k;->e(Z)V

    sget-object v1, Lcom/unisound/sdk/k;->x:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->i()V

    const-string v1, "jac.unLoad();"

    invoke-static {v1}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public p()Z
    .locals 1

    sget-object v0, Lcom/unisound/sdk/k;->x:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->h()Z

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/k;->v:Lcom/unisound/sdk/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public r()V
    .locals 1

    invoke-static {}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a()Lcn/yunzhisheng/asrfix/JniAsrFix;

    move-result-object v0

    sput-object v0, Lcom/unisound/sdk/k;->x:Lcn/yunzhisheng/asrfix/JniAsrFix;

    return-void
.end method

.method public s()I
    .locals 1

    sget-object v0, Lcom/unisound/sdk/k;->x:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->k()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/unisound/sdk/k;->x:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->m()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public u()I
    .locals 1

    sget-object v0, Lcom/unisound/sdk/k;->x:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->n()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unisound/sdk/k;->x:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unisound/sdk/k;->x:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public x()I
    .locals 1

    sget-object v0, Lcom/unisound/sdk/k;->x:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->r()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public y()I
    .locals 1

    sget-object v0, Lcom/unisound/sdk/k;->x:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->s()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method
