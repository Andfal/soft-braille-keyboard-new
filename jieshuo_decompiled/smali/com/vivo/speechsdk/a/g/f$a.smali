.class Lcom/vivo/speechsdk/a/g/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/vad/VadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/a/g/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/a/g/f;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/a/g/f;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/a/g/f$a;->a:Lcom/vivo/speechsdk/a/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/f$a;->a:Lcom/vivo/speechsdk/a/g/f;

    const/16 v1, 0x6a

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Lcom/vivo/speechsdk/a/g/f;->b(Lcom/vivo/speechsdk/a/g/f;IIILjava/lang/Object;)V

    return-void
.end method

.method public onVadData([BI)V
    .locals 4

    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/f$a;->a:Lcom/vivo/speechsdk/a/g/f;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/g/f;->a(Lcom/vivo/speechsdk/a/g/f;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/f$a;->a:Lcom/vivo/speechsdk/a/g/f;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/g/f;->b(Lcom/vivo/speechsdk/a/g/f;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/f$a;->a:Lcom/vivo/speechsdk/a/g/f;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, v2}, Lcom/vivo/speechsdk/a/g/f;->a(Lcom/vivo/speechsdk/a/g/f;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/f$a;->a:Lcom/vivo/speechsdk/a/g/f;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/g/f;->c(Lcom/vivo/speechsdk/a/g/f;)I

    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/f$a;->a:Lcom/vivo/speechsdk/a/g/f;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/g/f;->d(Lcom/vivo/speechsdk/a/g/f;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/f$a;->a:Lcom/vivo/speechsdk/a/g/f;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/g/f;->b(Lcom/vivo/speechsdk/a/g/f;)I

    move-result v0

    const/16 v2, 0x7d

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/f$a;->a:Lcom/vivo/speechsdk/a/g/f;

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/a/g/f;->a(Lcom/vivo/speechsdk/a/g/f;I)I

    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/f$a;->a:Lcom/vivo/speechsdk/a/g/f;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/g/f;->d(Lcom/vivo/speechsdk/a/g/f;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MeetVadInterceptor"

    invoke-static {v2, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/f$a;->a:Lcom/vivo/speechsdk/a/g/f;

    const/16 v2, 0x6e

    invoke-static {v0, v2, p2, v1, p1}, Lcom/vivo/speechsdk/a/g/f;->a(Lcom/vivo/speechsdk/a/g/f;IIILjava/lang/Object;)V

    return-void
.end method

.method public onVadEvent(II)V
    .locals 5

    const/4 v0, 0x4

    const/16 v1, 0x69

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "key_vad_begin"

    invoke-virtual {v0, v3, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/vivo/speechsdk/a/g/f$a;->a:Lcom/vivo/speechsdk/a/g/f;

    const/16 v4, 0x1394

    invoke-static {v3, v1, v4, v2, v0}, Lcom/vivo/speechsdk/a/g/f;->c(Lcom/vivo/speechsdk/a/g/f;IIILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "key_vad_end"

    invoke-virtual {v0, v3, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/vivo/speechsdk/a/g/f$a;->a:Lcom/vivo/speechsdk/a/g/f;

    const/16 v3, 0x1395

    invoke-static {p2, v1, v3, v2, v0}, Lcom/vivo/speechsdk/a/g/f;->d(Lcom/vivo/speechsdk/a/g/f;IIILjava/lang/Object;)V

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/vivo/speechsdk/a/g/f$a;->a:Lcom/vivo/speechsdk/a/g/f;

    invoke-static {p1}, Lcom/vivo/speechsdk/a/g/f;->e(Lcom/vivo/speechsdk/a/g/f;)Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/vivo/speechsdk/a/g/f$a;->a:Lcom/vivo/speechsdk/a/g/f;

    invoke-static {p1}, Lcom/vivo/speechsdk/a/g/f;->e(Lcom/vivo/speechsdk/a/g/f;)Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p2, v2, v2, v0}, Lcom/vivo/speechsdk/module/api/session/ISessionCollect;->event(IIILjava/lang/Object;)V

    :cond_2
    return-void
.end method
