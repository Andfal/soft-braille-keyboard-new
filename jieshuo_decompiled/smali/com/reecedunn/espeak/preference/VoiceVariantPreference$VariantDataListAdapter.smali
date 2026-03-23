.class public Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantDataListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reecedunn/espeak/preference/VoiceVariantPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VariantDataListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/reecedunn/espeak/preference/VoiceVariantPreference;


# direct methods
.method public constructor <init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;Landroid/app/Activity;[Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;)V
    .locals 0

    iput-object p1, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantDataListAdapter;->this$0:Lcom/reecedunn/espeak/preference/VoiceVariantPreference;

    const p1, 0x1090003

    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantDataListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantDataListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantDataListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x1090003

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$ViewHolder;

    invoke-direct {p3}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$ViewHolder;-><init>()V

    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$ViewHolder;

    :goto_0
    iget-object p3, p3, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$ViewHolder;->text:Landroid/widget/TextView;

    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;->getDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
