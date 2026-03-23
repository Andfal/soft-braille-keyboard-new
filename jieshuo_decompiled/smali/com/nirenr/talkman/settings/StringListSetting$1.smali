.class Lcom/nirenr/talkman/settings/StringListSetting$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/StringListSetting;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/StringListSetting;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/StringListSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/StringListSetting$1;->a:Lcom/nirenr/talkman/settings/StringListSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/settings/StringListSetting$1;->a:Lcom/nirenr/talkman/settings/StringListSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/StringListSetting;->a(Lcom/nirenr/talkman/settings/StringListSetting;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ArrayListAdapter;->clear()V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/StringListSetting$1;->a:Lcom/nirenr/talkman/settings/StringListSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/StringListSetting;->b(Lcom/nirenr/talkman/settings/StringListSetting;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/settings/StringListSetting$1;->a:Lcom/nirenr/talkman/settings/StringListSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/StringListSetting;->a(Lcom/nirenr/talkman/settings/StringListSetting;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/settings/StringListSetting$1;->a:Lcom/nirenr/talkman/settings/StringListSetting;

    invoke-static {p2}, Lcom/nirenr/talkman/settings/StringListSetting;->b(Lcom/nirenr/talkman/settings/StringListSetting;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "\\|"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ArrayListAdapter;->addAll([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
