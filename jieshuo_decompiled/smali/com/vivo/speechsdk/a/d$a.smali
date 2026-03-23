.class Lcom/vivo/speechsdk/a/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/a/d;->start(Landroid/os/Bundle;Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/a/d;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/a/d$a;->a:Lcom/vivo/speechsdk/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key_delay_crash_for_test"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
