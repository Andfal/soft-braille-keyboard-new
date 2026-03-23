.class public Lcom/vivo/speechsdk/a/g/h;
.super Lcom/vivo/speechsdk/a/g/b;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/record/RecordListener;


# instance fields
.field private e:Lcom/vivo/speechsdk/module/api/record/IRecord;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vivo/speechsdk/a/g/b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/speechsdk/a/g/h;->f:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/Object;II)V
    .locals 0

    check-cast p2, [B

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vivo/speechsdk/a/g/h;->a(I[BII)V

    return-void
.end method

.method public a(I[BII)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x4

    if-eqz p1, :cond_3

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vivo/speechsdk/a/g/h;->f:Z

    :cond_1
    iget-object v2, p0, Lcom/vivo/speechsdk/a/g/h;->e:Lcom/vivo/speechsdk/module/api/record/IRecord;

    invoke-interface {v2}, Lcom/vivo/speechsdk/module/api/record/IRecord;->stop()V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/vivo/speechsdk/a/g/h;->e:Lcom/vivo/speechsdk/module/api/record/IRecord;

    invoke-interface {v2}, Lcom/vivo/speechsdk/module/api/record/IRecord;->release()V

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/speechsdk/b/e/a;->c:Landroid/os/Bundle;

    const-string v4, "Record"

    invoke-virtual {v2, v4, v3}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getService(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivo/speechsdk/module/api/record/IRecord;

    iput-object v2, p0, Lcom/vivo/speechsdk/a/g/h;->e:Lcom/vivo/speechsdk/module/api/record/IRecord;

    const/16 v3, 0x6b

    const/16 v4, 0x6a

    if-nez v2, :cond_4

    const/16 v2, 0x2af8

    :goto_0
    invoke-virtual {p0, v4, v2}, Lcom/vivo/speechsdk/b/e/a;->a(II)V

    invoke-virtual {p0, v3, v1}, Lcom/vivo/speechsdk/b/e/a;->a(II)V

    goto :goto_2

    :cond_4
    invoke-interface {v2}, Lcom/vivo/speechsdk/module/api/record/IRecord;->isInit()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/vivo/speechsdk/a/g/h;->e:Lcom/vivo/speechsdk/module/api/record/IRecord;

    invoke-interface {v2}, Lcom/vivo/speechsdk/module/api/record/IRecord;->init()I

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/vivo/speechsdk/a/g/h;->e:Lcom/vivo/speechsdk/module/api/record/IRecord;

    invoke-interface {v2, p0}, Lcom/vivo/speechsdk/module/api/record/IRecord;->start(Lcom/vivo/speechsdk/module/api/record/RecordListener;)I

    move-result v2

    if-eqz v2, :cond_6

    :goto_1
    goto :goto_0

    :cond_6
    :goto_2
    if-eq v1, p1, :cond_7

    if-eq v0, p1, :cond_7

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vivo/speechsdk/b/e/a;->b(ILjava/lang/Object;II)V

    :cond_7
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0x6a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/vivo/speechsdk/b/e/a;->a(IIILjava/lang/Object;)V

    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 2

    const/16 p1, 0x1399

    const/4 v0, 0x0

    const/16 v1, 0x69

    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/vivo/speechsdk/b/e/a;->a(IIILjava/lang/Object;)V

    return-void
.end method

.method public onRecord([BI)V
    .locals 2

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/vivo/speechsdk/b/e/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public onRecordStart()V
    .locals 1

    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/vivo/speechsdk/b/e/a;->b(I)V

    return-void
.end method

.method public onRecordStop()V
    .locals 2

    iget-boolean v0, p0, Lcom/vivo/speechsdk/a/g/h;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vivo/speechsdk/b/e/a;->a(ILjava/lang/Object;)V

    :cond_0
    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lcom/vivo/speechsdk/b/e/a;->b(I)V

    const/16 v0, 0x6b

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/vivo/speechsdk/b/e/a;->a(II)V

    return-void
.end method
