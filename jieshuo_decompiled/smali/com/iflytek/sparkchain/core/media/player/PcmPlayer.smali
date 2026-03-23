.class public Lcom/iflytek/sparkchain/core/media/player/PcmPlayer;
.super Lcom/iflytek/sparkchain/media/player/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/core/media/player/PcmPlayer$PcmPlayerListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/sparkchain/media/player/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/iflytek/sparkchain/media/player/b;-><init>(Landroid/content/Context;IZZZ)V

    return-void
.end method


# virtual methods
.method public play(Lcom/iflytek/sparkchain/media/record/a;Lcom/iflytek/sparkchain/core/media/player/PcmPlayer$PcmPlayerListener;)Z
    .locals 0

    invoke-virtual {p0, p2}, Lcom/iflytek/sparkchain/media/player/b;->setListener(Lcom/iflytek/sparkchain/core/media/player/PcmPlayer$PcmPlayerListener;)V

    invoke-virtual {p0, p1}, Lcom/iflytek/sparkchain/media/player/b;->play(Lcom/iflytek/sparkchain/media/record/a;)Z

    move-result p1

    return p1
.end method

.method public rePlay(Lcom/iflytek/sparkchain/media/record/a;Lcom/iflytek/sparkchain/core/media/player/PcmPlayer$PcmPlayerListener;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/iflytek/sparkchain/media/player/b;->setState(I)V

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/sparkchain/core/media/player/PcmPlayer;->play(Lcom/iflytek/sparkchain/media/record/a;Lcom/iflytek/sparkchain/core/media/player/PcmPlayer$PcmPlayerListener;)Z

    move-result p1

    return p1
.end method
