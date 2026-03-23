.class Lcom/nirenr/talkman/settings/CommandListSetting$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/CommandListSetting;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nirenr/talkman/settings/CommandListSetting;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/CommandListSetting;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/CommandListSetting$4;->b:Lcom/nirenr/talkman/settings/CommandListSetting;

    iput p2, p0, Lcom/nirenr/talkman/settings/CommandListSetting$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/nirenr/talkman/settings/CommandListSetting$4;->b:Lcom/nirenr/talkman/settings/CommandListSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/CommandListSetting;->a(Lcom/nirenr/talkman/settings/CommandListSetting;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    iget v0, p0, Lcom/nirenr/talkman/settings/CommandListSetting$4;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    if-eq p2, v0, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/CommandListSetting$4;->b:Lcom/nirenr/talkman/settings/CommandListSetting;

    iget p2, p0, Lcom/nirenr/talkman/settings/CommandListSetting$4;->a:I

    invoke-static {p1, p2}, Lcom/nirenr/talkman/settings/CommandListSetting;->c(Lcom/nirenr/talkman/settings/CommandListSetting;I)V

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p2, p0, Lcom/nirenr/talkman/settings/CommandListSetting$4;->b:Lcom/nirenr/talkman/settings/CommandListSetting;

    const v0, 0x7f0703fc

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/settings/CommandListSetting$4;->b:Lcom/nirenr/talkman/settings/CommandListSetting;

    iget p2, p0, Lcom/nirenr/talkman/settings/CommandListSetting$4;->a:I

    invoke-static {p1, p2}, Lcom/nirenr/talkman/settings/CommandListSetting;->d(Lcom/nirenr/talkman/settings/CommandListSetting;I)V

    goto :goto_1

    :cond_2
    iget p2, p0, Lcom/nirenr/talkman/settings/CommandListSetting$4;->a:I

    iget-object v1, p0, Lcom/nirenr/talkman/settings/CommandListSetting$4;->b:Lcom/nirenr/talkman/settings/CommandListSetting;

    invoke-static {v1}, Lcom/nirenr/talkman/settings/CommandListSetting;->a(Lcom/nirenr/talkman/settings/CommandListSetting;)Landroid/widget/ArrayListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayListAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p2, v1, :cond_3

    return-void

    :cond_3
    iget-object p2, p0, Lcom/nirenr/talkman/settings/CommandListSetting$4;->b:Lcom/nirenr/talkman/settings/CommandListSetting;

    invoke-static {p2}, Lcom/nirenr/talkman/settings/CommandListSetting;->a(Lcom/nirenr/talkman/settings/CommandListSetting;)Landroid/widget/ArrayListAdapter;

    move-result-object p2

    iget v1, p0, Lcom/nirenr/talkman/settings/CommandListSetting$4;->a:I

    invoke-virtual {p2, v1}, Landroid/widget/ArrayListAdapter;->remove(I)V

    iget-object p2, p0, Lcom/nirenr/talkman/settings/CommandListSetting$4;->b:Lcom/nirenr/talkman/settings/CommandListSetting;

    invoke-static {p2}, Lcom/nirenr/talkman/settings/CommandListSetting;->a(Lcom/nirenr/talkman/settings/CommandListSetting;)Landroid/widget/ArrayListAdapter;

    move-result-object p2

    iget v1, p0, Lcom/nirenr/talkman/settings/CommandListSetting$4;->a:I

    add-int/2addr v1, v0

    goto :goto_0

    :cond_4
    iget p2, p0, Lcom/nirenr/talkman/settings/CommandListSetting$4;->a:I

    if-nez p2, :cond_5

    return-void

    :cond_5
    iget-object p2, p0, Lcom/nirenr/talkman/settings/CommandListSetting$4;->b:Lcom/nirenr/talkman/settings/CommandListSetting;

    invoke-static {p2}, Lcom/nirenr/talkman/settings/CommandListSetting;->a(Lcom/nirenr/talkman/settings/CommandListSetting;)Landroid/widget/ArrayListAdapter;

    move-result-object p2

    iget v1, p0, Lcom/nirenr/talkman/settings/CommandListSetting$4;->a:I

    invoke-virtual {p2, v1}, Landroid/widget/ArrayListAdapter;->remove(I)V

    iget-object p2, p0, Lcom/nirenr/talkman/settings/CommandListSetting$4;->b:Lcom/nirenr/talkman/settings/CommandListSetting;

    invoke-static {p2}, Lcom/nirenr/talkman/settings/CommandListSetting;->a(Lcom/nirenr/talkman/settings/CommandListSetting;)Landroid/widget/ArrayListAdapter;

    move-result-object p2

    iget v1, p0, Lcom/nirenr/talkman/settings/CommandListSetting$4;->a:I

    sub-int/2addr v1, v0

    :goto_0
    invoke-virtual {p2, v1, p1}, Landroid/widget/ArrayListAdapter;->insert(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/CommandListSetting$4;->b:Lcom/nirenr/talkman/settings/CommandListSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/CommandListSetting;->f(Lcom/nirenr/talkman/settings/CommandListSetting;)V

    :cond_6
    :goto_1
    return-void
.end method
