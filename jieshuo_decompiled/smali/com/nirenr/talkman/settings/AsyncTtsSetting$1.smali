.class Lcom/nirenr/talkman/settings/AsyncTtsSetting$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/AsyncTtsSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/AsyncTtsSetting;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/AsyncTtsSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/AsyncTtsSetting$1;->a:Lcom/nirenr/talkman/settings/AsyncTtsSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/settings/AsyncTtsSetting$1;->a:Lcom/nirenr/talkman/settings/AsyncTtsSetting;

    const p2, 0x7f070824

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p2, v0}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/AsyncTtsSetting$1;->a:Lcom/nirenr/talkman/settings/AsyncTtsSetting;

    const p2, 0x7f0700bf

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
