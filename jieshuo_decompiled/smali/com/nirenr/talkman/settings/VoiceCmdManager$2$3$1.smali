.class Lcom/nirenr/talkman/settings/VoiceCmdManager$2$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/VoiceCmdManager$2$3;->onCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/VoiceCmdManager$2$3;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/VoiceCmdManager$2$3;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/VoiceCmdManager$2$3$1;->a:Lcom/nirenr/talkman/settings/VoiceCmdManager$2$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 2

    iget-object p1, p0, Lcom/nirenr/talkman/settings/VoiceCmdManager$2$3$1;->a:Lcom/nirenr/talkman/settings/VoiceCmdManager$2$3;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/VoiceCmdManager$2$3;->a:Lcom/nirenr/talkman/settings/VoiceCmdManager$2;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/VoiceCmdManager$2;->b:Lcom/nirenr/talkman/settings/VoiceCmdManager;

    const v0, 0x7f07037a

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
