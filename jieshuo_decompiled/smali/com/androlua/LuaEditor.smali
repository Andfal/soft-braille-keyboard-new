.class public Lcom/androlua/LuaEditor;
.super Lcom/myopicmobile/textwarrior/android/c;
.source "SourceFile"


# instance fields
.field private _index:I

.field private _inputingDoc:Ld2/e;

.field private _isWordWrap:Z

.field private _lastSelectedFile:Ljava/lang/String;

.field private finder:Ld2/l;

.field private fontDir:Ljava/lang/String;

.field private idx:I

.field private mContext:Landroid/content/Context;

.field private mKeyword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/myopicmobile/textwarrior/android/c;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    const-string v1, "fonts"

    invoke-virtual {v0, v1}, Lcom/androlua/LuaApplication;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaEditor;->fontDir:Ljava/lang/String;

    iput-object p1, p0, Lcom/androlua/LuaEditor;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/c;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/androlua/LuaEditor;->fontDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "default.ttf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/c;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/androlua/LuaEditor;->fontDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "bold.ttf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/c;->setBoldTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/androlua/LuaEditor;->fontDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "italic.ttf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/c;->setItalicTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    sget v0, Lcom/myopicmobile/textwarrior/android/c;->BASE_TEXT_SIZE_PIXELS:I

    int-to-float v0, v0

    const/4 v1, 0x2

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/android/c;->setTextSize(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/android/c;->setShowLineNumbers(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/c;->setHighlightCurrentRow(Z)V

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->setWordWrap(Z)V

    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/c;->setAutoIndentWidth(I)V

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/android/c;->setAutoComplete(Z)V

    invoke-static {}, Ld2/i;->E()Ld2/h;

    move-result-object v2

    invoke-static {v2}, Ld2/k;->g(Ld2/h;)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->isAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/myopicmobile/textwarrior/android/j;

    invoke-direct {v2, p0}, Lcom/myopicmobile/textwarrior/android/j;-><init>(Lcom/myopicmobile/textwarrior/android/c;)V

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/myopicmobile/textwarrior/android/k;

    invoke-direct {v2, p0}, Lcom/myopicmobile/textwarrior/android/k;-><init>(Lcom/myopicmobile/textwarrior/android/c;)V

    :goto_0
    invoke-virtual {p0, v2}, Lcom/myopicmobile/textwarrior/android/c;->setNavigationMethod(Lcom/myopicmobile/textwarrior/android/i;)V

    iget-object v2, p0, Lcom/androlua/LuaEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const v3, 0xff00ff

    invoke-virtual {v2, p1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p1}, Lcom/androlua/LuaEditor;->setTextColor(I)V

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->setTextHighlightColor(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1010031
        0x1010036
        0x1010099
    .end array-data
.end method

.method static synthetic access$000(Lcom/androlua/LuaEditor;)Ld2/f;
    .locals 0

    iget-object p0, p0, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    return-object p0
.end method

.method static synthetic access$100(Lcom/androlua/LuaEditor;)Ld2/f;
    .locals 0

    iget-object p0, p0, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    return-object p0
.end method

.method static bridge synthetic t(Lcom/androlua/LuaEditor;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaEditor;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public addNames([Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Ld2/k;->d()Ld2/h;

    move-result-object v0

    check-cast v0, Ld2/i;

    invoke-virtual {v0}, Ld2/h;->g()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    array-length v3, p1

    invoke-static {p1, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, v2}, Ld2/h;->B([Ljava/lang/String;)V

    invoke-static {v0}, Ld2/k;->g(Ld2/h;)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->respan()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public addPackage(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaEditor;->addPackage(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public addPackage(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ld2/k;->d()Ld2/h;

    move-result-object v0

    check-cast v0, Ld2/i;

    invoke-virtual {v0, p1, p2}, Ld2/h;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v0}, Ld2/k;->g(Ld2/h;)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->respan()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public findBack()Z
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaEditor;->mKeyword:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->findBack(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public findBack(Ljava/lang/String;)Z
    .locals 9

    iget-object v0, p0, Lcom/androlua/LuaEditor;->mKeyword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/androlua/LuaEditor;->mKeyword:Ljava/lang/String;

    iput v1, p0, Lcom/androlua/LuaEditor;->idx:I

    :cond_0
    new-instance v0, Ld2/l;

    invoke-direct {v0}, Ld2/l;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaEditor;->finder:Ld2/l;

    iget-object v4, p0, Lcom/androlua/LuaEditor;->mKeyword:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/c;->selectText(Z)V

    return v1

    :cond_1
    iget-object v2, p0, Lcom/androlua/LuaEditor;->finder:Ld2/l;

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getText()Ld2/f;

    move-result-object v3

    iget v0, p0, Lcom/androlua/LuaEditor;->idx:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v0, p1

    const/4 p1, 0x1

    add-int/lit8 v5, v0, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ld2/l;->c(Ld2/f;Ljava/lang/String;IIZZ)I

    move-result v0

    iput v0, p0, Lcom/androlua/LuaEditor;->idx:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/c;->selectText(Z)V

    iget-object p1, p0, Lcom/androlua/LuaEditor;->mContext:Landroid/content/Context;

    const v0, 0x7f070403

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->getLength()I

    move-result p1

    iput p1, p0, Lcom/androlua/LuaEditor;->idx:I

    return v1

    :cond_2
    iget-object v1, p0, Lcom/androlua/LuaEditor;->mKeyword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/myopicmobile/textwarrior/android/c;->setSelection(II)V

    iget v0, p0, Lcom/androlua/LuaEditor;->idx:I

    iget-object v1, p0, Lcom/androlua/LuaEditor;->mKeyword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/androlua/LuaEditor;->idx:I

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/c;->moveCaret(I)V

    return p1
.end method

.method public findNext()Z
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaEditor;->mKeyword:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->findNext(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public findNext(Ljava/lang/String;)Z
    .locals 9

    iget-object v0, p0, Lcom/androlua/LuaEditor;->mKeyword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/androlua/LuaEditor;->mKeyword:Ljava/lang/String;

    iput v1, p0, Lcom/androlua/LuaEditor;->idx:I

    :cond_0
    new-instance p1, Ld2/l;

    invoke-direct {p1}, Ld2/l;-><init>()V

    iput-object p1, p0, Lcom/androlua/LuaEditor;->finder:Ld2/l;

    iget-object v4, p0, Lcom/androlua/LuaEditor;->mKeyword:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/c;->selectText(Z)V

    return v1

    :cond_1
    iget-object v2, p0, Lcom/androlua/LuaEditor;->finder:Ld2/l;

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getText()Ld2/f;

    move-result-object v3

    iget v5, p0, Lcom/androlua/LuaEditor;->idx:I

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getText()Ld2/f;

    move-result-object p1

    invoke-virtual {p1}, Ld2/f;->length()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ld2/l;->b(Ld2/f;Ljava/lang/String;IIZZ)I

    move-result p1

    iput p1, p0, Lcom/androlua/LuaEditor;->idx:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/c;->selectText(Z)V

    iget-object p1, p0, Lcom/androlua/LuaEditor;->mContext:Landroid/content/Context;

    const v0, 0x7f070403

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iput v1, p0, Lcom/androlua/LuaEditor;->idx:I

    return v1

    :cond_2
    iget-object v0, p0, Lcom/androlua/LuaEditor;->mKeyword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/myopicmobile/textwarrior/android/c;->setSelection(II)V

    iget p1, p0, Lcom/androlua/LuaEditor;->idx:I

    iget-object v0, p0, Lcom/androlua/LuaEditor;->mKeyword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/androlua/LuaEditor;->idx:I

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/android/c;->moveCaret(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaEditor;->_lastSelectedFile:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->getSelectionEnd()I

    move-result v2

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->getSelectionStart()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ld2/f;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ld2/f;
    .locals 1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->createDocumentProvider()Ld2/f;

    move-result-object v0

    return-object v0
.end method

.method public gotoLine()V
    .locals 0

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->startGotoMode()V

    return-void
.end method

.method public gotoLine(I)V
    .locals 1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v0}, Ld2/f;->k()I

    move-result v0

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {p1}, Ld2/f;->k()I

    move-result p1

    :cond_0
    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getText()Ld2/f;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ld2/f;->i(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaEditor;->setSelection(I)V

    return-void
.end method

.method public insert(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/c;->selectText(Z)V

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/android/c;->moveCaret(I)V

    invoke-virtual {p0, p2}, Lcom/myopicmobile/textwarrior/android/c;->paste(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, -0x7001

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x1d

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x32

    if-eq p1, v0, :cond_1

    const/16 v0, 0x34

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->cut()V

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->paste()V

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->copy()V

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->selectAll()V

    return v1

    :cond_4
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/myopicmobile/textwarrior/android/c;->onLayout(ZIIII)V

    iget p1, p0, Lcom/androlua/LuaEditor;->_index:I

    if-eqz p1, :cond_0

    if-lez p4, :cond_0

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/android/c;->moveCaret(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/androlua/LuaEditor;->_index:I

    :cond_0
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lcom/androlua/LuaEditor;->_lastSelectedFile:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/androlua/LuaEditor;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/androlua/LuaUtil;->readAll(Ljava/io/InputStream;)[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-le v0, v1, :cond_3

    aget-byte v0, p1, v2

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v4, -0x2

    if-ne v0, v3, :cond_1

    aget-byte v5, p1, v1

    if-ne v5, v4, :cond_1

    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF16LE"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    aget-byte v1, p1, v1

    if-ne v1, v3, :cond_2

    if-ne v0, v4, :cond_2

    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF16BE"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    const/16 v3, -0x11

    if-ne v0, v3, :cond_3

    const/16 v0, -0x45

    if-ne v1, v0, :cond_3

    const/4 v0, 0x2

    aget-byte v0, p1, v0

    const/16 v1, -0x41

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    new-instance v0, Lv3/i;

    invoke-direct {v0, v2}, Lv3/i;-><init>(I)V

    new-instance v1, Lcom/androlua/LuaEditor$3;

    invoke-direct {v1, p0, p1}, Lcom/androlua/LuaEditor$3;-><init>(Lcom/androlua/LuaEditor;[B)V

    invoke-virtual {v0, v1}, Lv3/i;->i(Lv3/r;)V

    array-length v1, p1

    invoke-virtual {v0, p1, v1, v2}, Lv3/i;->h([BIZ)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v1}, Lcom/androlua/LuaEditor;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-virtual {v0}, Lv3/v;->a()V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6

    const/16 v0, 0x100

    const/16 v1, 0x10

    const/4 v2, 0x4

    const-string v3, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p1, v0, :cond_e

    const/16 v0, 0x200

    if-eq p1, v0, :cond_9

    const/16 v0, 0x4000

    if-eq p1, v0, :cond_8

    const v0, 0x8000

    if-eq p1, v0, :cond_7

    const/high16 v0, 0x10000

    if-eq p1, v0, :cond_6

    const/high16 v0, 0x20000

    if-eq p1, v0, :cond_2

    const/high16 v0, 0x200000

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/myopicmobile/textwarrior/android/c;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/myopicmobile/textwarrior/android/c;->selectText(Z)V

    if-nez p2, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    const-string p1, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1, v5}, Lcom/androlua/LuaEditor;->setText(Ljava/lang/CharSequence;Z)V

    return v5

    :cond_2
    if-nez p2, :cond_3

    return v5

    :cond_3
    const-string p1, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {p2, p1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {p2, v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {p2, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_4

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/myopicmobile/textwarrior/android/c;->setSelectionRange(II)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->isSelectText()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/android/c;->moveCaret(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1}, Lcom/androlua/LuaEditor;->setSelection(I)V

    :goto_1
    return v5

    :cond_6
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->cut()V

    return v5

    :cond_7
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->paste()V

    return v5

    :cond_8
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->copy()V

    return v5

    :cond_9
    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v5, :cond_c

    if-eq p1, v2, :cond_b

    if-eq p1, v1, :cond_a

    goto :goto_2

    :cond_a
    return v4

    :cond_b
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->moveCaretUp()V

    :goto_2
    return v5

    :cond_c
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->getCaretPosition()I

    move-result p1

    if-gtz p1, :cond_d

    return v4

    :cond_d
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->moveCaretLeft()V

    return v5

    :cond_e
    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v5, :cond_11

    if-eq p1, v2, :cond_10

    if-eq p1, v1, :cond_f

    goto :goto_3

    :cond_f
    return v4

    :cond_10
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->moveCaretDown()V

    goto :goto_3

    :cond_11
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->getCaretPosition()I

    move-result p1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->getLength()I

    move-result p2

    sub-int/2addr p2, v5

    if-lt p1, p2, :cond_12

    return v4

    :cond_12
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->moveCaretRight()V

    :goto_3
    return v5
.end method

.method public redo()V
    .locals 2

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->createDocumentProvider()Ld2/f;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f;->u()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/c;->setEdited(Z)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->respan()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/c;->selectText(Z)V

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/c;->moveCaret(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public save()Z
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaEditor;->_lastSelectedFile:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->save(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public save(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getText()Ld2/f;

    move-result-object p1

    invoke-virtual {p1}, Ld2/f;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    return v0
.end method

.method public search()V
    .locals 0

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->startFindMode()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->getColorScheme()Ld2/b;

    move-result-object v0

    sget-object v1, Ld2/b$a;->b:Ld2/b$a;

    invoke-virtual {v0, v1, p1}, Ld2/b;->d(Ld2/b$a;I)V

    return-void
.end method

.method public setBasewordColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->getColorScheme()Ld2/b;

    move-result-object v0

    sget-object v1, Ld2/b$a;->l:Ld2/b$a;

    invoke-virtual {v0, v1, p1}, Ld2/b;->d(Ld2/b$a;I)V

    return-void
.end method

.method public setCommentColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->getColorScheme()Ld2/b;

    move-result-object v0

    sget-object v1, Ld2/b$a;->j:Ld2/b$a;

    invoke-virtual {v0, v1, p1}, Ld2/b;->d(Ld2/b$a;I)V

    return-void
.end method

.method public setDark(Z)V
    .locals 0

    if-eqz p1, :cond_0

    new-instance p1, Ld2/c;

    invoke-direct {p1}, Ld2/c;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Ld2/d;

    invoke-direct {p1}, Ld2/d;-><init>()V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/android/c;->setColorScheme(Ld2/b;)V

    return-void
.end method

.method public setKeywordColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->getColorScheme()Ld2/b;

    move-result-object v0

    sget-object v1, Ld2/b$a;->k:Ld2/b$a;

    invoke-virtual {v0, v1, p1}, Ld2/b;->d(Ld2/b$a;I)V

    return-void
.end method

.method public setPanelBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c;->_autoCompletePanel:Lcom/myopicmobile/textwarrior/android/a;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/android/a;->m(I)V

    return-void
.end method

.method public setPanelTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c;->_autoCompletePanel:Lcom/myopicmobile/textwarrior/android/a;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/android/a;->q(I)V

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/c;->selectText(Z)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->hasLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/android/c;->moveCaret(I)V

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/androlua/LuaEditor;->_index:I

    :goto_0
    return-void
.end method

.method public setStringColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->getColorScheme()Ld2/b;

    move-result-object v0

    sget-object v1, Ld2/b$a;->n:Ld2/b$a;

    invoke-virtual {v0, v1, p1}, Ld2/b;->d(Ld2/b$a;I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    new-instance v0, Ld2/e;

    invoke-direct {v0, p0}, Ld2/e;-><init>(Ld2/e$a;)V

    iget-boolean v1, p0, Lcom/androlua/LuaEditor;->_isWordWrap:Z

    invoke-virtual {v0, v1}, Ld2/e;->V(Z)V

    invoke-virtual {v0, p1}, Ld2/e;->U(Ljava/lang/CharSequence;)V

    new-instance p1, Ld2/f;

    invoke-direct {p1, v0}, Ld2/f;-><init>(Ld2/e;)V

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/android/c;->setDocumentProvider(Ld2/f;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->getLength()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p1}, Lcom/myopicmobile/textwarrior/android/c;->replaceText(IILjava/lang/String;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->getColorScheme()Ld2/b;

    move-result-object v0

    sget-object v1, Ld2/b$a;->a:Ld2/b$a;

    invoke-virtual {v0, v1, p1}, Ld2/b;->d(Ld2/b$a;I)V

    return-void
.end method

.method public setTextHighlightColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->getColorScheme()Ld2/b;

    move-result-object v0

    sget-object v1, Ld2/b$a;->d:Ld2/b$a;

    invoke-virtual {v0, v1, p1}, Ld2/b;->d(Ld2/b$a;I)V

    return-void
.end method

.method public setUserwordColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->getColorScheme()Ld2/b;

    move-result-object v0

    sget-object v1, Ld2/b$a;->m:Ld2/b$a;

    invoke-virtual {v0, v1, p1}, Ld2/b;->d(Ld2/b$a;I)V

    return-void
.end method

.method public setWordWrap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/androlua/LuaEditor;->_isWordWrap:Z

    invoke-super {p0, p1}, Lcom/myopicmobile/textwarrior/android/c;->setWordWrap(Z)V

    return-void
.end method

.method public startFindMode()V
    .locals 1

    new-instance v0, Lcom/androlua/LuaEditor$2;

    invoke-direct {v0, p0}, Lcom/androlua/LuaEditor$2;-><init>(Lcom/androlua/LuaEditor;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    return-void
.end method

.method public startGotoMode()V
    .locals 1

    new-instance v0, Lcom/androlua/LuaEditor$1;

    invoke-direct {v0, p0}, Lcom/androlua/LuaEditor$1;-><init>(Lcom/androlua/LuaEditor;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    return-void
.end method

.method public undo()V
    .locals 2

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->createDocumentProvider()Ld2/f;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f;->y()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/c;->setEdited(Z)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c;->respan()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/c;->selectText(Z)V

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/c;->moveCaret(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
