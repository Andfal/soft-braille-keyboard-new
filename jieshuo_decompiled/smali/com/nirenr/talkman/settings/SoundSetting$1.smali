.class Lcom/nirenr/talkman/settings/SoundSetting$1;
.super Landroid/widget/ArrayListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/SoundSetting;->e()V
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
.field final synthetic a:Lcom/nirenr/talkman/settings/SoundSetting;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/SoundSetting;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$1;->a:Lcom/nirenr/talkman/settings/SoundSetting;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/nirenr/talkman/settings/SoundSetting$1$1;

    invoke-direct {p2, p0}, Lcom/nirenr/talkman/settings/SoundSetting$1$1;-><init>(Lcom/nirenr/talkman/settings/SoundSetting$1;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-object p1
.end method
