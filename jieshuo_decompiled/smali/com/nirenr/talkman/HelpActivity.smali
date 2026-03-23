.class public Lcom/nirenr/talkman/HelpActivity;
.super Landroid/app/BaseListActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/BaseListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "RES_ID"

    const v1, 0x7f01000a

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_0

    const v0, 0x7f0702db

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_1

    :cond_0
    const v0, 0x7f010005

    if-ne p1, v0, :cond_1

    const v0, 0x7f0700f2

    goto :goto_0

    :cond_1
    const v0, 0x7f010009

    if-ne p1, v0, :cond_2

    const v0, 0x7f0702c6

    goto :goto_0

    :cond_2
    const v0, 0x7f010026

    if-ne p1, v0, :cond_3

    const v0, 0x7f07093c

    goto :goto_0

    :cond_3
    :goto_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/app/BaseListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const v1, 0x1090003

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/BaseListActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/BaseListActivity;->onResume()V

    return-void
.end method
