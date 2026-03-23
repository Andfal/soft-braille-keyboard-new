.class public Lcom/androlua/LuaDialog;
.super Landroid/app/AlertDialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/LuaDialog$OnClickListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/String;

.field private mOnClickListener:Lcom/androlua/LuaDialog$OnClickListener;

.field private mTitle:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/androlua/LuaDialog;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/widget/ListView;

    iget-object v0, p0, Lcom/androlua/LuaDialog;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/androlua/LuaDialog;->mListView:Landroid/widget/ListView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/androlua/LuaDialog;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/widget/ListView;

    iget-object p2, p0, Lcom/androlua/LuaDialog;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/androlua/LuaDialog;->mListView:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaDialog;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaDialog;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaDialog;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaDialog;->mView:Landroid/view/View;

    return-object v0
.end method

.method public hide()V
    .locals 0

    invoke-super {p0}, Landroid/app/AlertDialog;->hide()V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    invoke-super {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/androlua/LuaDialog;->mOnClickListener:Lcom/androlua/LuaDialog$OnClickListener;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/androlua/LuaDialog$OnClickListener;->onClick(Lcom/androlua/LuaDialog;Landroid/widget/Button;)V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaDialog;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/androlua/LuaDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/androlua/LuaDialog;->setView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/androlua/LuaDialog;->setOkButton(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setButton1(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/widget/ArrayListAdapter;

    iget-object v1, p0, Lcom/androlua/LuaDialog;->mContext:Landroid/content/Context;

    const v2, 0x1090003

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/androlua/LuaDialog;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/androlua/LuaDialog;->mListView:Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    return-void
.end method

.method public setItems([Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Landroid/widget/ArrayListAdapter;

    iget-object v1, p0, Lcom/androlua/LuaDialog;->mContext:Landroid/content/Context;

    const v2, 0x1090003

    invoke-direct {p1, v1, v2, v0}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/androlua/LuaDialog;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/androlua/LuaDialog;->mListView:Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaDialog;->mMessage:Ljava/lang/String;

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaDialog;->setMultiChoiceItems([Ljava/lang/CharSequence;[I)V

    return-void
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[I)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Landroid/widget/ArrayListAdapter;

    iget-object v1, p0, Lcom/androlua/LuaDialog;->mContext:Landroid/content/Context;

    const v2, 0x1090010

    invoke-direct {p1, v1, v2, v0}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/androlua/LuaDialog;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/androlua/LuaDialog;->mListView:Landroid/widget/ListView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget v1, p2, v0

    iget-object v2, p0, Lcom/androlua/LuaDialog;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setNegButton(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setNeuButton(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setOkButton(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public setOnClickListener(Lcom/androlua/LuaDialog$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaDialog;->mOnClickListener:Lcom/androlua/LuaDialog$OnClickListener;

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public setPosButton(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaDialog;->setSingleChoiceItems([Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;I)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Landroid/widget/ArrayListAdapter;

    iget-object v1, p0, Lcom/androlua/LuaDialog;->mContext:Landroid/content/Context;

    const v2, 0x109000f

    invoke-direct {p1, v1, v2, v0}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/androlua/LuaDialog;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/androlua/LuaDialog;->mListView:Landroid/widget/ListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    iget-object p1, p0, Lcom/androlua/LuaDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p2, v0}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaDialog;->mTitle:Ljava/lang/String;

    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/androlua/LuaDialog;->mView:Landroid/view/View;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaDialog;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7f0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7da

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_1
    iget-object v0, p0, Lcom/androlua/LuaDialog;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    :try_start_0
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
