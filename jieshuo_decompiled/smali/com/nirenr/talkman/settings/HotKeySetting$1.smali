.class Lcom/nirenr/talkman/settings/HotKeySetting$1;
.super Landroid/widget/ArrayListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/HotKeySetting;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic a:Lcom/nirenr/talkman/settings/HotKeySetting;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/HotKeySetting;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/HotKeySetting$1;->a:Lcom/nirenr/talkman/settings/HotKeySetting;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/HotKeySetting$1;->a:Lcom/nirenr/talkman/settings/HotKeySetting;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/HotKeySetting;->c(Lcom/nirenr/talkman/settings/HotKeySetting;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/HotKeySetting$1;->a:Lcom/nirenr/talkman/settings/HotKeySetting;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/HotKeySetting;->b(Lcom/nirenr/talkman/settings/HotKeySetting;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/HotKeySetting$1;->a:Lcom/nirenr/talkman/settings/HotKeySetting;

    invoke-static {v1}, Lcom/nirenr/talkman/settings/HotKeySetting;->c(Lcom/nirenr/talkman/settings/HotKeySetting;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
