.class Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$5;
.super Landroid/widget/ArrayListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->k(Landroid/preference/Preference;Ljava/io/File;)V
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
.field final synthetic a:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$5;->a:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$5$1;

    invoke-direct {p3, p0, p1}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$5$1;-><init>(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$5;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-object p2
.end method
