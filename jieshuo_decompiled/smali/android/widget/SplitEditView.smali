.class public Landroid/widget/SplitEditView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SplitEditView$SingleLineAdapter;,
        Landroid/widget/SplitEditView$EditDialog;,
        Landroid/widget/SplitEditView$OnModeChangedListener;,
        Landroid/widget/SplitEditView$OnExitListener;,
        Landroid/widget/SplitEditView$OnSaveListener;
    }
.end annotation


# static fields
.field private static final ALL:I = 0x0

.field private static final CHAR:I = 0x4

.field private static final CHUNK:I = 0x1

.field private static final EXIT:I = 0x6

.field private static final LINE:I = 0x2

.field private static final ROW:I = 0x3

.field private static final SAVE:I = 0x5


# instance fields
.field private mButtonBar:Landroid/widget/LinearLayout;

.field private final mContext:Landroid/content/Context;

.field private mEditView:Lcom/androlua/LuaEditor;

.field private mList:[Ljava/lang/String;

.field private mListView:Landroid/widget/GridView;

.field private mModeChangedListener:Landroid/widget/SplitEditView$OnModeChangedListener;

.field private mOnExitListener:Landroid/widget/SplitEditView$OnExitListener;

.field private mOnSaveListener:Landroid/widget/SplitEditView$OnSaveListener;

.field private mRoot:Landroid/widget/LinearLayout;

.field private mSplitMode:I

.field private mText:Ljava/lang/String;

.field private useSplitLine:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SplitEditView;->mSplitMode:I

    const-string v1, ""

    iput-object v1, p0, Landroid/widget/SplitEditView;->mText:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SplitEditView;->mList:[Ljava/lang/String;

    iput-object p1, p0, Landroid/widget/SplitEditView;->mContext:Landroid/content/Context;

    const v1, 0x7f070846

    invoke-static {p1, v1, v0}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/SplitEditView;->useSplitLine:Z

    invoke-direct {p0, p1}, Landroid/widget/SplitEditView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic a(Landroid/widget/SplitEditView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/SplitEditView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic b(Landroid/widget/SplitEditView;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/widget/SplitEditView;->mList:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic c(Landroid/widget/SplitEditView;)Landroid/widget/GridView;
    .locals 0

    iget-object p0, p0, Landroid/widget/SplitEditView;->mListView:Landroid/widget/GridView;

    return-object p0
.end method

.method static bridge synthetic d(Landroid/widget/SplitEditView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SplitEditView;->mSplitMode:I

    return p0
.end method

.method static bridge synthetic e(Landroid/widget/SplitEditView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/SplitEditView;->useSplitLine:Z

    return p0
.end method

.method static bridge synthetic f(Landroid/widget/SplitEditView;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SplitEditView;->useSplitLine:Z

    return-void
.end method

.method static bridge synthetic g(Landroid/widget/SplitEditView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SplitEditView;->updateSplit()V

    return-void
.end method

.method private initText()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/SplitEditView;->mText:Ljava/lang/String;

    aput-object v3, v1, v2

    iput-object v1, p0, Landroid/widget/SplitEditView;->mList:[Ljava/lang/String;

    iget v1, p0, Landroid/widget/SplitEditView;->mSplitMode:I

    if-eq v1, v0, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-direct {p0, v0}, Landroid/widget/SplitEditView;->setShowEdit(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/widget/SplitEditView;->splitChar()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/widget/SplitEditView;->splitRow()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/widget/SplitEditView;->splitLine()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroid/widget/SplitEditView;->splitChunk()V

    :goto_0
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 10

    iput-object p0, p0, Landroid/widget/SplitEditView;->mRoot:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/GridView;

    invoke-direct {v2, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/SplitEditView;->mListView:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    new-instance v2, Lcom/androlua/LuaEditor;

    invoke-direct {v2, p1}, Lcom/androlua/LuaEditor;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    iget-object v2, p0, Landroid/widget/SplitEditView;->mListView:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Landroid/widget/SplitEditView;->mRoot:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/widget/SplitEditView;->mListView:Landroid/widget/GridView;

    invoke-virtual {v2, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Landroid/widget/SplitEditView;->mRoot:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v2, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/SplitEditView;->mButtonBar:Landroid/widget/LinearLayout;

    const/4 v1, 0x7

    new-array v2, v1, [Ljava/lang/String;

    iget-object v5, p0, Landroid/widget/SplitEditView;->mContext:Landroid/content/Context;

    const v6, 0x7f070625

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    iget-object v5, p0, Landroid/widget/SplitEditView;->mContext:Landroid/content/Context;

    const v7, 0x7f07062a

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    iget-object v0, p0, Landroid/widget/SplitEditView;->mContext:Landroid/content/Context;

    const v5, 0x7f070628

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    aput-object v0, v2, v5

    iget-object v0, p0, Landroid/widget/SplitEditView;->mContext:Landroid/content/Context;

    const v7, 0x7f07062f

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x3

    aput-object v0, v2, v7

    iget-object v0, p0, Landroid/widget/SplitEditView;->mContext:Landroid/content/Context;

    const v8, 0x7f070626

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x4

    aput-object v0, v2, v8

    iget-object v0, p0, Landroid/widget/SplitEditView;->mContext:Landroid/content/Context;

    const v8, 0x104000a

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x5

    aput-object v0, v2, v8

    iget-object v0, p0, Landroid/widget/SplitEditView;->mContext:Landroid/content/Context;

    const v8, 0x7f07026b

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x6

    aput-object v0, v2, v8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v8, v2, v0

    new-instance v9, Landroid/widget/Button;

    invoke-direct {v9, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setId(I)V

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Landroid/widget/SplitEditView;->mButtonBar:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-ne v0, v5, :cond_0

    new-instance v8, Landroid/widget/SplitEditView$1;

    invoke-direct {v8, p0}, Landroid/widget/SplitEditView$1;-><init>(Landroid/widget/SplitEditView;)V

    invoke-virtual {v9, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/widget/SplitEditView;->mRoot:Landroid/widget/LinearLayout;

    iget-object v0, p0, Landroid/widget/SplitEditView;->mButtonBar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Landroid/widget/SplitEditView;->mListView:Landroid/widget/GridView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/SplitEditView;->setText(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/SplitEditView;->setOnSaveListener(Landroid/widget/SplitEditView$OnSaveListener;)V

    invoke-virtual {p0, p1}, Landroid/widget/SplitEditView;->setOnExitListener(Landroid/widget/SplitEditView$OnExitListener;)V

    return-void
.end method

.method private setShowEdit(Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/SplitEditView;->isShowEdit()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Landroid/widget/SplitEditView;->mListView:Landroid/widget/GridView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {p1}, Lcom/androlua/LuaEditor;->getText()Ld2/f;

    move-result-object p1

    invoke-virtual {p1}, Ld2/f;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/SplitEditView;->mText:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v2

    iput-object v0, p0, Landroid/widget/SplitEditView;->mList:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/SplitEditView;->getText()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v3}, Lcom/androlua/LuaEditor;->getText()Ld2/f;

    move-result-object v3

    invoke-virtual {v3}, Ld2/f;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {p0}, Landroid/widget/SplitEditView;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Lcom/androlua/LuaEditor;->setText(Ljava/lang/CharSequence;Z)V

    :cond_2
    iget-object p1, p0, Landroid/widget/SplitEditView;->mListView:Landroid/widget/GridView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iget v3, p0, Landroid/widget/SplitEditView;->mSplitMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    :cond_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Landroid/widget/SplitEditView;->mSplitMode:I

    if-ne v1, v4, :cond_1

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eq v1, p2, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1
.end method

.method private splitChar()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/SplitEditView;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SplitEditView;->mText:Ljava/lang/String;

    const/4 v1, 0x4

    iput v1, p0, Landroid/widget/SplitEditView;->mSplitMode:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/SplitEditView;->mList:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/widget/SplitEditView;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/SplitEditView;->mList:[Ljava/lang/String;

    iget-object v2, p0, Landroid/widget/SplitEditView;->mText:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/SplitEditView;->mList:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SplitEditView;->mList:[Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Landroid/widget/SplitEditView;->mListView:Landroid/widget/GridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Landroid/widget/SplitEditView;->mListView:Landroid/widget/GridView;

    new-instance v1, Landroid/widget/SplitEditView$SingleLineAdapter;

    iget-object v2, p0, Landroid/widget/SplitEditView;->mContext:Landroid/content/Context;

    const v3, 0x1090003

    iget-object v4, p0, Landroid/widget/SplitEditView;->mList:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, v4}, Landroid/widget/SplitEditView$SingleLineAdapter;-><init>(Landroid/widget/SplitEditView;Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private splitChunk()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/SplitEditView;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SplitEditView;->mText:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/SplitEditView;->mSplitMode:I

    const-string v2, "\\n{2,10}"

    invoke-direct {p0, v0, v2}, Landroid/widget/SplitEditView;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SplitEditView;->mList:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SplitEditView;->mList:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Landroid/widget/SplitEditView;->mListView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Landroid/widget/SplitEditView;->mListView:Landroid/widget/GridView;

    new-instance v1, Landroid/widget/SplitEditView$SingleLineAdapter;

    iget-object v2, p0, Landroid/widget/SplitEditView;->mContext:Landroid/content/Context;

    const v3, 0x1090003

    iget-object v4, p0, Landroid/widget/SplitEditView;->mList:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, v4}, Landroid/widget/SplitEditView$SingleLineAdapter;-><init>(Landroid/widget/SplitEditView;Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private splitLine()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/SplitEditView;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SplitEditView;->mText:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/SplitEditView;->mSplitMode:I

    const-string v1, "\n"

    invoke-direct {p0, v0, v1}, Landroid/widget/SplitEditView;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SplitEditView;->mList:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SplitEditView;->mList:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Landroid/widget/SplitEditView;->mListView:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Landroid/widget/SplitEditView;->mListView:Landroid/widget/GridView;

    new-instance v1, Landroid/widget/SplitEditView$SingleLineAdapter;

    iget-object v2, p0, Landroid/widget/SplitEditView;->mContext:Landroid/content/Context;

    const v3, 0x1090003

    iget-object v4, p0, Landroid/widget/SplitEditView;->mList:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, v4}, Landroid/widget/SplitEditView$SingleLineAdapter;-><init>(Landroid/widget/SplitEditView;Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private splitRow()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/SplitEditView;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SplitEditView;->mText:Ljava/lang/String;

    const/4 v1, 0x3

    iput v1, p0, Landroid/widget/SplitEditView;->mSplitMode:I

    const-string v1, "\\.[ \r\n]|[^a-zA-Z0-9][\\.]|[,!?;\u3002\uff1f\uff01\u2026\uff0c\r\n\uff1a\uff1b\\?!]+|[\u3002\uff1f\uff01\u2026 \u2014]\u201c"

    invoke-direct {p0, v0, v1}, Landroid/widget/SplitEditView;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SplitEditView;->mList:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SplitEditView;->mList:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Landroid/widget/SplitEditView;->mListView:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Landroid/widget/SplitEditView;->mListView:Landroid/widget/GridView;

    new-instance v1, Landroid/widget/SplitEditView$SingleLineAdapter;

    iget-object v2, p0, Landroid/widget/SplitEditView;->mContext:Landroid/content/Context;

    const v3, 0x1090003

    iget-object v4, p0, Landroid/widget/SplitEditView;->mList:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, v4}, Landroid/widget/SplitEditView$SingleLineAdapter;-><init>(Landroid/widget/SplitEditView;Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private updateSplit()V
    .locals 3

    iget v0, p0, Landroid/widget/SplitEditView;->mSplitMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/widget/SplitEditView;->splitChar()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/widget/SplitEditView;->splitRow()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/widget/SplitEditView;->splitLine()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroid/widget/SplitEditView;->splitChunk()V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/SplitEditView;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v2}, Lcom/androlua/LuaEditor;->getText()Ld2/f;

    move-result-object v2

    invoke-virtual {v2}, Ld2/f;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {p0}, Landroid/widget/SplitEditView;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/androlua/LuaEditor;->setText(Ljava/lang/CharSequence;Z)V

    :cond_4
    return-void
.end method


# virtual methods
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

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0, p1, p2}, Lcom/androlua/LuaEditor;->addPackage(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public copy()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/c;->copy()V

    return-void
.end method

.method public cut()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/c;->cut()V

    return-void
.end method

.method public findBack()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/androlua/LuaEditor;->findBack()Z

    return-void
.end method

.method public findNext()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/androlua/LuaEditor;->findNext()Z

    return-void
.end method

.method public findNext(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0, p1}, Lcom/androlua/LuaEditor;->findNext(Ljava/lang/String;)Z

    return-void
.end method

.method public format()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/c;->format()V

    return-void
.end method

.method public getCaretPosition()I
    .locals 1

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/c;->getCaretPosition()I

    move-result v0

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/androlua/LuaEditor;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/androlua/LuaEditor;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionEnd()I
    .locals 1

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/c;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/widget/SplitEditView;->isShowEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/androlua/LuaEditor;->getText()Ld2/f;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/widget/SplitEditView;->mList:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget-object v2, v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/widget/SplitEditView;->mSplitMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/widget/SplitEditView;->mList:[Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_2

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/SplitEditView;->setShowEdit(Z)V

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0, p1, p2}, Lcom/androlua/LuaEditor;->insert(ILjava/lang/String;)V

    return-void
.end method

.method public isEdited()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/c;->isEdited()Z

    move-result v0

    return v0
.end method

.method public isShowEdit()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public moveCaretDown()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/c;->moveCaretDown()V

    return-void
.end method

.method public moveCaretLeft()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/c;->moveCaretLeft()V

    return-void
.end method

.method public moveCaretRight()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/c;->moveCaretRight()V

    return-void
.end method

.method public moveCaretUp()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/c;->moveCaretUp()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroid/widget/SplitEditView;->mOnExitListener:Landroid/widget/SplitEditView$OnExitListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SplitEditView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/widget/SplitEditView$OnExitListener;->onExit(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/widget/SplitEditView;->mOnSaveListener:Landroid/widget/SplitEditView$OnSaveListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SplitEditView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/widget/SplitEditView$OnSaveListener;->onSave(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1}, Landroid/widget/SplitEditView;->setShowEdit(Z)V

    invoke-direct {p0}, Landroid/widget/SplitEditView;->splitChar()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v1}, Landroid/widget/SplitEditView;->setShowEdit(Z)V

    invoke-direct {p0}, Landroid/widget/SplitEditView;->splitRow()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, v1}, Landroid/widget/SplitEditView;->setShowEdit(Z)V

    invoke-direct {p0}, Landroid/widget/SplitEditView;->splitLine()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, v1}, Landroid/widget/SplitEditView;->setShowEdit(Z)V

    invoke-direct {p0}, Landroid/widget/SplitEditView;->splitChunk()V

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/SplitEditView;->setShowEdit(Z)V

    iput v1, p0, Landroid/widget/SplitEditView;->mSplitMode:I

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/SplitEditView;->mModeChangedListener:Landroid/widget/SplitEditView$OnModeChangedListener;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-interface {v0, p1}, Landroid/widget/SplitEditView$OnModeChangedListener;->OnModeChanged(I)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance p1, Landroid/widget/SplitEditView$EditDialog;

    invoke-direct {p1, p0, p3}, Landroid/widget/SplitEditView$EditDialog;-><init>(Landroid/widget/SplitEditView;I)V

    invoke-virtual {p1}, Landroid/widget/SplitEditView$EditDialog;->show()V

    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0, p1}, Lcom/androlua/LuaEditor;->open(Ljava/lang/String;)V

    return-void
.end method

.method public paste()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/c;->paste()V

    return-void
.end method

.method public paste(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/android/c;->paste(Ljava/lang/String;)V

    return-void
.end method

.method public redo()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/androlua/LuaEditor;->redo()V

    return-void
.end method

.method public save()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/SplitEditView;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v1}, Lcom/androlua/LuaEditor;->getText()Ld2/f;

    move-result-object v1

    invoke-virtual {v1}, Ld2/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {p0}, Landroid/widget/SplitEditView;->getText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/androlua/LuaEditor;->setText(Ljava/lang/CharSequence;Z)V

    :cond_0
    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/androlua/LuaEditor;->save()Z

    return-void
.end method

.method public search()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/androlua/LuaEditor;->search()V

    return-void
.end method

.method public selectAll()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/c;->selectAll()V

    return-void
.end method

.method public setAutoComplete(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/android/c;->setAutoComplete(Z)V

    return-void
.end method

.method public setHighlight(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/android/c;->setHighlight(Z)V

    return-void
.end method

.method public setOnExitListener(Landroid/widget/SplitEditView$OnExitListener;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/SplitEditView;->mOnExitListener:Landroid/widget/SplitEditView$OnExitListener;

    const/4 v0, 0x6

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/widget/SplitEditView;->mButtonBar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/widget/SplitEditView;->mButtonBar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setOnModeChangedListener(Landroid/widget/SplitEditView$OnModeChangedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SplitEditView;->mModeChangedListener:Landroid/widget/SplitEditView$OnModeChangedListener;

    return-void
.end method

.method public setOnSaveListener(Landroid/widget/SplitEditView$OnSaveListener;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/SplitEditView;->mOnSaveListener:Landroid/widget/SplitEditView$OnSaveListener;

    const/4 v0, 0x5

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/widget/SplitEditView;->mButtonBar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/widget/SplitEditView;->mButtonBar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setOnSelectionChangedListener(Lcom/myopicmobile/textwarrior/android/g;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/android/c;->setOnSelectionChangedListener(Lcom/myopicmobile/textwarrior/android/g;)V

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0, p1}, Lcom/androlua/LuaEditor;->setSelection(I)V

    return-void
.end method

.method public setShowLineNumbers(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/android/c;->setShowLineNumbers(Z)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/SplitEditView;->mText:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    iput-object p1, p0, Landroid/widget/SplitEditView;->mText:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    iget-object v0, p0, Landroid/widget/SplitEditView;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/androlua/LuaEditor;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/widget/SplitEditView;->initText()V

    return-void
.end method

.method public setWordWrap(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0, p1}, Lcom/androlua/LuaEditor;->setWordWrap(Z)V

    return-void
.end method

.method public undo()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SplitEditView;->mEditView:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/androlua/LuaEditor;->undo()V

    return-void
.end method
