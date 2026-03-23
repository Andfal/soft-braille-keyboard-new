.class Lcom/vivo/speechsdk/module/net/utils/a$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/net/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/net/utils/a;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/net/utils/a;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/utils/a$b;->a:Lcom/vivo/speechsdk/module/net/utils/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "DH"

    const-string p2, "receive domain change broadcast"

    invoke-static {p1, p2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/utils/a$b;->a:Lcom/vivo/speechsdk/module/net/utils/a;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/utils/a;->b(Lcom/vivo/speechsdk/module/net/utils/a;)V

    return-void
.end method
