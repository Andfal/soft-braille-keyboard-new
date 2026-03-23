.class final Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeCreateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/tatans/imeopensdk/TatansImeConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TatansImeCreateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/tatans/imeopensdk/TatansImeConnector;


# direct methods
.method public constructor <init>(Lnet/tatans/imeopensdk/TatansImeConnector;)V
    .locals 0

    iput-object p1, p0, Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeCreateReceiver;->this$0:Lnet/tatans/imeopensdk/TatansImeConnector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tatans.open.action.IME_SERVICE_SHOW"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeCreateReceiver;->this$0:Lnet/tatans/imeopensdk/TatansImeConnector;

    invoke-static {p1}, Lnet/tatans/imeopensdk/TatansImeConnector;->access$1000(Lnet/tatans/imeopensdk/TatansImeConnector;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tatans.open.action.IME_SERVICE_HIDE"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeCreateReceiver;->this$0:Lnet/tatans/imeopensdk/TatansImeConnector;

    invoke-static {p1}, Lnet/tatans/imeopensdk/TatansImeConnector;->access$800(Lnet/tatans/imeopensdk/TatansImeConnector;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "tatans.open.action.IME_SERVICE_CREATE"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeCreateReceiver;->this$0:Lnet/tatans/imeopensdk/TatansImeConnector;

    invoke-static {p1}, Lnet/tatans/imeopensdk/TatansImeConnector;->access$1100(Lnet/tatans/imeopensdk/TatansImeConnector;)V

    :cond_3
    :goto_0
    return-void
.end method
