.class Lcom/reecedunn/espeak/preference/VoiceVariantPreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mInitializing:Z

.field final synthetic this$0:Lcom/reecedunn/espeak/preference/VoiceVariantPreference;

.field final synthetic val$variant:I


# direct methods
.method constructor <init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;I)V
    .locals 0

    iput-object p1, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$1;->this$0:Lcom/reecedunn/espeak/preference/VoiceVariantPreference;

    iput p2, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$1;->val$variant:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$1;->mInitializing:Z

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$1;->this$0:Lcom/reecedunn/espeak/preference/VoiceVariantPreference;

    invoke-static {p1}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->a(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;)Landroid/widget/Spinner;

    move-result-object p1

    new-instance p2, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantDataListAdapter;

    iget-object p4, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$1;->this$0:Lcom/reecedunn/espeak/preference/VoiceVariantPreference;

    invoke-virtual {p4}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p5

    check-cast p5, Landroid/app/Activity;

    iget-object v0, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$1;->this$0:Lcom/reecedunn/espeak/preference/VoiceVariantPreference;

    invoke-static {v0}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->b(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;)[[Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;

    move-result-object v0

    aget-object v0, v0, p3

    invoke-direct {p2, p4, p5, v0}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantDataListAdapter;-><init>(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;Landroid/app/Activity;[Lcom/reecedunn/espeak/preference/VoiceVariantPreference$VariantData;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-boolean p1, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$1;->mInitializing:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$1;->this$0:Lcom/reecedunn/espeak/preference/VoiceVariantPreference;

    invoke-static {p1}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->a(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;)Landroid/widget/Spinner;

    move-result-object p1

    iget p2, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$1;->val$variant:I

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$1;->mInitializing:Z

    :cond_0
    iget-object p1, p0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference$1;->this$0:Lcom/reecedunn/espeak/preference/VoiceVariantPreference;

    invoke-static {p1, p3}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->c(Lcom/reecedunn/espeak/preference/VoiceVariantPreference;I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
