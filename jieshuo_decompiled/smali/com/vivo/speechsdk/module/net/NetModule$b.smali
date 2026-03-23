.class Lcom/vivo/speechsdk/module/net/NetModule$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/module/net/NetModule;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/net/NetModule;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/net/NetModule;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/NetModule$b;->a:Lcom/vivo/speechsdk/module/net/NetModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->r()V

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/c;->a()Lcom/vivo/speechsdk/module/net/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/net/utils/c;->b()V

    return-void
.end method
