.class Lcom/nirenr/talkman/util/b$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/screencapture/ScreenCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/b;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/util/b;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/util/b;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/b$h;->a:Lcom/nirenr/talkman/util/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenCaptureDone(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$h;->a:Lcom/nirenr/talkman/util/b;

    invoke-static {v0}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/util/b$h;->a:Lcom/nirenr/talkman/util/b;

    invoke-static {p1}, Lcom/nirenr/talkman/util/b;->d(Lcom/nirenr/talkman/util/b;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/nirenr/talkman/util/b$h$a;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/util/b$h$a;-><init>(Lcom/nirenr/talkman/util/b$h;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/util/b$h;->a:Lcom/nirenr/talkman/util/b;

    invoke-static {v0}, Lcom/nirenr/talkman/util/b;->d(Lcom/nirenr/talkman/util/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/util/b$h$b;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/util/b$h$b;-><init>(Lcom/nirenr/talkman/util/b$h;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v1, Lcom/nirenr/talkman/util/b$h$c;

    invoke-direct {v1, p0, v0}, Lcom/nirenr/talkman/util/b$h$c;-><init>(Lcom/nirenr/talkman/util/b$h;Ljava/io/ByteArrayOutputStream;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    throw v0
.end method

.method public onScreenCaptureError(Ljava/lang/String;)V
    .locals 3

    iget-object p1, p0, Lcom/nirenr/talkman/util/b$h;->a:Lcom/nirenr/talkman/util/b;

    invoke-static {p1}, Lcom/nirenr/talkman/util/b;->c(Lcom/nirenr/talkman/util/b;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/nirenr/talkman/util/b;->l(Lcom/nirenr/talkman/util/b;I)V

    iget-object p1, p0, Lcom/nirenr/talkman/util/b$h;->a:Lcom/nirenr/talkman/util/b;

    invoke-static {p1}, Lcom/nirenr/talkman/util/b;->c(Lcom/nirenr/talkman/util/b;)I

    move-result p1

    const/4 v0, 0x7

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/util/b$h;->a:Lcom/nirenr/talkman/util/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/util/b;->M(Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/util/b$h;->a:Lcom/nirenr/talkman/util/b;

    invoke-static {p1}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const-string v0, "\u83b7\u53d6\u5c4f\u5e55\u5185\u5bb9\u51fa\u9519\uff0c\u5df2\u9000\u51fa\u89c6\u9891\u8bc6\u522b"

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/util/b$h;->a:Lcom/nirenr/talkman/util/b;

    invoke-static {p1}, Lcom/nirenr/talkman/util/b;->d(Lcom/nirenr/talkman/util/b;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/nirenr/talkman/util/b$h$d;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/util/b$h$d;-><init>(Lcom/nirenr/talkman/util/b$h;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
