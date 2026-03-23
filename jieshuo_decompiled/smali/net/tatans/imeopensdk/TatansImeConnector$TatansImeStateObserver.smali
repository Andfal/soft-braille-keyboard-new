.class final Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeStateObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/tatans/imeopensdk/TatansImeConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TatansImeStateObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/tatans/imeopensdk/TatansImeConnector;


# direct methods
.method public constructor <init>(Lnet/tatans/imeopensdk/TatansImeConnector;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeStateObserver;->this$0:Lnet/tatans/imeopensdk/TatansImeConnector;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const-string p1, "TatansImeConnector"

    const-string v0, "observer changed"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeStateObserver;->this$0:Lnet/tatans/imeopensdk/TatansImeConnector;

    invoke-static {p1}, Lnet/tatans/imeopensdk/TatansImeConnector;->access$900(Lnet/tatans/imeopensdk/TatansImeConnector;)V

    return-void
.end method
