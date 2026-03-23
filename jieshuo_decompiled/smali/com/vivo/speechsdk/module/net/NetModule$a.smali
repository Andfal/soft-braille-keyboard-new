.class Lcom/vivo/speechsdk/module/net/NetModule$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/module/net/NetModule;->init(Lcom/vivo/speechsdk/b/c;)I
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

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/NetModule$a;->a:Lcom/vivo/speechsdk/module/net/NetModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->i()V

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/f;->b()Lcom/vivo/speechsdk/module/net/utils/f;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/NetModule$a;->a:Lcom/vivo/speechsdk/module/net/NetModule;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/net/NetModule;->a(Lcom/vivo/speechsdk/module/net/NetModule;)Lcom/vivo/speechsdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/b/c;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/module/net/utils/f;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/c;->a()Lcom/vivo/speechsdk/module/net/utils/c;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/NetModule$a;->a:Lcom/vivo/speechsdk/module/net/NetModule;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/net/NetModule;->a(Lcom/vivo/speechsdk/module/net/NetModule;)Lcom/vivo/speechsdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/b/c;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/module/net/utils/c;->b(Landroid/content/Context;)V

    return-void
.end method
