.class public Lcom/reecedunn/espeak/preference/SeekBarPreference;
.super Landroid/preference/DialogPreference;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mDefaultValue:I

.field private mFormatter:Ljava/lang/String;

.field private mMax:I

.field private mMin:I

.field private mOldProgress:I

.field private mProgress:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mValueText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/reecedunn/espeak/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/reecedunn/espeak/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mOldProgress:I

    iput p1, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mProgress:I

    iput p1, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mDefaultValue:I

    iput p1, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mMin:I

    const/16 p1, 0x64

    iput p1, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mMax:I

    const-string p1, "%s"

    iput-object p1, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mFormatter:Ljava/lang/String;

    const p1, 0x7f050006

    invoke-virtual {p0, p1}, Landroid/preference/DialogPreference;->setDialogLayoutResource(I)V

    const p1, 0x7f050003

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setLayoutResource(I)V

    const p1, 0x104000a

    invoke-virtual {p0, p1}, Landroid/preference/DialogPreference;->setPositiveButtonText(I)V

    const p1, 0x7f070095

    invoke-virtual {p0, p1}, Landroid/preference/DialogPreference;->setNegativeButtonText(I)V

    return-void
.end method

.method static bridge synthetic a(Lcom/reecedunn/espeak/preference/SeekBarPreference;)I
    .locals 0

    iget p0, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mMin:I

    return p0
.end method

.method static bridge synthetic b(Lcom/reecedunn/espeak/preference/SeekBarPreference;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/reecedunn/espeak/preference/SeekBarPreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/reecedunn/espeak/preference/SeekBarPreference;->persistSettings(I)V

    return-void
.end method

.method private persistSettings(I)V
    .locals 2

    iput p1, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mProgress:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/preference/Preference;->shouldCommit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getDefaultValue()I
    .locals 1

    iget v0, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mDefaultValue:I

    return v0
.end method

.method public getFormatter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mFormatter:Ljava/lang/String;

    return-object v0
.end method

.method public getMax()I
    .locals 1

    iget v0, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mMax:I

    return v0
.end method

.method public getMin()I
    .locals 1

    iget v0, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mMin:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    iget v0, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mProgress:I

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p1, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mMax:I

    iget v1, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object p1, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mProgress:I

    iget v1, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget p1, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mProgress:I

    iput p1, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mOldProgress:I

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mMin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mOldProgress:I

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    invoke-super {p0}, Landroid/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f04002e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const v1, 0x7f040037

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    const v1, 0x7f04002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/reecedunn/espeak/preference/SeekBarPreference$1;

    invoke-direct {v2, p0}, Lcom/reecedunn/espeak/preference/SeekBarPreference$1;-><init>(Lcom/reecedunn/espeak/preference/SeekBarPreference;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget p1, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mOldProgress:I

    invoke-direct {p0, p1}, Lcom/reecedunn/espeak/preference/SeekBarPreference;->persistSettings(I)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/reecedunn/espeak/preference/SeekBarPreference;->getFormatter()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    iget v0, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mMin:I

    add-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p3, v0

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object p1, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    iget v0, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mMin:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/reecedunn/espeak/preference/SeekBarPreference;->persistSettings(I)V

    return-void
.end method

.method public setDefaultValue(I)V
    .locals 0

    iput p1, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mDefaultValue:I

    return-void
.end method

.method public setFormatter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mFormatter:Ljava/lang/String;

    return-void
.end method

.method public setMax(I)V
    .locals 0

    iput p1, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mMax:I

    return-void
.end method

.method public setMin(I)V
    .locals 0

    iput p1, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mMin:I

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mProgress:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mProgress:I

    iput p1, p0, Lcom/reecedunn/espeak/preference/SeekBarPreference;->mOldProgress:I

    return-void
.end method
