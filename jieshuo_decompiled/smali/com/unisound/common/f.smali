.class public Lcom/unisound/common/f;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/common/f;->a:I

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    const/16 p1, -0x13

    :goto_0
    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    return-void

    :cond_0
    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    const/16 p1, -0x10

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/common/f;->a:I

    return-void
.end method

.method public run()V
    .locals 0

    return-void
.end method
