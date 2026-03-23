.class public Lcom/nirenr/talkman/ReaderActivity;
.super Landroid/app/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/nirenr/talkman/o$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/androlua/LuaWebView;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/BaseActivity;-><init>()V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    const-string v1, "\u5907\u4efd"

    const-string v2, "\u5386\u53f2.json"

    invoke-virtual {v0, v1, v2}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/ReaderActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/nirenr/talkman/o;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/ReaderActivity;->b:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/ReaderActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/ReaderActivity;->d:Z

    return p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/ReaderActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/ReaderActivity;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/ReaderActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/ReaderActivity;->e:Z

    return p0
.end method

.method static bridge synthetic d(Lcom/nirenr/talkman/ReaderActivity;)Lcom/androlua/LuaWebView;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/ReaderActivity;->c:Lcom/androlua/LuaWebView;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/nirenr/talkman/ReaderActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nirenr/talkman/ReaderActivity;->d:Z

    return-void
.end method

.method static bridge synthetic f(Lcom/nirenr/talkman/ReaderActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nirenr/talkman/ReaderActivity;->e:Z

    return-void
.end method

.method static bridge synthetic g(Lcom/nirenr/talkman/ReaderActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nirenr/talkman/ReaderActivity;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/ReaderActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/ReaderActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, v1, :cond_0

    iget-object v2, p0, Lcom/nirenr/talkman/ReaderActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/ReaderActivity;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/nirenr/talkman/o$a;

    invoke-direct {v1, p2, p1}, Lcom/nirenr/talkman/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f07014d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v1, 0x1080038

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(I)V

    const v1, 0x7f07026b

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    :cond_0
    new-instance p1, Landroid/widget/EditText;

    invoke-direct {p1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070077

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v3, 0x7f070621

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v4, 0x7f070636

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v5, 0x7f07054f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v6, 0x7f070550

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    :try_start_0
    new-instance v6, Lcom/androlua/LuaWebView;

    invoke-direct {v6, p0}, Lcom/androlua/LuaWebView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/nirenr/talkman/ReaderActivity;->c:Lcom/androlua/LuaWebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v0, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v0, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/nirenr/talkman/ReaderActivity;->c:Lcom/androlua/LuaWebView;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0}, Lcom/nirenr/talkman/util/HtmlUtil;->a(Landroid/content/Context;)Lcom/nirenr/talkman/util/HtmlUtil;

    move-result-object v0

    new-instance v7, Lcom/nirenr/talkman/ReaderActivity$a;

    invoke-direct {v7, p0}, Lcom/nirenr/talkman/ReaderActivity$a;-><init>(Lcom/nirenr/talkman/ReaderActivity;)V

    invoke-virtual {v0, v7}, Lcom/nirenr/talkman/util/HtmlUtil;->i(Lcom/nirenr/talkman/util/HtmlUtil$OnDoneListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/ReaderActivity;->c:Lcom/androlua/LuaWebView;

    new-instance v7, Lcom/nirenr/talkman/ReaderActivity$c;

    invoke-direct {v7, p0, p1}, Lcom/nirenr/talkman/ReaderActivity$c;-><init>(Lcom/nirenr/talkman/ReaderActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v7}, Lcom/androlua/LuaWebView;->setOnSourceSetListener(Lcom/androlua/LuaWebView$OnSourceSetListener;)V

    new-instance v0, Lcom/nirenr/talkman/ReaderActivity$d;

    invoke-direct {v0, p0, p1}, Lcom/nirenr/talkman/ReaderActivity$d;-><init>(Lcom/nirenr/talkman/ReaderActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/nirenr/talkman/ReaderActivity$e;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/ReaderActivity$e;-><init>(Lcom/nirenr/talkman/ReaderActivity;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/nirenr/talkman/ReaderActivity$f;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/ReaderActivity$f;-><init>(Lcom/nirenr/talkman/ReaderActivity;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/nirenr/talkman/ReaderActivity$g;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/ReaderActivity$g;-><init>(Lcom/nirenr/talkman/ReaderActivity;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/nirenr/talkman/ReaderActivity$h;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/ReaderActivity$h;-><init>(Lcom/nirenr/talkman/ReaderActivity;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07054d

    const-string v1, "http://m.baidu.com"

    invoke-static {p0, v0, v1}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/nirenr/talkman/ReaderActivity;->c:Lcom/androlua/LuaWebView;

    new-instance v1, Lcom/nirenr/talkman/ReaderActivity$i;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/ReaderActivity$i;-><init>(Lcom/nirenr/talkman/ReaderActivity;)V

    invoke-virtual {p1, v1}, Lcom/androlua/LuaWebView;->setAdsFilter(Lcom/androlua/LuaWebView$AdsFilter;)V

    iget-object p1, p0, Lcom/nirenr/talkman/ReaderActivity;->c:Lcom/androlua/LuaWebView;

    invoke-virtual {p1, v0}, Lcom/androlua/LuaWebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const v0, 0x7f07054c

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    invoke-static {p0}, Lcom/nirenr/talkman/util/HtmlUtil;->a(Landroid/content/Context;)Lcom/nirenr/talkman/util/HtmlUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/util/HtmlUtil;->l()V

    iget-object v0, p0, Lcom/nirenr/talkman/ReaderActivity;->c:Lcom/androlua/LuaWebView;

    invoke-virtual {v0}, Lcom/androlua/LuaWebView;->destroy()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/ReaderActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/nirenr/talkman/ReaderActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/nirenr/talkman/ReaderActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nirenr/talkman/o$a;

    invoke-virtual {v2}, Lcom/nirenr/talkman/o$a;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07054c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/nirenr/talkman/ReaderActivity$b;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/ReaderActivity$b;-><init>(Lcom/nirenr/talkman/ReaderActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/ReaderActivity$j;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/ReaderActivity$j;-><init>(Lcom/nirenr/talkman/ReaderActivity;)V

    const v2, 0x7f0700b5

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070095

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/nirenr/talkman/ReaderActivity;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/nirenr/talkman/ReaderActivity;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/nirenr/talkman/o;->p(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
