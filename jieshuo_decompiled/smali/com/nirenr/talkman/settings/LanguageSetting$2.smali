.class Lcom/nirenr/talkman/settings/LanguageSetting$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/LanguageSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/nirenr/talkman/settings/LanguageSetting;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/LanguageSetting;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$2;->b:Lcom/nirenr/talkman/settings/LanguageSetting;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/LanguageSetting$2;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$2;->b:Lcom/nirenr/talkman/settings/LanguageSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/LanguageSetting;->b(Lcom/nirenr/talkman/settings/LanguageSetting;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result p1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/LanguageSetting$2;->b:Lcom/nirenr/talkman/settings/LanguageSetting;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/LanguageSetting;->a(Lcom/nirenr/talkman/settings/LanguageSetting;)Landroid/widget/ArrayListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayListAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$2;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/settings/LanguageSetting$2;->b:Lcom/nirenr/talkman/settings/LanguageSetting;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/LanguageSetting;->b(Lcom/nirenr/talkman/settings/LanguageSetting;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$2;->b:Lcom/nirenr/talkman/settings/LanguageSetting;

    const v0, 0x7f070403

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
