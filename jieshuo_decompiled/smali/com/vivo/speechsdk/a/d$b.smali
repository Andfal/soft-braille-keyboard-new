.class Lcom/vivo/speechsdk/a/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/a/d;->updateHotWord(Landroid/os/Bundle;Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/a/h/d;

.field final synthetic b:Lcom/vivo/speechsdk/a/d;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/a/d;Lcom/vivo/speechsdk/a/h/d;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/a/d$b;->b:Lcom/vivo/speechsdk/a/d;

    iput-object p2, p0, Lcom/vivo/speechsdk/a/d$b;->a:Lcom/vivo/speechsdk/a/h/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d$b;->a:Lcom/vivo/speechsdk/a/h/d;

    invoke-virtual {v0, p1, p2}, Lcom/vivo/speechsdk/a/h/d;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d$b;->a:Lcom/vivo/speechsdk/a/h/d;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/a/h/d;->onSuccess()V

    return-void
.end method
