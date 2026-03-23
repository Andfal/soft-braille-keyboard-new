.class public Lcom/nirenr/talkman/VoiceHelperHelpActivity;
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

    new-instance p1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/app/BaseListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f010026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const v1, 0x1090003

    invoke-direct {p1, p0, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

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
