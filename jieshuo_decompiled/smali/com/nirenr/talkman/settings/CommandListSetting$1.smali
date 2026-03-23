.class Lcom/nirenr/talkman/settings/CommandListSetting$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/CommandListSetting;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/CommandListSetting;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/CommandListSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/CommandListSetting$1;->a:Lcom/nirenr/talkman/settings/CommandListSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/settings/CommandListSetting$1;->a:Lcom/nirenr/talkman/settings/CommandListSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/CommandListSetting;->a(Lcom/nirenr/talkman/settings/CommandListSetting;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ArrayListAdapter;->clear()V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/CommandListSetting$1;->a:Lcom/nirenr/talkman/settings/CommandListSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/CommandListSetting;->a(Lcom/nirenr/talkman/settings/CommandListSetting;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/settings/CommandListSetting$1;->a:Lcom/nirenr/talkman/settings/CommandListSetting;

    invoke-static {p2}, Lcom/nirenr/talkman/settings/CommandListSetting;->b(Lcom/nirenr/talkman/settings/CommandListSetting;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ArrayListAdapter;->addAll([Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/CommandListSetting$1;->a:Lcom/nirenr/talkman/settings/CommandListSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/CommandListSetting;->a(Lcom/nirenr/talkman/settings/CommandListSetting;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/settings/CommandListSetting$1;->a:Lcom/nirenr/talkman/settings/CommandListSetting;

    const v0, 0x7f070095

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ArrayListAdapter;->remove(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/CommandListSetting$1;->a:Lcom/nirenr/talkman/settings/CommandListSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/CommandListSetting;->f(Lcom/nirenr/talkman/settings/CommandListSetting;)V

    return-void
.end method
