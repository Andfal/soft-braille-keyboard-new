.class Lcom/reecedunn/espeak/preference/SeekBarPreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reecedunn/espeak/preference/SeekBarPreference;->onCreateDialogView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reecedunn/espeak/preference/SeekBarPreference;


# direct methods
.method constructor <init>(Lcom/reecedunn/espeak/preference/SeekBarPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference$1;->this$0:Lcom/reecedunn/espeak/preference/SeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference$1;->this$0:Lcom/reecedunn/espeak/preference/SeekBarPreference;

    invoke-virtual {p1}, Lcom/reecedunn/espeak/preference/SeekBarPreference;->getDefaultValue()I

    move-result p1

    iget-object v0, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference$1;->this$0:Lcom/reecedunn/espeak/preference/SeekBarPreference;

    invoke-static {v0}, Lcom/reecedunn/espeak/preference/SeekBarPreference;->b(Lcom/reecedunn/espeak/preference/SeekBarPreference;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference$1;->this$0:Lcom/reecedunn/espeak/preference/SeekBarPreference;

    invoke-static {v1}, Lcom/reecedunn/espeak/preference/SeekBarPreference;->a(Lcom/reecedunn/espeak/preference/SeekBarPreference;)I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference$1;->this$0:Lcom/reecedunn/espeak/preference/SeekBarPreference;

    invoke-static {v0, p1}, Lcom/reecedunn/espeak/preference/SeekBarPreference;->c(Lcom/reecedunn/espeak/preference/SeekBarPreference;I)V

    return-void
.end method
