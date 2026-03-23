.class Lcom/nirenr/talkman/settings/SoundManager$2$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/SoundManager$2$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/SoundManager$2$3;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/SoundManager$2$3;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/SoundManager$2$3$1;->a:Lcom/nirenr/talkman/settings/SoundManager$2$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lua"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundManager$2$3$1;->a:Lcom/nirenr/talkman/settings/SoundManager$2$3;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/SoundManager$2$3;->a:Lcom/nirenr/talkman/settings/SoundManager$2;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/SoundManager$2;->b:Lcom/nirenr/talkman/settings/SoundManager;

    const v1, 0x7f070438

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundManager$2$3$1;->a:Lcom/nirenr/talkman/settings/SoundManager$2$3;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/SoundManager$2$3;->a:Lcom/nirenr/talkman/settings/SoundManager$2;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/SoundManager$2;->b:Lcom/nirenr/talkman/settings/SoundManager;

    const v1, 0x7f070437

    :goto_0
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
