.class Lcom/nirenr/talkman/settings/VoiceCmdShare$1;
.super Landroid/widget/ArrayListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/VoiceCmdShare;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayListAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/VoiceCmdShare;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/VoiceCmdShare;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare$1;->a:Lcom/nirenr/talkman/settings/VoiceCmdShare;

    invoke-direct {p0, p2}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare$1;->a:Lcom/nirenr/talkman/settings/VoiceCmdShare;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/VoiceCmdShare;->b(Lcom/nirenr/talkman/settings/VoiceCmdShare;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p3, "(\\d\\d\\d)\\d{4}"

    const-string v0, "$1****"

    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
